import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:string_validator/string_validator.dart';
import 'package:suntech_it_e_com_app/core/errors/validation_errors.dart';
part 'email.freezed.dart';

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty([String value = '']) : super.dirty(value);

  @override
  EmailValidationError? validator(String value) {
    final trimmedValue = value.trim();

    if (trimmedValue.isEmpty) {
      return _getError(
        ValidationErrors.emailEmpty,
      );
    }

    if (!isEmail(trimmedValue)) {
      return _getError(
        ValidationErrors.emailNotValid,
      );
    }
    return null;
  }
}

EmailValidationError _getError(String message) {
  return EmailValidationError(message);
}

@freezed
class EmailValidationError with _$EmailValidationError {
  const factory EmailValidationError(String validationMessage) =
      _EmailValidationError;
}
