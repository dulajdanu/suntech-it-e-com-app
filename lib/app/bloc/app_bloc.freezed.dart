// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authStatusChanged,
    required TResult Function() logoutRequested,
    required TResult Function() getToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authStatusChanged,
    TResult Function()? logoutRequested,
    TResult Function()? getToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authStatusChanged,
    TResult Function()? logoutRequested,
    TResult Function()? getToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStatusChanged value) authStatusChanged,
    required TResult Function(_LogoutRequested value) logoutRequested,
    required TResult Function(_GetToken value) getToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStatusChanged value)? authStatusChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_GetToken value)? getToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStatusChanged value)? authStatusChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_GetToken value)? getToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$$_AuthStatusChangedCopyWith<$Res> {
  factory _$$_AuthStatusChangedCopyWith(_$_AuthStatusChanged value,
          $Res Function(_$_AuthStatusChanged) then) =
      __$$_AuthStatusChangedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthStatusChangedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$_AuthStatusChangedCopyWith<$Res> {
  __$$_AuthStatusChangedCopyWithImpl(
      _$_AuthStatusChanged _value, $Res Function(_$_AuthStatusChanged) _then)
      : super(_value, (v) => _then(v as _$_AuthStatusChanged));

  @override
  _$_AuthStatusChanged get _value => super._value as _$_AuthStatusChanged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_AuthStatusChanged(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_AuthStatusChanged implements _AuthStatusChanged {
  const _$_AuthStatusChanged(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AppEvent.authStatusChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStatusChanged &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_AuthStatusChangedCopyWith<_$_AuthStatusChanged> get copyWith =>
      __$$_AuthStatusChangedCopyWithImpl<_$_AuthStatusChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authStatusChanged,
    required TResult Function() logoutRequested,
    required TResult Function() getToken,
  }) {
    return authStatusChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authStatusChanged,
    TResult Function()? logoutRequested,
    TResult Function()? getToken,
  }) {
    return authStatusChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authStatusChanged,
    TResult Function()? logoutRequested,
    TResult Function()? getToken,
    required TResult orElse(),
  }) {
    if (authStatusChanged != null) {
      return authStatusChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStatusChanged value) authStatusChanged,
    required TResult Function(_LogoutRequested value) logoutRequested,
    required TResult Function(_GetToken value) getToken,
  }) {
    return authStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStatusChanged value)? authStatusChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_GetToken value)? getToken,
  }) {
    return authStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStatusChanged value)? authStatusChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_GetToken value)? getToken,
    required TResult orElse(),
  }) {
    if (authStatusChanged != null) {
      return authStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _AuthStatusChanged implements AppEvent {
  const factory _AuthStatusChanged(final User user) = _$_AuthStatusChanged;

  User get user;
  @JsonKey(ignore: true)
  _$$_AuthStatusChangedCopyWith<_$_AuthStatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutRequestedCopyWith<$Res> {
  factory _$$_LogoutRequestedCopyWith(
          _$_LogoutRequested value, $Res Function(_$_LogoutRequested) then) =
      __$$_LogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutRequestedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$_LogoutRequestedCopyWith<$Res> {
  __$$_LogoutRequestedCopyWithImpl(
      _$_LogoutRequested _value, $Res Function(_$_LogoutRequested) _then)
      : super(_value, (v) => _then(v as _$_LogoutRequested));

  @override
  _$_LogoutRequested get _value => super._value as _$_LogoutRequested;
}

/// @nodoc

class _$_LogoutRequested implements _LogoutRequested {
  const _$_LogoutRequested();

  @override
  String toString() {
    return 'AppEvent.logoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authStatusChanged,
    required TResult Function() logoutRequested,
    required TResult Function() getToken,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authStatusChanged,
    TResult Function()? logoutRequested,
    TResult Function()? getToken,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authStatusChanged,
    TResult Function()? logoutRequested,
    TResult Function()? getToken,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStatusChanged value) authStatusChanged,
    required TResult Function(_LogoutRequested value) logoutRequested,
    required TResult Function(_GetToken value) getToken,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStatusChanged value)? authStatusChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_GetToken value)? getToken,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStatusChanged value)? authStatusChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_GetToken value)? getToken,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class _LogoutRequested implements AppEvent {
  const factory _LogoutRequested() = _$_LogoutRequested;
}

/// @nodoc
abstract class _$$_GetTokenCopyWith<$Res> {
  factory _$$_GetTokenCopyWith(
          _$_GetToken value, $Res Function(_$_GetToken) then) =
      __$$_GetTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetTokenCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_GetTokenCopyWith<$Res> {
  __$$_GetTokenCopyWithImpl(
      _$_GetToken _value, $Res Function(_$_GetToken) _then)
      : super(_value, (v) => _then(v as _$_GetToken));

  @override
  _$_GetToken get _value => super._value as _$_GetToken;
}

/// @nodoc

class _$_GetToken implements _GetToken {
  const _$_GetToken();

  @override
  String toString() {
    return 'AppEvent.getToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authStatusChanged,
    required TResult Function() logoutRequested,
    required TResult Function() getToken,
  }) {
    return getToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authStatusChanged,
    TResult Function()? logoutRequested,
    TResult Function()? getToken,
  }) {
    return getToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authStatusChanged,
    TResult Function()? logoutRequested,
    TResult Function()? getToken,
    required TResult orElse(),
  }) {
    if (getToken != null) {
      return getToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStatusChanged value) authStatusChanged,
    required TResult Function(_LogoutRequested value) logoutRequested,
    required TResult Function(_GetToken value) getToken,
  }) {
    return getToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStatusChanged value)? authStatusChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_GetToken value)? getToken,
  }) {
    return getToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStatusChanged value)? authStatusChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_GetToken value)? getToken,
    required TResult orElse(),
  }) {
    if (getToken != null) {
      return getToken(this);
    }
    return orElse();
  }
}

abstract class _GetToken implements AppEvent {
  const factory _GetToken() = _$_GetToken;
}

/// @nodoc
mixin _$AppState {
  AppStatus get status => throw _privateConstructorUsedError;
  User get userModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({AppStatus status, User userModel});

  $UserCopyWith<$Res> get userModel;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? userModel = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get userModel {
    return $UserCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  $Res call({AppStatus status, User userModel});

  @override
  $UserCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, (v) => _then(v as _$_AppState));

  @override
  _$_AppState get _value => super._value as _$_AppState;

  @override
  $Res call({
    Object? status = freezed,
    Object? userModel = freezed,
  }) {
    return _then(_$_AppState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState(
      {this.status = AppStatus.unauthenticated, this.userModel = User.empty});

  @override
  @JsonKey()
  final AppStatus status;
  @override
  @JsonKey()
  final User userModel;

  @override
  String toString() {
    return 'AppState(status: $status, userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.userModel, userModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(userModel));

  @JsonKey(ignore: true)
  @override
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState({final AppStatus status, final User userModel}) =
      _$_AppState;

  @override
  AppStatus get status;
  @override
  User get userModel;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
