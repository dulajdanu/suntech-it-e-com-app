// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submit,
    required TResult Function() rememberUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submit,
    TResult Function()? rememberUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submit,
    TResult Function()? rememberUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_SubmitEvent value) submit,
    required TResult Function(_RememberUserEvent value) rememberUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_RememberUserEvent value)? rememberUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_RememberUserEvent value)? rememberUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$_EmailChangedEventCopyWith<$Res> {
  factory _$$_EmailChangedEventCopyWith(_$_EmailChangedEvent value,
          $Res Function(_$_EmailChangedEvent) then) =
      __$$_EmailChangedEventCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_EmailChangedEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_EmailChangedEventCopyWith<$Res> {
  __$$_EmailChangedEventCopyWithImpl(
      _$_EmailChangedEvent _value, $Res Function(_$_EmailChangedEvent) _then)
      : super(_value, (v) => _then(v as _$_EmailChangedEvent));

  @override
  _$_EmailChangedEvent get _value => super._value as _$_EmailChangedEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_EmailChangedEvent(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChangedEvent implements _EmailChangedEvent {
  const _$_EmailChangedEvent(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.emailChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChangedEvent &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_EmailChangedEventCopyWith<_$_EmailChangedEvent> get copyWith =>
      __$$_EmailChangedEventCopyWithImpl<_$_EmailChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submit,
    required TResult Function() rememberUser,
  }) {
    return emailChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submit,
    TResult Function()? rememberUser,
  }) {
    return emailChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submit,
    TResult Function()? rememberUser,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_SubmitEvent value) submit,
    required TResult Function(_RememberUserEvent value) rememberUser,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_RememberUserEvent value)? rememberUser,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_RememberUserEvent value)? rememberUser,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChangedEvent implements LoginEvent {
  const factory _EmailChangedEvent(final String value) = _$_EmailChangedEvent;

  String get value;
  @JsonKey(ignore: true)
  _$$_EmailChangedEventCopyWith<_$_EmailChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedEventCopyWith<$Res> {
  factory _$$_PasswordChangedEventCopyWith(_$_PasswordChangedEvent value,
          $Res Function(_$_PasswordChangedEvent) then) =
      __$$_PasswordChangedEventCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_PasswordChangedEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_PasswordChangedEventCopyWith<$Res> {
  __$$_PasswordChangedEventCopyWithImpl(_$_PasswordChangedEvent _value,
      $Res Function(_$_PasswordChangedEvent) _then)
      : super(_value, (v) => _then(v as _$_PasswordChangedEvent));

  @override
  _$_PasswordChangedEvent get _value => super._value as _$_PasswordChangedEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_PasswordChangedEvent(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChangedEvent implements _PasswordChangedEvent {
  const _$_PasswordChangedEvent(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChangedEvent &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordChangedEventCopyWith<_$_PasswordChangedEvent> get copyWith =>
      __$$_PasswordChangedEventCopyWithImpl<_$_PasswordChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submit,
    required TResult Function() rememberUser,
  }) {
    return passwordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submit,
    TResult Function()? rememberUser,
  }) {
    return passwordChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submit,
    TResult Function()? rememberUser,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_SubmitEvent value) submit,
    required TResult Function(_RememberUserEvent value) rememberUser,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_RememberUserEvent value)? rememberUser,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_RememberUserEvent value)? rememberUser,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChangedEvent implements LoginEvent {
  const factory _PasswordChangedEvent(final String value) =
      _$_PasswordChangedEvent;

  String get value;
  @JsonKey(ignore: true)
  _$$_PasswordChangedEventCopyWith<_$_PasswordChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitEventCopyWith<$Res> {
  factory _$$_SubmitEventCopyWith(
          _$_SubmitEvent value, $Res Function(_$_SubmitEvent) then) =
      __$$_SubmitEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitEventCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_SubmitEventCopyWith<$Res> {
  __$$_SubmitEventCopyWithImpl(
      _$_SubmitEvent _value, $Res Function(_$_SubmitEvent) _then)
      : super(_value, (v) => _then(v as _$_SubmitEvent));

  @override
  _$_SubmitEvent get _value => super._value as _$_SubmitEvent;
}

/// @nodoc

class _$_SubmitEvent implements _SubmitEvent {
  const _$_SubmitEvent();

  @override
  String toString() {
    return 'LoginEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SubmitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submit,
    required TResult Function() rememberUser,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submit,
    TResult Function()? rememberUser,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submit,
    TResult Function()? rememberUser,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_SubmitEvent value) submit,
    required TResult Function(_RememberUserEvent value) rememberUser,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_RememberUserEvent value)? rememberUser,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_RememberUserEvent value)? rememberUser,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _SubmitEvent implements LoginEvent {
  const factory _SubmitEvent() = _$_SubmitEvent;
}

/// @nodoc
abstract class _$$_RememberUserEventCopyWith<$Res> {
  factory _$$_RememberUserEventCopyWith(_$_RememberUserEvent value,
          $Res Function(_$_RememberUserEvent) then) =
      __$$_RememberUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RememberUserEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_RememberUserEventCopyWith<$Res> {
  __$$_RememberUserEventCopyWithImpl(
      _$_RememberUserEvent _value, $Res Function(_$_RememberUserEvent) _then)
      : super(_value, (v) => _then(v as _$_RememberUserEvent));

  @override
  _$_RememberUserEvent get _value => super._value as _$_RememberUserEvent;
}

/// @nodoc

class _$_RememberUserEvent implements _RememberUserEvent {
  const _$_RememberUserEvent();

  @override
  String toString() {
    return 'LoginEvent.rememberUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RememberUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submit,
    required TResult Function() rememberUser,
  }) {
    return rememberUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submit,
    TResult Function()? rememberUser,
  }) {
    return rememberUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submit,
    TResult Function()? rememberUser,
    required TResult orElse(),
  }) {
    if (rememberUser != null) {
      return rememberUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_SubmitEvent value) submit,
    required TResult Function(_RememberUserEvent value) rememberUser,
  }) {
    return rememberUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_RememberUserEvent value)? rememberUser,
  }) {
    return rememberUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_RememberUserEvent value)? rememberUser,
    required TResult orElse(),
  }) {
    if (rememberUser != null) {
      return rememberUser(this);
    }
    return orElse();
  }
}

