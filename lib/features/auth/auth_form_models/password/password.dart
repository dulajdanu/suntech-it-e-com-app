import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suntech_it_e_com_app/core/errors/validation_errors.dart';
part 'password.freezed.dart';

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordValidationError? validator(String value) {
    final trimmedValue = value.trim();
    if (trimmedValue.isEmpty) {
      return _getError(
        ValidationErrors.passwordEmpty,
      );
    }
    if (trimmedValue.length < 6) {
      return _getError(ValidationErrors.passwordNotValid);
    }
    return null;
  }
}

class ConfirmPassword extends FormzInput<String, PasswordValidationError> {
  const ConfirmPassword.pure()
      : _matchingPassword = '',
        super.pure('');
  const ConfirmPassword.dirty(String password, String matchingPassword)
      : _matchingPassword = matchingPassword,
        super.dirty(password);
  final String _matchingPassword;
  @override
  PasswordValidationError? validator(String value) {
    final trimmedValue = value.trim();

    if (trimmedValue.isEmpty) {
      return _getError(
        ValidationErrors.confirmPasswordEmpty,
      );
    }
    if (trimmedValue != _matchingPassword) {
      return _getError(ValidationErrors.confirmPasswordNotMatching);
    }
    return null;
  }
}

PasswordValidationError _getError(String message) =>
    PasswordValidationError(message);

@freezed
class PasswordValidationError with _$PasswordValidationError {
  const factory PasswordValidationError(String validationMessage) =
      _PasswordValidationError;
}
