// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) login,
    required TResult Function(String message) signUp,
    required TResult Function(String message) signOutFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message) resetPassword,
    required TResult Function(String message) updateProfile,
    required TResult Function(String message) productsFetch,
    required TResult Function(String message) fetchProductImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFailure value) login,
    required TResult Function(SignUpFailure value) signUp,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ResetPasswordFailure value) resetPassword,
    required TResult Function(UpdateProfileFailure value) updateProfile,
    required TResult Function(ProductsFetchFailure value) productsFetch,
    required TResult Function(FetchProductImageFailure value) fetchProductImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$LoginFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$LoginFailureCopyWith(
          _$LoginFailure value, $Res Function(_$LoginFailure) then) =
      __$$LoginFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$LoginFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$LoginFailureCopyWith<$Res> {
  __$$LoginFailureCopyWithImpl(
      _$LoginFailure _value, $Res Function(_$LoginFailure) _then)
      : super(_value, (v) => _then(v as _$LoginFailure));

  @override
  _$LoginFailure get _value => super._value as _$LoginFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$LoginFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFailure implements LoginFailure {
  const _$LoginFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.login(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$LoginFailureCopyWith<_$LoginFailure> get copyWith =>
      __$$LoginFailureCopyWithImpl<_$LoginFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) login,
    required TResult Function(String message) signUp,
    required TResult Function(String message) signOutFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message) resetPassword,
    required TResult Function(String message) updateProfile,
    required TResult Function(String message) productsFetch,
    required TResult Function(String message) fetchProductImage,
  }) {
    return login(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
  }) {
    return login?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFailure value) login,
    required TResult Function(SignUpFailure value) signUp,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ResetPasswordFailure value) resetPassword,
    required TResult Function(UpdateProfileFailure value) updateProfile,
    required TResult Function(ProductsFetchFailure value) productsFetch,
    required TResult Function(FetchProductImageFailure value) fetchProductImage,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginFailure implements Failure {
  const factory LoginFailure(final String message) = _$LoginFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$LoginFailureCopyWith<_$LoginFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$SignUpFailureCopyWith(
          _$SignUpFailure value, $Res Function(_$SignUpFailure) then) =
      __$$SignUpFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$SignUpFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$SignUpFailureCopyWith<$Res> {
  __$$SignUpFailureCopyWithImpl(
      _$SignUpFailure _value, $Res Function(_$SignUpFailure) _then)
      : super(_value, (v) => _then(v as _$SignUpFailure));

  @override
  _$SignUpFailure get _value => super._value as _$SignUpFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SignUpFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpFailure implements SignUpFailure {
  const _$SignUpFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.signUp(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$SignUpFailureCopyWith<_$SignUpFailure> get copyWith =>
      __$$SignUpFailureCopyWithImpl<_$SignUpFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) login,
    required TResult Function(String message) signUp,
    required TResult Function(String message) signOutFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message) resetPassword,
    required TResult Function(String message) updateProfile,
    required TResult Function(String message) productsFetch,
    required TResult Function(String message) fetchProductImage,
  }) {
    return signUp(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
  }) {
    return signUp?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFailure value) login,
    required TResult Function(SignUpFailure value) signUp,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ResetPasswordFailure value) resetPassword,
    required TResult Function(UpdateProfileFailure value) updateProfile,
    required TResult Function(ProductsFetchFailure value) productsFetch,
    required TResult Function(FetchProductImageFailure value) fetchProductImage,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUpFailure implements Failure {
  const factory SignUpFailure(final String message) = _$SignUpFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SignUpFailureCopyWith<_$SignUpFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$SignOutFailureCopyWith(
          _$SignOutFailure value, $Res Function(_$SignOutFailure) then) =
      __$$SignOutFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$SignOutFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$SignOutFailureCopyWith<$Res> {
  __$$SignOutFailureCopyWithImpl(
      _$SignOutFailure _value, $Res Function(_$SignOutFailure) _then)
      : super(_value, (v) => _then(v as _$SignOutFailure));

  @override
  _$SignOutFailure get _value => super._value as _$SignOutFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SignOutFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignOutFailure implements SignOutFailure {
  const _$SignOutFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.signOutFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOutFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$SignOutFailureCopyWith<_$SignOutFailure> get copyWith =>
      __$$SignOutFailureCopyWithImpl<_$SignOutFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) login,
    required TResult Function(String message) signUp,
    required TResult Function(String message) signOutFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message) resetPassword,
    required TResult Function(String message) updateProfile,
    required TResult Function(String message) productsFetch,
    required TResult Function(String message) fetchProductImage,
  }) {
    return signOutFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
  }) {
    return signOutFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (signOutFailure != null) {
      return signOutFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFailure value) login,
    required TResult Function(SignUpFailure value) signUp,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ResetPasswordFailure value) resetPassword,
    required TResult Function(UpdateProfileFailure value) updateProfile,
    required TResult Function(ProductsFetchFailure value) productsFetch,
    required TResult Function(FetchProductImageFailure value) fetchProductImage,
  }) {
    return signOutFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
  }) {
    return signOutFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (signOutFailure != null) {
      return signOutFailure(this);
    }
    return orElse();
  }
}

