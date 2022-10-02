// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Exceptions {
  String get message => throw _privateConstructorUsedError;
  String? get devLogs => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? devLogs) loginException,
    required TResult Function(String message, String? devLogs) signUpException,
    required TResult Function(String message, String? devLogs) signOutException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, String? devLogs)? loginException,
    TResult Function(String message, String? devLogs)? signUpException,
    TResult Function(String message, String? devLogs)? signOutException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? devLogs)? loginException,
    TResult Function(String message, String? devLogs)? signUpException,
    TResult Function(String message, String? devLogs)? signOutException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginException value) loginException,
    required TResult Function(SignUpException value) signUpException,
    required TResult Function(SignOutException value) signOutException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginException value)? loginException,
    TResult Function(SignUpException value)? signUpException,
    TResult Function(SignOutException value)? signOutException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginException value)? loginException,
    TResult Function(SignUpException value)? signUpException,
    TResult Function(SignOutException value)? signOutException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExceptionsCopyWith<Exceptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceptionsCopyWith<$Res> {
  factory $ExceptionsCopyWith(
          Exceptions value, $Res Function(Exceptions) then) =
      _$ExceptionsCopyWithImpl<$Res>;
  $Res call({String message, String? devLogs});
}

/// @nodoc
class _$ExceptionsCopyWithImpl<$Res> implements $ExceptionsCopyWith<$Res> {
  _$ExceptionsCopyWithImpl(this._value, this._then);

  final Exceptions _value;
  // ignore: unused_field
  final $Res Function(Exceptions) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? devLogs = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      devLogs: devLogs == freezed
          ? _value.devLogs
          : devLogs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$LoginExceptionCopyWith<$Res>
    implements $ExceptionsCopyWith<$Res> {
  factory _$$LoginExceptionCopyWith(
          _$LoginException value, $Res Function(_$LoginException) then) =
      __$$LoginExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message, String? devLogs});
}

/// @nodoc
class __$$LoginExceptionCopyWithImpl<$Res>
    extends _$ExceptionsCopyWithImpl<$Res>
    implements _$$LoginExceptionCopyWith<$Res> {
  __$$LoginExceptionCopyWithImpl(
      _$LoginException _value, $Res Function(_$LoginException) _then)
      : super(_value, (v) => _then(v as _$LoginException));

  @override
  _$LoginException get _value => super._value as _$LoginException;

  @override
  $Res call({
    Object? message = freezed,
    Object? devLogs = freezed,
  }) {
    return _then(_$LoginException(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      devLogs == freezed
          ? _value.devLogs
          : devLogs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginException implements LoginException {
  const _$LoginException(this.message, [this.devLogs]);

  @override
  final String message;
  @override
  final String? devLogs;

  @override
  String toString() {
    return 'Exceptions.loginException(message: $message, devLogs: $devLogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginException &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.devLogs, devLogs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(devLogs));

  @JsonKey(ignore: true)
  @override
  _$$LoginExceptionCopyWith<_$LoginException> get copyWith =>
      __$$LoginExceptionCopyWithImpl<_$LoginException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? devLogs) loginException,
    required TResult Function(String message, String? devLogs) signUpException,
    required TResult Function(String message, String? devLogs) signOutException,
  }) {
    return loginException(message, devLogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, String? devLogs)? loginException,
    TResult Function(String message, String? devLogs)? signUpException,
    TResult Function(String message, String? devLogs)? signOutException,
  }) {
    return loginException?.call(message, devLogs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? devLogs)? loginException,
    TResult Function(String message, String? devLogs)? signUpException,
    TResult Function(String message, String? devLogs)? signOutException,
    required TResult orElse(),
  }) {
    if (loginException != null) {
      return loginException(message, devLogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginException value) loginException,
    required TResult Function(SignUpException value) signUpException,
    required TResult Function(SignOutException value) signOutException,
  }) {
    return loginException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginException value)? loginException,
    TResult Function(SignUpException value)? signUpException,
    TResult Function(SignOutException value)? signOutException,
  }) {
    return loginException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginException value)? loginException,
    TResult Function(SignUpException value)? signUpException,
    TResult Function(SignOutException value)? signOutException,
    required TResult orElse(),
  }) {
    if (loginException != null) {
      return loginException(this);
    }
    return orElse();
  }
}

abstract class LoginException implements Exceptions {
  const factory LoginException(final String message, [final String? devLogs]) =
      _$LoginException;

  @override
  String get message;
  @override
  String? get devLogs;
  @override
  @JsonKey(ignore: true)
  _$$LoginExceptionCopyWith<_$LoginException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpExceptionCopyWith<$Res>
    implements $ExceptionsCopyWith<$Res> {
  factory _$$SignUpExceptionCopyWith(
          _$SignUpException value, $Res Function(_$SignUpException) then) =
      __$$SignUpExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message, String? devLogs});
}

