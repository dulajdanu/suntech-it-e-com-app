// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) fullNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
    required TResult Function(bool? isConfirmPassowrd) changePasswordVisibility,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function(bool? isConfirmPassowrd)? changePasswordVisibility,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function(bool? isConfirmPassowrd)? changePasswordVisibility,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_FulltNameChangedEvent value) fullNameChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedEvent value)
        confirmPasswordChanged,
    required TResult Function(_ChangePasswordVisibilityEvent value)
        changePasswordVisibility,
    required TResult Function(SubmitEvent value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_FulltNameChangedEvent value)? fullNameChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedEvent value)? confirmPasswordChanged,
    TResult Function(_ChangePasswordVisibilityEvent value)?
        changePasswordVisibility,
    TResult Function(SubmitEvent value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_FulltNameChangedEvent value)? fullNameChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedEvent value)? confirmPasswordChanged,
    TResult Function(_ChangePasswordVisibilityEvent value)?
        changePasswordVisibility,
    TResult Function(SubmitEvent value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
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
    extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.emailChanged(value: $value)';
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
    required TResult Function(String value) fullNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
    required TResult Function(bool? isConfirmPassowrd) changePasswordVisibility,
    required TResult Function() submit,
  }) {
    return emailChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function(bool? isConfirmPassowrd)? changePasswordVisibility,
    TResult Function()? submit,
  }) {
    return emailChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function(bool? isConfirmPassowrd)? changePasswordVisibility,
    TResult Function()? submit,
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
    required TResult Function(_FulltNameChangedEvent value) fullNameChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedEvent value)
        confirmPasswordChanged,
    required TResult Function(_ChangePasswordVisibilityEvent value)
        changePasswordVisibility,
    required TResult Function(SubmitEvent value) submit,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_FulltNameChangedEvent value)? fullNameChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedEvent value)? confirmPasswordChanged,
    TResult Function(_ChangePasswordVisibilityEvent value)?
        changePasswordVisibility,
    TResult Function(SubmitEvent value)? submit,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_FulltNameChangedEvent value)? fullNameChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedEvent value)? confirmPasswordChanged,
    TResult Function(_ChangePasswordVisibilityEvent value)?
        changePasswordVisibility,
    TResult Function(SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChangedEvent implements SignUpEvent {
  const factory _EmailChangedEvent(final String value) = _$_EmailChangedEvent;

  String get value;
  @JsonKey(ignore: true)
  _$$_EmailChangedEventCopyWith<_$_EmailChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FulltNameChangedEventCopyWith<$Res> {
  factory _$$_FulltNameChangedEventCopyWith(_$_FulltNameChangedEvent value,
          $Res Function(_$_FulltNameChangedEvent) then) =
      __$$_FulltNameChangedEventCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_FulltNameChangedEventCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$_FulltNameChangedEventCopyWith<$Res> {
  __$$_FulltNameChangedEventCopyWithImpl(_$_FulltNameChangedEvent _value,
      $Res Function(_$_FulltNameChangedEvent) _then)
      : super(_value, (v) => _then(v as _$_FulltNameChangedEvent));

  @override
  _$_FulltNameChangedEvent get _value =>
      super._value as _$_FulltNameChangedEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_FulltNameChangedEvent(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FulltNameChangedEvent implements _FulltNameChangedEvent {
  const _$_FulltNameChangedEvent(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.fullNameChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FulltNameChangedEvent &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_FulltNameChangedEventCopyWith<_$_FulltNameChangedEvent> get copyWith =>
      __$$_FulltNameChangedEventCopyWithImpl<_$_FulltNameChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) fullNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
    required TResult Function(bool? isConfirmPassowrd) changePasswordVisibility,
    required TResult Function() submit,
  }) {
    return fullNameChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function(bool? isConfirmPassowrd)? changePasswordVisibility,
    TResult Function()? submit,
  }) {
    return fullNameChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function(bool? isConfirmPassowrd)? changePasswordVisibility,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_FulltNameChangedEvent value) fullNameChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedEvent value)
        confirmPasswordChanged,
    required TResult Function(_ChangePasswordVisibilityEvent value)
        changePasswordVisibility,
    required TResult Function(SubmitEvent value) submit,
  }) {
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_FulltNameChangedEvent value)? fullNameChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedEvent value)? confirmPasswordChanged,
    TResult Function(_ChangePasswordVisibilityEvent value)?
        changePasswordVisibility,
    TResult Function(SubmitEvent value)? submit,
  }) {
    return fullNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_FulltNameChangedEvent value)? fullNameChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedEvent value)? confirmPasswordChanged,
    TResult Function(_ChangePasswordVisibilityEvent value)?
        changePasswordVisibility,
    TResult Function(SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FulltNameChangedEvent implements SignUpEvent {
  const factory _FulltNameChangedEvent(final String value) =
      _$_FulltNameChangedEvent;

  String get value;
  @JsonKey(ignore: true)
  _$$_FulltNameChangedEventCopyWith<_$_FulltNameChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedEventCopyWith<$Res> {
  factory _$$PasswordChangedEventCopyWith(_$PasswordChangedEvent value,
          $Res Function(_$PasswordChangedEvent) then) =
      __$$PasswordChangedEventCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$PasswordChangedEventCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$PasswordChangedEventCopyWith<$Res> {
  __$$PasswordChangedEventCopyWithImpl(_$PasswordChangedEvent _value,
      $Res Function(_$PasswordChangedEvent) _then)
      : super(_value, (v) => _then(v as _$PasswordChangedEvent));

  @override
  _$PasswordChangedEvent get _value => super._value as _$PasswordChangedEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$PasswordChangedEvent(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedEvent implements PasswordChangedEvent {
  const _$PasswordChangedEvent(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedEvent &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$PasswordChangedEventCopyWith<_$PasswordChangedEvent> get copyWith =>
      __$$PasswordChangedEventCopyWithImpl<_$PasswordChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) fullNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
    required TResult Function(bool? isConfirmPassowrd) changePasswordVisibility,
    required TResult Function() submit,
  }) {
    return passwordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function(bool? isConfirmPassowrd)? changePasswordVisibility,
    TResult Function()? submit,
  }) {
    return passwordChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function(bool? isConfirmPassowrd)? changePasswordVisibility,
    TResult Function()? submit,
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
    required TResult Function(_FulltNameChangedEvent value) fullNameChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedEvent value)
        confirmPasswordChanged,
    required TResult Function(_ChangePasswordVisibilityEvent value)
        changePasswordVisibility,
    required TResult Function(SubmitEvent value) submit,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_FulltNameChangedEvent value)? fullNameChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedEvent value)? confirmPasswordChanged,
    TResult Function(_ChangePasswordVisibilityEvent value)?
        changePasswordVisibility,
    TResult Function(SubmitEvent value)? submit,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_FulltNameChangedEvent value)? fullNameChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedEvent value)? confirmPasswordChanged,
    TResult Function(_ChangePasswordVisibilityEvent value)?
        changePasswordVisibility,
    TResult Function(SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChangedEvent implements SignUpEvent {
  const factory PasswordChangedEvent(final String value) =
      _$PasswordChangedEvent;

  String get value;
  @JsonKey(ignore: true)
  _$$PasswordChangedEventCopyWith<_$PasswordChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedEventCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedEventCopyWith(
          _$ConfirmPasswordChangedEvent value,
          $Res Function(_$ConfirmPasswordChangedEvent) then) =
      __$$ConfirmPasswordChangedEventCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$ConfirmPasswordChangedEventCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$ConfirmPasswordChangedEventCopyWith<$Res> {
  __$$ConfirmPasswordChangedEventCopyWithImpl(
      _$ConfirmPasswordChangedEvent _value,
      $Res Function(_$ConfirmPasswordChangedEvent) _then)
      : super(_value, (v) => _then(v as _$ConfirmPasswordChangedEvent));

  @override
  _$ConfirmPasswordChangedEvent get _value =>
      super._value as _$ConfirmPasswordChangedEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ConfirmPasswordChangedEvent(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChangedEvent implements ConfirmPasswordChangedEvent {
  const _$ConfirmPasswordChangedEvent(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.confirmPasswordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedEvent &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$ConfirmPasswordChangedEventCopyWith<_$ConfirmPasswordChangedEvent>
      get copyWith => __$$ConfirmPasswordChangedEventCopyWithImpl<
          _$ConfirmPasswordChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) fullNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
    required TResult Function(bool? isConfirmPassowrd) changePasswordVisibility,
    required TResult Function() submit,
  }) {
    return confirmPasswordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function(bool? isConfirmPassowrd)? changePasswordVisibility,
    TResult Function()? submit,
  }) {
    return confirmPasswordChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function(bool? isConfirmPassowrd)? changePasswordVisibility,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_FulltNameChangedEvent value) fullNameChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedEvent value)
        confirmPasswordChanged,
    required TResult Function(_ChangePasswordVisibilityEvent value)
        changePasswordVisibility,
    required TResult Function(SubmitEvent value) submit,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_FulltNameChangedEvent value)? fullNameChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedEvent value)? confirmPasswordChanged,
    TResult Function(_ChangePasswordVisibilityEvent value)?
        changePasswordVisibility,
    TResult Function(SubmitEvent value)? submit,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_FulltNameChangedEvent value)? fullNameChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedEvent value)? confirmPasswordChanged,
    TResult Function(_ChangePasswordVisibilityEvent value)?
        changePasswordVisibility,
    TResult Function(SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChangedEvent implements SignUpEvent {
  const factory ConfirmPasswordChangedEvent(final String value) =
      _$ConfirmPasswordChangedEvent;

  String get value;
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedEventCopyWith<_$ConfirmPasswordChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePasswordVisibilityEventCopyWith<$Res> {
  factory _$$_ChangePasswordVisibilityEventCopyWith(
          _$_ChangePasswordVisibilityEvent value,
          $Res Function(_$_ChangePasswordVisibilityEvent) then) =
      __$$_ChangePasswordVisibilityEventCopyWithImpl<$Res>;
  $Res call({bool? isConfirmPassowrd});
}

/// @nodoc
class __$$_ChangePasswordVisibilityEventCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$_ChangePasswordVisibilityEventCopyWith<$Res> {
  __$$_ChangePasswordVisibilityEventCopyWithImpl(
      _$_ChangePasswordVisibilityEvent _value,
      $Res Function(_$_ChangePasswordVisibilityEvent) _then)
      : super(_value, (v) => _then(v as _$_ChangePasswordVisibilityEvent));

  @override
  _$_ChangePasswordVisibilityEvent get _value =>
      super._value as _$_ChangePasswordVisibilityEvent;

  @override
  $Res call({
    Object? isConfirmPassowrd = freezed,
  }) {
    return _then(_$_ChangePasswordVisibilityEvent(
      isConfirmPassowrd: isConfirmPassowrd == freezed
          ? _value.isConfirmPassowrd
          : isConfirmPassowrd // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordVisibilityEvent
    implements _ChangePasswordVisibilityEvent {
  const _$_ChangePasswordVisibilityEvent({this.isConfirmPassowrd});

  @override
  final bool? isConfirmPassowrd;

  @override
  String toString() {
    return 'SignUpEvent.changePasswordVisibility(isConfirmPassowrd: $isConfirmPassowrd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordVisibilityEvent &&
            const DeepCollectionEquality()
                .equals(other.isConfirmPassowrd, isConfirmPassowrd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isConfirmPassowrd));

  @JsonKey(ignore: true)
  @override
  _$$_ChangePasswordVisibilityEventCopyWith<_$_ChangePasswordVisibilityEvent>
      get copyWith => __$$_ChangePasswordVisibilityEventCopyWithImpl<
          _$_ChangePasswordVisibilityEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) fullNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
    required TResult Function(bool? isConfirmPassowrd) changePasswordVisibility,
    required TResult Function() submit,
  }) {
    return changePasswordVisibility(isConfirmPassowrd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function(bool? isConfirmPassowrd)? changePasswordVisibility,
    TResult Function()? submit,
  }) {
    return changePasswordVisibility?.call(isConfirmPassowrd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function(bool? isConfirmPassowrd)? changePasswordVisibility,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changePasswordVisibility != null) {
      return changePasswordVisibility(isConfirmPassowrd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_FulltNameChangedEvent value) fullNameChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedEvent value)
        confirmPasswordChanged,
    required TResult Function(_ChangePasswordVisibilityEvent value)
        changePasswordVisibility,
    required TResult Function(SubmitEvent value) submit,
  }) {
    return changePasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_FulltNameChangedEvent value)? fullNameChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedEvent value)? confirmPasswordChanged,
    TResult Function(_ChangePasswordVisibilityEvent value)?
        changePasswordVisibility,
    TResult Function(SubmitEvent value)? submit,
  }) {
    return changePasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_FulltNameChangedEvent value)? fullNameChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedEvent value)? confirmPasswordChanged,
    TResult Function(_ChangePasswordVisibilityEvent value)?
        changePasswordVisibility,
    TResult Function(SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (changePasswordVisibility != null) {
      return changePasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class _ChangePasswordVisibilityEvent implements SignUpEvent {
  const factory _ChangePasswordVisibilityEvent(
      {final bool? isConfirmPassowrd}) = _$_ChangePasswordVisibilityEvent;

  bool? get isConfirmPassowrd;
  @JsonKey(ignore: true)
  _$$_ChangePasswordVisibilityEventCopyWith<_$_ChangePasswordVisibilityEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitEventCopyWith<$Res> {
  factory _$$SubmitEventCopyWith(
          _$SubmitEvent value, $Res Function(_$SubmitEvent) then) =
      __$$SubmitEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitEventCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$SubmitEventCopyWith<$Res> {
  __$$SubmitEventCopyWithImpl(
      _$SubmitEvent _value, $Res Function(_$SubmitEvent) _then)
      : super(_value, (v) => _then(v as _$SubmitEvent));

  @override
  _$SubmitEvent get _value => super._value as _$SubmitEvent;
}

/// @nodoc

class _$SubmitEvent implements SubmitEvent {
  const _$SubmitEvent();

  @override
  String toString() {
    return 'SignUpEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) fullNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
    required TResult Function(bool? isConfirmPassowrd) changePasswordVisibility,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function(bool? isConfirmPassowrd)? changePasswordVisibility,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? fullNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function(bool? isConfirmPassowrd)? changePasswordVisibility,
    TResult Function()? submit,
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
    required TResult Function(_FulltNameChangedEvent value) fullNameChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(ConfirmPasswordChangedEvent value)
        confirmPasswordChanged,
    required TResult Function(_ChangePasswordVisibilityEvent value)
        changePasswordVisibility,
    required TResult Function(SubmitEvent value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_FulltNameChangedEvent value)? fullNameChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedEvent value)? confirmPasswordChanged,
    TResult Function(_ChangePasswordVisibilityEvent value)?
        changePasswordVisibility,
    TResult Function(SubmitEvent value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_FulltNameChangedEvent value)? fullNameChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(ConfirmPasswordChangedEvent value)? confirmPasswordChanged,
    TResult Function(_ChangePasswordVisibilityEvent value)?
        changePasswordVisibility,
    TResult Function(SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class SubmitEvent implements SignUpEvent {
  const factory SubmitEvent() = _$SubmitEvent;
}

/// @nodoc
mixin _$SignUpState {
  ///full name of the user
  Name get fullName => throw _privateConstructorUsedError;

  ///email of the user
  Email get email => throw _privateConstructorUsedError;

  ///password of the user
  Password get password => throw _privateConstructorUsedError;

  ///confirmPassword of the user
  ConfirmPassword get confirmPassword => throw _privateConstructorUsedError;

  ///Status of the input form
  FormzStatus get signupFormStatus => throw _privateConstructorUsedError;

  ///hide the password
  bool get hidePassword => throw _privateConstructorUsedError;

  ///hide the confirm password
  bool get hideConfirmPassword => throw _privateConstructorUsedError;

  ///The error message for invalid input
  String? get submissionFailureMessage => throw _privateConstructorUsedError;

  ///response for the request
  ResponseModel? get responseModel => throw _privateConstructorUsedError;

  ///How the user is going to authenticate
  AuthType? get authType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {Name fullName,
      Email email,
      Password password,
      ConfirmPassword confirmPassword,
      FormzStatus signupFormStatus,
      bool hidePassword,
      bool hideConfirmPassword,
      String? submissionFailureMessage,
      ResponseModel? responseModel,
      AuthType? authType});

  $ResponseModelCopyWith<$Res>? get responseModel;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? signupFormStatus = freezed,
    Object? hidePassword = freezed,
    Object? hideConfirmPassword = freezed,
    Object? submissionFailureMessage = freezed,
    Object? responseModel = freezed,
    Object? authType = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as Name,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassword,
      signupFormStatus: signupFormStatus == freezed
          ? _value.signupFormStatus
          : signupFormStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      hidePassword: hidePassword == freezed
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      hideConfirmPassword: hideConfirmPassword == freezed
          ? _value.hideConfirmPassword
          : hideConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionFailureMessage: submissionFailureMessage == freezed
          ? _value.submissionFailureMessage
          : submissionFailureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      responseModel: responseModel == freezed
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as ResponseModel?,
      authType: authType == freezed
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as AuthType?,
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
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Name fullName,
      Email email,
      Password password,
      ConfirmPassword confirmPassword,
      FormzStatus signupFormStatus,
      bool hidePassword,
      bool hideConfirmPassword,
      String? submissionFailureMessage,
      ResponseModel? responseModel,
      AuthType? authType});

  @override
  $ResponseModelCopyWith<$Res>? get responseModel;
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, (v) => _then(v as _$_SignUpState));

  @override
  _$_SignUpState get _value => super._value as _$_SignUpState;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? signupFormStatus = freezed,
    Object? hidePassword = freezed,
    Object? hideConfirmPassword = freezed,
    Object? submissionFailureMessage = freezed,
    Object? responseModel = freezed,
    Object? authType = freezed,
  }) {
    return _then(_$_SignUpState(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as Name,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassword,
      signupFormStatus: signupFormStatus == freezed
          ? _value.signupFormStatus
          : signupFormStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      hidePassword: hidePassword == freezed
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      hideConfirmPassword: hideConfirmPassword == freezed
          ? _value.hideConfirmPassword
          : hideConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionFailureMessage: submissionFailureMessage == freezed
          ? _value.submissionFailureMessage
          : submissionFailureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      responseModel: responseModel == freezed
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as ResponseModel?,
      authType: authType == freezed
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as AuthType?,
    ));
  }
}

