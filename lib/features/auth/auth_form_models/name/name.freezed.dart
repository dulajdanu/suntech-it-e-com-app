// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NameValidationError {
  String get validationMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NameValidationErrorCopyWith<NameValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameValidationErrorCopyWith<$Res> {
  factory $NameValidationErrorCopyWith(
          NameValidationError value, $Res Function(NameValidationError) then) =
      _$NameValidationErrorCopyWithImpl<$Res>;
  $Res call({String validationMessage});
}

/// @nodoc
class _$NameValidationErrorCopyWithImpl<$Res>
    implements $NameValidationErrorCopyWith<$Res> {
  _$NameValidationErrorCopyWithImpl(this._value, this._then);

  final NameValidationError _value;
  // ignore: unused_field
  final $Res Function(NameValidationError) _then;

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
abstract class _$$_EmailValidationErrorCopyWith<$Res>
    implements $NameValidationErrorCopyWith<$Res> {
  factory _$$_EmailValidationErrorCopyWith(_$_EmailValidationError value,
          $Res Function(_$_EmailValidationError) then) =
      __$$_EmailValidationErrorCopyWithImpl<$Res>;
  @override
  $Res call({String validationMessage});
}

/// @nodoc
class __$$_EmailValidationErrorCopyWithImpl<$Res>
    extends _$NameValidationErrorCopyWithImpl<$Res>
    implements _$$_EmailValidationErrorCopyWith<$Res> {
  __$$_EmailValidationErrorCopyWithImpl(_$_EmailValidationError _value,
      $Res Function(_$_EmailValidationError) _then)
      : super(_value, (v) => _then(v as _$_EmailValidationError));

  @override
  _$_EmailValidationError get _value => super._value as _$_EmailValidationError;

  @override
  $Res call({
    Object? validationMessage = freezed,
  }) {
    return _then(_$_EmailValidationError(
      validationMessage == freezed
          ? _value.validationMessage
          : validationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailValidationError implements _EmailValidationError {
  const _$_EmailValidationError(this.validationMessage);

  @override
  final String validationMessage;

  @override
  String toString() {
    return 'NameValidationError(validationMessage: $validationMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailValidationError &&
            const DeepCollectionEquality()
                .equals(other.validationMessage, validationMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(validationMessage));

  @JsonKey(ignore: true)
  @override
  _$$_EmailValidationErrorCopyWith<_$_EmailValidationError> get copyWith =>
      __$$_EmailValidationErrorCopyWithImpl<_$_EmailValidationError>(
          this, _$identity);
}

abstract class _EmailValidationError implements NameValidationError {
  const factory _EmailValidationError(final String validationMessage) =
      _$_EmailValidationError;

  @override
  String get validationMessage;
  @override
  @JsonKey(ignore: true)
  _$$_EmailValidationErrorCopyWith<_$_EmailValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}
