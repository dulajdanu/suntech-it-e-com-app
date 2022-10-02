// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasswordValidationError {
  String get validationMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordValidationErrorCopyWith<PasswordValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordValidationErrorCopyWith<$Res> {
  factory $PasswordValidationErrorCopyWith(PasswordValidationError value,
          $Res Function(PasswordValidationError) then) =
      _$PasswordValidationErrorCopyWithImpl<$Res>;
  $Res call({String validationMessage});
}

/// @nodoc
class _$PasswordValidationErrorCopyWithImpl<$Res>
    implements $PasswordValidationErrorCopyWith<$Res> {
  _$PasswordValidationErrorCopyWithImpl(this._value, this._then);

  final PasswordValidationError _value;
  // ignore: unused_field
  final $Res Function(PasswordValidationError) _then;

  @override
  $Res call({
    Object? validationMessage = freezed,
  }) {
    return _then(_value.copyWith(
      validationMessage: validationMessage == freezed
          ? _value.validationMessage
          : validationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PasswordValidationErrorCopyWith<$Res>
    implements $PasswordValidationErrorCopyWith<$Res> {
  factory _$$_PasswordValidationErrorCopyWith(_$_PasswordValidationError value,
          $Res Function(_$_PasswordValidationError) then) =
      __$$_PasswordValidationErrorCopyWithImpl<$Res>;
  @override
  $Res call({String validationMessage});
}

/// @nodoc
class __$$_PasswordValidationErrorCopyWithImpl<$Res>
    extends _$PasswordValidationErrorCopyWithImpl<$Res>
    implements _$$_PasswordValidationErrorCopyWith<$Res> {
  __$$_PasswordValidationErrorCopyWithImpl(_$_PasswordValidationError _value,
      $Res Function(_$_PasswordValidationError) _then)
      : super(_value, (v) => _then(v as _$_PasswordValidationError));

  @override
  _$_PasswordValidationError get _value =>
      super._value as _$_PasswordValidationError;

  @override
  $Res call({
    Object? validationMessage = freezed,
  }) {
    return _then(_$_PasswordValidationError(
      validationMessage == freezed
          ? _value.validationMessage
          : validationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordValidationError implements _PasswordValidationError {
  const _$_PasswordValidationError(this.validationMessage);

  @override
  final String validationMessage;

  @override
  String toString() {
    return 'PasswordValidationError(validationMessage: $validationMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordValidationError &&
            const DeepCollectionEquality()
                .equals(other.validationMessage, validationMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(validationMessage));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordValidationErrorCopyWith<_$_PasswordValidationError>
      get copyWith =>
          __$$_PasswordValidationErrorCopyWithImpl<_$_PasswordValidationError>(
              this, _$identity);
}

abstract class _PasswordValidationError implements PasswordValidationError {
  const factory _PasswordValidationError(final String validationMessage) =
      _$_PasswordValidationError;

  @override
  String get validationMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordValidationErrorCopyWith<_$_PasswordValidationError>
      get copyWith => throw _privateConstructorUsedError;
}
