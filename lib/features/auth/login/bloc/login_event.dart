part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(String value) = _EmailChangedEvent;
  const factory LoginEvent.passwordChanged(String value) =
      _PasswordChangedEvent;

  const factory LoginEvent.submit() = _SubmitEvent;
  const factory LoginEvent.rememberUser() = _RememberUserEvent;
}