abstract class _RememberUserEvent implements LoginEvent {
  const factory _RememberUserEvent() = _$_RememberUserEvent;
}

/// @nodoc
mixin _$LoginState {
  ///email of the user
  Email get email => throw _privateConstructorUsedError;

  ///password of the user
  Password get password => throw _privateConstructorUsedError;

  ///Status of the input form
  FormzStatus get loginFormStatus => throw _privateConstructorUsedError;

  ///To Check whether Remember the user or not
  bool get rememberUser => throw _privateConstructorUsedError;

  ///The error message for invalid input
  String? get submissionFailureMessage => throw _privateConstructorUsedError;

  ///response for the request
  ResponseModel? get responseModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Password password,
      FormzStatus loginFormStatus,
      bool rememberUser,
      String? submissionFailureMessage,
      ResponseModel? responseModel});

  $ResponseModelCopyWith<$Res>? get responseModel;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? loginFormStatus = freezed,
    Object? rememberUser = freezed,
    Object? submissionFailureMessage = freezed,
    Object? responseModel = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      loginFormStatus: loginFormStatus == freezed
          ? _value.loginFormStatus
          : loginFormStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      rememberUser: rememberUser == freezed
          ? _value.rememberUser
          : rememberUser // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionFailureMessage: submissionFailureMessage == freezed
          ? _value.submissionFailureMessage
          : submissionFailureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      responseModel: responseModel == freezed
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as ResponseModel?,
    ));
  }

  @override
  $ResponseModelCopyWith<$Res>? get responseModel {
    if (_value.responseModel == null) {
      return null;
    }

    return $ResponseModelCopyWith<$Res>(_value.responseModel!, (value) {
      return _then(_value.copyWith(responseModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Password password,
      FormzStatus loginFormStatus,
      bool rememberUser,
      String? submissionFailureMessage,
      ResponseModel? responseModel});

  @override
  $ResponseModelCopyWith<$Res>? get responseModel;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? loginFormStatus = freezed,
    Object? rememberUser = freezed,
    Object? submissionFailureMessage = freezed,
    Object? responseModel = freezed,
  }) {
    return _then(_$_LoginState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      loginFormStatus: loginFormStatus == freezed
          ? _value.loginFormStatus
          : loginFormStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      rememberUser: rememberUser == freezed
          ? _value.rememberUser
          : rememberUser // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionFailureMessage: submissionFailureMessage == freezed
          ? _value.submissionFailureMessage
          : submissionFailureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      responseModel: responseModel == freezed
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as ResponseModel?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.loginFormStatus = FormzStatus.pure,
      this.rememberUser = false,
      this.submissionFailureMessage,
      this.responseModel});

  ///email of the user
  @override
  @JsonKey()
  final Email email;

  ///password of the user
  @override
  @JsonKey()
  final Password password;

  ///Status of the input form
  @override
  @JsonKey()
  final FormzStatus loginFormStatus;

  ///To Check whether Remember the user or not
  @override
  @JsonKey()
  final bool rememberUser;

  ///The error message for invalid input
  @override
  final String? submissionFailureMessage;

  ///response for the request
  @override
  final ResponseModel? responseModel;

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, loginFormStatus: $loginFormStatus, rememberUser: $rememberUser, submissionFailureMessage: $submissionFailureMessage, responseModel: $responseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.loginFormStatus, loginFormStatus) &&
            const DeepCollectionEquality()
                .equals(other.rememberUser, rememberUser) &&
            const DeepCollectionEquality().equals(
                other.submissionFailureMessage, submissionFailureMessage) &&
            const DeepCollectionEquality()
                .equals(other.responseModel, responseModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(loginFormStatus),
      const DeepCollectionEquality().hash(rememberUser),
      const DeepCollectionEquality().hash(submissionFailureMessage),
      const DeepCollectionEquality().hash(responseModel));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final Email email,
      final Password password,
      final FormzStatus loginFormStatus,
      final bool rememberUser,
      final String? submissionFailureMessage,
      final ResponseModel? responseModel}) = _$_LoginState;

  @override

  ///email of the user
  Email get email;
  @override

  ///password of the user
  Password get password;
  @override

  ///Status of the input form
  FormzStatus get loginFormStatus;
  @override

  ///To Check whether Remember the user or not
  bool get rememberUser;
  @override

  ///The error message for invalid input
  String? get submissionFailureMessage;
  @override

  ///response for the request
  ResponseModel? get responseModel;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