/// @nodoc
class __$$SignUpExceptionCopyWithImpl<$Res>
    extends _$ExceptionsCopyWithImpl<$Res>
    implements _$$SignUpExceptionCopyWith<$Res> {
  __$$SignUpExceptionCopyWithImpl(
      _$SignUpException _value, $Res Function(_$SignUpException) _then)
      : super(_value, (v) => _then(v as _$SignUpException));

  @override
  _$SignUpException get _value => super._value as _$SignUpException;

  @override
  $Res call({
    Object? message = freezed,
    Object? devLogs = freezed,
  }) {
    return _then(_$SignUpException(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      devLogs == freezed
          ? _value.devLogs
          : devLogs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignUpException implements SignUpException {
  const _$SignUpException(this.message, [this.devLogs]);

  @override
  final String message;
  @override
  final String? devLogs;

  @override
  String toString() {
    return 'Exceptions.signUpException(message: $message, devLogs: $devLogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpException &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.devLogs, devLogs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(devLogs));

  @JsonKey(ignore: true)
  @override
  _$$SignUpExceptionCopyWith<_$SignUpException> get copyWith =>
      __$$SignUpExceptionCopyWithImpl<_$SignUpException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? devLogs) loginException,
    required TResult Function(String message, String? devLogs) signUpException,
    required TResult Function(String message, String? devLogs) signOutException,
  }) {
    return signUpException(message, devLogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, String? devLogs)? loginException,
    TResult Function(String message, String? devLogs)? signUpException,
    TResult Function(String message, String? devLogs)? signOutException,
  }) {
    return signUpException?.call(message, devLogs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? devLogs)? loginException,
    TResult Function(String message, String? devLogs)? signUpException,
    TResult Function(String message, String? devLogs)? signOutException,
    required TResult orElse(),
  }) {
    if (signUpException != null) {
      return signUpException(message, devLogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginException value) loginException,
    required TResult Function(SignUpException value) signUpException,
    required TResult Function(SignOutException value) signOutException,
  }) {
    return signUpException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginException value)? loginException,
    TResult Function(SignUpException value)? signUpException,
    TResult Function(SignOutException value)? signOutException,
  }) {
    return signUpException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginException value)? loginException,
    TResult Function(SignUpException value)? signUpException,
    TResult Function(SignOutException value)? signOutException,
    required TResult orElse(),
  }) {
    if (signUpException != null) {
      return signUpException(this);
    }
    return orElse();
  }
}

abstract class SignUpException implements Exceptions {
  const factory SignUpException(final String message, [final String? devLogs]) =
      _$SignUpException;

  @override
  String get message;
  @override
  String? get devLogs;
  @override
  @JsonKey(ignore: true)
  _$$SignUpExceptionCopyWith<_$SignUpException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutExceptionCopyWith<$Res>
    implements $ExceptionsCopyWith<$Res> {
  factory _$$SignOutExceptionCopyWith(
          _$SignOutException value, $Res Function(_$SignOutException) then) =
      __$$SignOutExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message, String? devLogs});
}

/// @nodoc
class __$$SignOutExceptionCopyWithImpl<$Res>
    extends _$ExceptionsCopyWithImpl<$Res>
    implements _$$SignOutExceptionCopyWith<$Res> {
  __$$SignOutExceptionCopyWithImpl(
      _$SignOutException _value, $Res Function(_$SignOutException) _then)
      : super(_value, (v) => _then(v as _$SignOutException));

  @override
  _$SignOutException get _value => super._value as _$SignOutException;

  @override
  $Res call({
    Object? message = freezed,
    Object? devLogs = freezed,
  }) {
    return _then(_$SignOutException(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      devLogs == freezed
          ? _value.devLogs
          : devLogs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignOutException implements SignOutException {
  const _$SignOutException(this.message, [this.devLogs]);

  @override
  final String message;
  @override
  final String? devLogs;

  @override
  String toString() {
    return 'Exceptions.signOutException(message: $message, devLogs: $devLogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOutException &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.devLogs, devLogs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(devLogs));

  @JsonKey(ignore: true)
  @override
  _$$SignOutExceptionCopyWith<_$SignOutException> get copyWith =>
      __$$SignOutExceptionCopyWithImpl<_$SignOutException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? devLogs) loginException,
    required TResult Function(String message, String? devLogs) signUpException,
    required TResult Function(String message, String? devLogs) signOutException,
  }) {
    return signOutException(message, devLogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, String? devLogs)? loginException,
    TResult Function(String message, String? devLogs)? signUpException,
    TResult Function(String message, String? devLogs)? signOutException,
  }) {
    return signOutException?.call(message, devLogs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? devLogs)? loginException,
    TResult Function(String message, String? devLogs)? signUpException,
    TResult Function(String message, String? devLogs)? signOutException,
    required TResult orElse(),
  }) {
    if (signOutException != null) {
      return signOutException(message, devLogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginException value) loginException,
    required TResult Function(SignUpException value) signUpException,
    required TResult Function(SignOutException value) signOutException,
  }) {
    return signOutException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginException value)? loginException,
    TResult Function(SignUpException value)? signUpException,
    TResult Function(SignOutException value)? signOutException,
  }) {
    return signOutException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginException value)? loginException,
    TResult Function(SignUpException value)? signUpException,
    TResult Function(SignOutException value)? signOutException,
    required TResult orElse(),
  }) {
    if (signOutException != null) {
      return signOutException(this);
    }
    return orElse();
  }
}

abstract class SignOutException implements Exceptions {
  const factory SignOutException(final String message,
      [final String? devLogs]) = _$SignOutException;

  @override
  String get message;
  @override
  String? get devLogs;
  @override
  @JsonKey(ignore: true)
  _$$SignOutExceptionCopyWith<_$SignOutException> get copyWith =>
      throw _privateConstructorUsedError;
}
