part of 'reset_password_cubit.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    ///email of the user
    @Default(Email.pure()) Email email,

    ///Status of the input form
    @Default(FormzStatus.pure) FormzStatus formStatus,

    ///The error message for invalid input
    String? submissionFailureMessage,

    ///The response received from the server
    ResponseModel? responseModel,

    ///The state received from the server after password reset initalization
    String? stateReceived,

    ///The pin code entered by the user
    @Default(["", "", "", ""]) List<String> pinNumbers,

    ///Time remaning to enter the pin
    @Default(30) int timeRemaningToEnterPin,

    ///To check if the verification process is successful
    @Default(false) bool isVerificationSuccessful,

    ///token received from the server after the verification process
    @Default("") String token,

    ///error message from the server after the verification process
    @Default("") String errorMessageFromVerification,

    ///new password of the user
    @Default(Password.pure()) Password newPassword,

    ///Status of the input form for new password
    @Default(FormzStatus.pure) FormzStatus newPasswordFormStatus,
  }) = _ResetPasswordState;
}
