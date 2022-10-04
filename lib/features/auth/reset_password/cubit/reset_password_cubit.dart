import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suntech_it_e_com_app/core/models/response_model/response_model.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/email/email.dart';
import 'package:suntech_it_e_com_app/features/auth/reset_password/data/repositories/reset_password_repository.dart';

part 'reset_password_state.dart';
part 'reset_password_cubit.freezed.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit({required ResetPasswordRepository resetPasswordRepository})
      : _resetPasswordRepository = resetPasswordRepository,
        super(const ResetPasswordState());

  final ResetPasswordRepository _resetPasswordRepository;

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
    emit(
      state.copyWith(
        pinNumbers: List.filled(4, ""),
      ),
    );
  }
}
