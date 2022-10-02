import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:string_validator/string_validator.dart';
import 'package:suntech_it_e_com_app/core/errors/validation_errors.dart';
part 'name.freezed.dart';

class Name extends FormzInput<String, NameValidationError> {
  const Name.pure() : super.pure('');
  const Name.dirty([String value = '']) : super.dirty(value);

  @override
  NameValidationError? validator(String value) {
    final trimmedValue = value.trim();

    if (trimmedValue.isEmpty) {
      return _getError(
        ValidationErrors.nameEmpty,
      );
    }

    if (!isAlpha(trimmedValue)) {
      return _getError(
        ValidationErrors.nameInvalidChars,
      );
    }
    return null;
  }
}

NameValidationError _getError(String message) {
  return NameValidationError(message);
}

@freezed
class NameValidationError with _$NameValidationError {
  const factory NameValidationError(String validationMessage) =
      _EmailValidationError;
}
