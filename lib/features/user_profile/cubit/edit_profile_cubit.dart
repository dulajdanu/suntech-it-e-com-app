import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suntech_it_e_com_app/app/bloc/app_bloc.dart';
import 'package:suntech_it_e_com_app/core/data/repositories/user_data_repository.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/auth_form_models.dart';
part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final UserDataRepository _userDataRepository;
  StreamSubscription? appStateStreamSubscription;
  final AppBloc appBloc;
  EditProfileCubit(
      {required this.appBloc, required UserDataRepository userDataRepository})
      : _userDataRepository = userDataRepository,
        super(const EditProfileState()) {
    appStateStreamSubscription = appBloc.stream.listen((appState) {
      //
      emit(state.copyWith(
        email: Email.dirty(appState.userModel.email),
        fullName: Name.dirty(appState.userModel.fullName),
      ));
    });

    //
    emit(state.copyWith(
      email: Email.dirty(appBloc.state.userModel.email),
      fullName: Name.dirty(appBloc.state.userModel.fullName),
    ));
  }

  void toggleEditProfile() {
    if (state.editProfile == false) {
      emit(state.copyWith(editProfile: !state.editProfile));
    } else if ((state.editProfile == true)) {
      emit(state.copyWith(
        email: Email.dirty(appBloc.state.userModel.email),
        fullName: Name.dirty(appBloc.state.userModel.fullName),
        editProfile: false,
      ));
    }
  }

  void onEmailChanged(String value) {
    final email = Email.dirty(value);
    emit(
      state.copyWith(
          email: email,
          editFormStatus: Formz.validate([email, state.fullName])),
    );
  }

  void onFullNameChanged(String value) {
    final name = Name.dirty(value);
    emit(
      state.copyWith(
          fullName: name, editFormStatus: Formz.validate([name, state.email])),
    );
  }

  Future<void> editProfile() async {
    final result =
        await _userDataRepository.updateProfile(state.fullName, state.email);

    result.fold(
      (l) {
        //
        emit(state.copyWith(
          editFormStatus: FormzStatus.submissionFailure,
        ));
      },
      (r) {
        //
        emit(state.copyWith(
          editFormStatus: FormzStatus.submissionSuccess,
        ));
      },
    );
  }

  @override
  Future<void> close() {
    appStateStreamSubscription?.cancel();
    return super.close();
  }
}
