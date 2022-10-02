// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/auth_form_models.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    on<SignUpEvent>((event, emit) async {
      event.whenOrNull(
        fullNameChanged: (value) {
          final fname = Name.dirty(value);
          emit(validateSignupFormStatus(state.copyWith(fullName: fname)));
        },
        emailChanged: (value) {
          final email = Email.dirty(value);
          emit(validateSignupFormStatus(state.copyWith(email: email)));
        },
        passwordChanged: (value) {
          final password = Password.dirty(value);
          emit(validateSignupFormStatus(state.copyWith(password: password)));
        },
        confirmPasswordChanged: (value) {
          final cPassword = ConfirmPassword.dirty(value, state.password.value);
          emit(validateSignupFormStatus(
              state.copyWith(confirmPassword: cPassword)));
        },
        changePasswordVisibility: (isConfirmPassowrd) {
          if (isConfirmPassowrd == true) {
            emit(state.copyWith(
              hideConfirmPassword: !state.hideConfirmPassword,
            ));
          } else {
            emit(state.copyWith(
              hidePassword: !state.hidePassword,
            ));
          }
        },
      );
    });
  }

  SignUpState validateSignupFormStatus(SignUpState value) {
    return value.copyWith(
        signupFormStatus: Formz.validate([
      value.fullName,
      value.email,
      value.password,
      value.confirmPassword,
    ]));
  }
}

extension ExSignUpBLoc on BuildContext {
  SignUpBloc get bloc => read<SignUpBloc>();
  void addSignUpEvent(SignUpEvent event) => bloc.add(event);
}