abstract class SignOutFailure implements Failure {
  const factory SignOutFailure(final String message) = _$SignOutFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SignOutFailureCopyWith<_$SignOutFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$CacheFailureCopyWith(
          _$CacheFailure value, $Res Function(_$CacheFailure) then) =
      __$$CacheFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$CacheFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$CacheFailureCopyWith<$Res> {
  __$$CacheFailureCopyWithImpl(
      _$CacheFailure _value, $Res Function(_$CacheFailure) _then)
      : super(_value, (v) => _then(v as _$CacheFailure));

  @override
  _$CacheFailure get _value => super._value as _$CacheFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CacheFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CacheFailure implements CacheFailure {
  const _$CacheFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.cacheFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$CacheFailureCopyWith<_$CacheFailure> get copyWith =>
      __$$CacheFailureCopyWithImpl<_$CacheFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) login,
    required TResult Function(String message) signUp,
    required TResult Function(String message) signOutFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message) resetPassword,
    required TResult Function(String message) updateProfile,
    required TResult Function(String message) productsFetch,
    required TResult Function(String message) fetchProductImage,
  }) {
    return cacheFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
  }) {
    return cacheFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFailure value) login,
    required TResult Function(SignUpFailure value) signUp,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ResetPasswordFailure value) resetPassword,
    required TResult Function(UpdateProfileFailure value) updateProfile,
    required TResult Function(ProductsFetchFailure value) productsFetch,
    required TResult Function(FetchProductImageFailure value) fetchProductImage,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure(final String message) = _$CacheFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CacheFailureCopyWith<_$CacheFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ResetPasswordFailureCopyWith(_$ResetPasswordFailure value,
          $Res Function(_$ResetPasswordFailure) then) =
      __$$ResetPasswordFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$ResetPasswordFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$$ResetPasswordFailureCopyWith<$Res> {
  __$$ResetPasswordFailureCopyWithImpl(_$ResetPasswordFailure _value,
      $Res Function(_$ResetPasswordFailure) _then)
      : super(_value, (v) => _then(v as _$ResetPasswordFailure));

  @override
  _$ResetPasswordFailure get _value => super._value as _$ResetPasswordFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ResetPasswordFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordFailure implements ResetPasswordFailure {
  const _$ResetPasswordFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.resetPassword(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ResetPasswordFailureCopyWith<_$ResetPasswordFailure> get copyWith =>
      __$$ResetPasswordFailureCopyWithImpl<_$ResetPasswordFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) login,
    required TResult Function(String message) signUp,
    required TResult Function(String message) signOutFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message) resetPassword,
    required TResult Function(String message) updateProfile,
    required TResult Function(String message) productsFetch,
    required TResult Function(String message) fetchProductImage,
  }) {
    return resetPassword(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
  }) {
    return resetPassword?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFailure value) login,
    required TResult Function(SignUpFailure value) signUp,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ResetPasswordFailure value) resetPassword,
    required TResult Function(UpdateProfileFailure value) updateProfile,
    required TResult Function(ProductsFetchFailure value) productsFetch,
    required TResult Function(FetchProductImageFailure value) fetchProductImage,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordFailure implements Failure {
  const factory ResetPasswordFailure(final String message) =
      _$ResetPasswordFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ResetPasswordFailureCopyWith<_$ResetPasswordFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UpdateProfileFailureCopyWith(_$UpdateProfileFailure value,
          $Res Function(_$UpdateProfileFailure) then) =
      __$$UpdateProfileFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$UpdateProfileFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$$UpdateProfileFailureCopyWith<$Res> {
  __$$UpdateProfileFailureCopyWithImpl(_$UpdateProfileFailure _value,
      $Res Function(_$UpdateProfileFailure) _then)
      : super(_value, (v) => _then(v as _$UpdateProfileFailure));

  @override
  _$UpdateProfileFailure get _value => super._value as _$UpdateProfileFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UpdateProfileFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProfileFailure implements UpdateProfileFailure {
  const _$UpdateProfileFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.updateProfile(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$UpdateProfileFailureCopyWith<_$UpdateProfileFailure> get copyWith =>
      __$$UpdateProfileFailureCopyWithImpl<_$UpdateProfileFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) login,
    required TResult Function(String message) signUp,
    required TResult Function(String message) signOutFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message) resetPassword,
    required TResult Function(String message) updateProfile,
    required TResult Function(String message) productsFetch,
    required TResult Function(String message) fetchProductImage,
  }) {
    return updateProfile(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
  }) {
    return updateProfile?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFailure value) login,
    required TResult Function(SignUpFailure value) signUp,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ResetPasswordFailure value) resetPassword,
    required TResult Function(UpdateProfileFailure value) updateProfile,
    required TResult Function(ProductsFetchFailure value) productsFetch,
    required TResult Function(FetchProductImageFailure value) fetchProductImage,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileFailure implements Failure {
  const factory UpdateProfileFailure(final String message) =
      _$UpdateProfileFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProfileFailureCopyWith<_$UpdateProfileFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsFetchFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ProductsFetchFailureCopyWith(_$ProductsFetchFailure value,
          $Res Function(_$ProductsFetchFailure) then) =
      __$$ProductsFetchFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$ProductsFetchFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$$ProductsFetchFailureCopyWith<$Res> {
  __$$ProductsFetchFailureCopyWithImpl(_$ProductsFetchFailure _value,
      $Res Function(_$ProductsFetchFailure) _then)
      : super(_value, (v) => _then(v as _$ProductsFetchFailure));

  @override
  _$ProductsFetchFailure get _value => super._value as _$ProductsFetchFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ProductsFetchFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductsFetchFailure implements ProductsFetchFailure {
  const _$ProductsFetchFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.productsFetch(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsFetchFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ProductsFetchFailureCopyWith<_$ProductsFetchFailure> get copyWith =>
      __$$ProductsFetchFailureCopyWithImpl<_$ProductsFetchFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) login,
    required TResult Function(String message) signUp,
    required TResult Function(String message) signOutFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message) resetPassword,
    required TResult Function(String message) updateProfile,
    required TResult Function(String message) productsFetch,
    required TResult Function(String message) fetchProductImage,
  }) {
    return productsFetch(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
  }) {
    return productsFetch?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (productsFetch != null) {
      return productsFetch(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFailure value) login,
    required TResult Function(SignUpFailure value) signUp,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ResetPasswordFailure value) resetPassword,
    required TResult Function(UpdateProfileFailure value) updateProfile,
    required TResult Function(ProductsFetchFailure value) productsFetch,
    required TResult Function(FetchProductImageFailure value) fetchProductImage,
  }) {
    return productsFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
  }) {
    return productsFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (productsFetch != null) {
      return productsFetch(this);
    }
    return orElse();
  }
}

