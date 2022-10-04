import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suntech_it_e_com_app/core/data/repositories/user_data_repository.dart';
import 'package:suntech_it_e_com_app/core/models/response_model/response_model.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/email/email.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/password/password.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/data/repositories/reset_password_repository.dart';

part 'reset_password_state.dart';
part 'reset_password_cubit.freezed.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(
      {required ResetPasswordRepository resetPasswordRepository,
      required UserDataRepository userDataRepository})
      : _resetPasswordRepository = resetPasswordRepository,
        _userDataRepository = userDataRepository,
        super(const ResetPasswordState());

  final ResetPasswordRepository _resetPasswordRepository;
  final UserDataRepository _userDataRepository;

  ///this is used to create a timer for the countdown
  final Stream<int> countStream =
      Stream.periodic(const Duration(seconds: 1), (int count) {
    return count;
  }).asBroadcastStream();

  ///Stream subscription which will listen to the timer
  StreamSubscription<int>? _timeStreamSubscription;

  Future<void> sendVerificationToken() async {
    final result = await _resetPasswordRepository.resetPassword(state.email);

    result.fold(
      (l) {
        //
        emit(state.copyWith(
          formStatus: FormzStatus.submissionFailure,
          submissionFailureMessage: l.message,
        ));
      },
      (tuple2) {
        //
        emit(state.copyWith(
          formStatus: FormzStatus.submissionSuccess,
          responseModel: tuple2.value1,
          stateReceived: tuple2.value2,
        ));
      },
    );
  }

  void onEmailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(email: email, formStatus: Formz.validate([email])));
  }

  void onPinCodeChanged(int slotNumber, String value) {
    final List<String> tempList = List.from(state.pinNumbers);

    tempList[slotNumber] = value;

    emit(state.copyWith(pinNumbers: tempList));
  }

  void onBackButtonPressed() {
    _timeStreamSubscription?.cancel();

    emit(
      state.copyWith(
        pinNumbers: List.filled(4, ""),
      ),
    );
  }

  void startTimer() {
    _timeStreamSubscription?.cancel();

    _timeStreamSubscription = countStream.listen((count) {
      if (state.timeRemaningToEnterPin > 0) {
        int count = state.timeRemaningToEnterPin - 1;
        emit(state.copyWith(
          timeRemaningToEnterPin: count,
        ));
      } else {
        _timeStreamSubscription?.cancel();
        emit(state.copyWith(
          timeRemaningToEnterPin: 30,
        ));
      }
    });
  }

  Future<void> passwordResetConfirmation() async {
    if (state.stateReceived != null) {
      final otp = state.pinNumbers.join();
      final result = await _resetPasswordRepository.confirmPasswordReset(
          otp, state.stateReceived!);

      result.fold(
        (l) {
          //
          emit(state.copyWith(
            errorMessageFromVerification: l.message,
            isVerificationSuccessful: false,
          ));
        },
        (token) {
          //
          emit(state.copyWith(
            token: token,
            isVerificationSuccessful: true,
          ));
        },
      );
    } else {
      //todo do something here
    }
  }

  ///This is called when the new password is entered by the user
  void onNewPasswordChanged(String value) {
    final password = Password.dirty(value);
    emit((state.copyWith(
        newPassword: password,
        newPasswordFormStatus: Formz.validate([password]))));
  }

  Future<void> saveNewPassword() async {
    final result = await _userDataRepository.updatePassword(
        state.newPassword, state.token);

    result.fold((l) {
      //
      emit(state.copyWith(
        newPasswordFormStatus: FormzStatus.submissionFailure,
      ));
    }, (r) {
      //
      emit(state.copyWith(
        newPasswordFormStatus: FormzStatus.submissionSuccess,
      ));
    });
  }

  @override
  Future<void> close() {
    _timeStreamSubscription?.cancel();
    return super.close();
  }
}
