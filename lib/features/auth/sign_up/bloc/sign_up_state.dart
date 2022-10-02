part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    ///full name of the user
    @Default(Name.pure()) Name fullName,

    ///email of the user
    @Default(Email.pure()) Email email,

    ///password of the user
    @Default(Password.pure()) Password password,

    ///confirmPassword of the user
    @Default(ConfirmPassword.pure()) ConfirmPassword confirmPassword,

    ///Status of the input form
    @Default(FormzStatus.pure) FormzStatus signupFormStatus,

    ///hide the password
    @Default(true) bool hidePassword,

    ///hide the confirm password
    @Default(true) bool hideConfirmPassword,

    ///The error message for invalid input
    String? submissionFailureMessage,

    ///response for the request
    ResponseModel? responseModel,
  }) = _SignUpState;
}