abstract class ProductsFetchFailure implements Failure {
  const factory ProductsFetchFailure(final String message) =
      _$ProductsFetchFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ProductsFetchFailureCopyWith<_$ProductsFetchFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchProductImageFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FetchProductImageFailureCopyWith(_$FetchProductImageFailure value,
          $Res Function(_$FetchProductImageFailure) then) =
      __$$FetchProductImageFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$FetchProductImageFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$$FetchProductImageFailureCopyWith<$Res> {
  __$$FetchProductImageFailureCopyWithImpl(_$FetchProductImageFailure _value,
      $Res Function(_$FetchProductImageFailure) _then)
      : super(_value, (v) => _then(v as _$FetchProductImageFailure));

  @override
  _$FetchProductImageFailure get _value =>
      super._value as _$FetchProductImageFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FetchProductImageFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchProductImageFailure implements FetchProductImageFailure {
  const _$FetchProductImageFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.fetchProductImage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductImageFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$FetchProductImageFailureCopyWith<_$FetchProductImageFailure>
      get copyWith =>
          __$$FetchProductImageFailureCopyWithImpl<_$FetchProductImageFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) login,
    required TResult Function(String message) signUp,
    required TResult Function(String message) signOutFailure,
    required TResult Function(String message) cacheFailure,
    required TResult Function(String message) resetPassword,
    required TResult Function(String message) updateProfile,
    required TResult Function(String message) productsFetch,
    required TResult Function(String message) fetchProductImage,
  }) {
    return fetchProductImage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
  }) {
    return fetchProductImage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? login,
    TResult Function(String message)? signUp,
    TResult Function(String message)? signOutFailure,
    TResult Function(String message)? cacheFailure,
    TResult Function(String message)? resetPassword,
    TResult Function(String message)? updateProfile,
    TResult Function(String message)? productsFetch,
    TResult Function(String message)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (fetchProductImage != null) {
      return fetchProductImage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginFailure value) login,
    required TResult Function(SignUpFailure value) signUp,
    required TResult Function(SignOutFailure value) signOutFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ResetPasswordFailure value) resetPassword,
    required TResult Function(UpdateProfileFailure value) updateProfile,
    required TResult Function(ProductsFetchFailure value) productsFetch,
    required TResult Function(FetchProductImageFailure value) fetchProductImage,
  }) {
    return fetchProductImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
  }) {
    return fetchProductImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginFailure value)? login,
    TResult Function(SignUpFailure value)? signUp,
    TResult Function(SignOutFailure value)? signOutFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ResetPasswordFailure value)? resetPassword,
    TResult Function(UpdateProfileFailure value)? updateProfile,
    TResult Function(ProductsFetchFailure value)? productsFetch,
    TResult Function(FetchProductImageFailure value)? fetchProductImage,
    required TResult orElse(),
  }) {
    if (fetchProductImage != null) {
      return fetchProductImage(this);
    }
    return orElse();
  }
}

abstract class FetchProductImageFailure implements Failure {
  const factory FetchProductImageFailure(final String message) =
      _$FetchProductImageFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FetchProductImageFailureCopyWith<_$FetchProductImageFailure>
      get copyWith => throw _privateConstructorUsedError;
}
