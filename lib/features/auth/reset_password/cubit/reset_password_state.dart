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
  }) = _ResetPasswordState;
}