/// @nodoc

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {this.fullName = const Name.pure(),
      this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.confirmPassword = const ConfirmPassword.pure(),
      this.signupFormStatus = FormzStatus.pure,
      this.hidePassword = true,
      this.hideConfirmPassword = true,
      this.submissionFailureMessage,
      this.responseModel,
      this.authType});

  ///full name of the user
  @override
  @JsonKey()
  final Name fullName;

  ///email of the user
  @override
  @JsonKey()
  final Email email;

  ///password of the user
  @override
  @JsonKey()
  final Password password;

  ///confirmPassword of the user
  @override
  @JsonKey()
  final ConfirmPassword confirmPassword;

  ///Status of the input form
  @override
  @JsonKey()
  final FormzStatus signupFormStatus;

  ///hide the password
  @override
  @JsonKey()
  final bool hidePassword;

  ///hide the confirm password
  @override
  @JsonKey()
  final bool hideConfirmPassword;

  ///The error message for invalid input
  @override
  final String? submissionFailureMessage;

  ///response for the request
  @override
  final ResponseModel? responseModel;

  ///How the user is going to authenticate
  @override
  final AuthType? authType;

  @override
  String toString() {
    return 'SignUpState(fullName: $fullName, email: $email, password: $password, confirmPassword: $confirmPassword, signupFormStatus: $signupFormStatus, hidePassword: $hidePassword, hideConfirmPassword: $hideConfirmPassword, submissionFailureMessage: $submissionFailureMessage, responseModel: $responseModel, authType: $authType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality()
                .equals(other.signupFormStatus, signupFormStatus) &&
            const DeepCollectionEquality()
                .equals(other.hidePassword, hidePassword) &&
            const DeepCollectionEquality()
                .equals(other.hideConfirmPassword, hideConfirmPassword) &&
            const DeepCollectionEquality().equals(
                other.submissionFailureMessage, submissionFailureMessage) &&
            const DeepCollectionEquality()
                .equals(other.responseModel, responseModel) &&
            const DeepCollectionEquality().equals(other.authType, authType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword),
      const DeepCollectionEquality().hash(signupFormStatus),
      const DeepCollectionEquality().hash(hidePassword),
      const DeepCollectionEquality().hash(hideConfirmPassword),
      const DeepCollectionEquality().hash(submissionFailureMessage),
      const DeepCollectionEquality().hash(responseModel),
      const DeepCollectionEquality().hash(authType));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {final Name fullName,
      final Email email,
      final Password password,
      final ConfirmPassword confirmPassword,
      final FormzStatus signupFormStatus,
      final bool hidePassword,
      final bool hideConfirmPassword,
      final String? submissionFailureMessage,
      final ResponseModel? responseModel,
      final AuthType? authType}) = _$_SignUpState;

  @override

  ///full name of the user
  Name get fullName;
  @override

  ///email of the user
  Email get email;
  @override

  ///password of the user
  Password get password;
  @override

  ///confirmPassword of the user
  ConfirmPassword get confirmPassword;
  @override

  ///Status of the input form
  FormzStatus get signupFormStatus;
  @override

  ///hide the password
  bool get hidePassword;
  @override

  ///hide the confirm password
  bool get hideConfirmPassword;
  @override

  ///The error message for invalid input
  String? get submissionFailureMessage;
  @override

  ///response for the request
  ResponseModel? get responseModel;
  @override

  ///How the user is going to authenticate
  AuthType? get authType;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
