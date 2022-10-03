part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    ///email of the user
    @Default(Email.pure()) Email email,

    ///password of the user
    @Default(Password.pure()) Password password,

    ///Status of the input form
    @Default(FormzStatus.pure) FormzStatus loginFormStatus,

    ///To Check whether Remember the user or not
    @Default(false) bool rememberUser,

    ///The error message for invalid input
    String? submissionFailureMessage,

    ///response for the request
    ResponseModel? responseModel,
  }) = _LoginState;
}
