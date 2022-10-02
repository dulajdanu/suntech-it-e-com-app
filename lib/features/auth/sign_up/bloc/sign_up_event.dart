part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  //todo add comments here
  const factory SignUpEvent.emailChanged(String value) = _EmailChangedEvent;

  const factory SignUpEvent.fullNameChanged(String value) =
      _FulltNameChangedEvent;

  const factory SignUpEvent.passwordChanged(String value) =
      PasswordChangedEvent;
  const factory SignUpEvent.confirmPasswordChanged(String value) =
      ConfirmPasswordChangedEvent;

  const factory SignUpEvent.changePasswordVisibility(
      {bool? isConfirmPassowrd}) = _ChangePasswordVisibilityEvent;

  const factory SignUpEvent.submit() = SubmitEvent;
}
