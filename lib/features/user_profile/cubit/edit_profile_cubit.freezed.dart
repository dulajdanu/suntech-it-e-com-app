// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditProfileState {
  ///email of the user
  Email get email => throw _privateConstructorUsedError;

  ///full name of the user
  Name get fullName => throw _privateConstructorUsedError;

  ///flag to check profile edit
  bool get editProfile => throw _privateConstructorUsedError;

  ///Status of the input form
  FormzStatus get editFormStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileStateCopyWith<EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Name fullName,
      bool editProfile,
      FormzStatus editFormStatus});
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  final EditProfileState _value;
  // ignore: unused_field
  final $Res Function(EditProfileState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? fullName = freezed,
    Object? editProfile = freezed,
    Object? editFormStatus = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as Name,
      editProfile: editProfile == freezed
          ? _value.editProfile
          : editProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      editFormStatus: editFormStatus == freezed
          ? _value.editFormStatus
          : editFormStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_EditProfileStateCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$$_EditProfileStateCopyWith(
          _$_EditProfileState value, $Res Function(_$_EditProfileState) then) =
      __$$_EditProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Name fullName,
      bool editProfile,
      FormzStatus editFormStatus});
}

/// @nodoc
class __$$_EditProfileStateCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements _$$_EditProfileStateCopyWith<$Res> {
  __$$_EditProfileStateCopyWithImpl(
      _$_EditProfileState _value, $Res Function(_$_EditProfileState) _then)
      : super(_value, (v) => _then(v as _$_EditProfileState));

  @override
  _$_EditProfileState get _value => super._value as _$_EditProfileState;

  @override
  $Res call({
    Object? email = freezed,
    Object? fullName = freezed,
    Object? editProfile = freezed,
    Object? editFormStatus = freezed,
  }) {
    return _then(_$_EditProfileState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as Name,
      editProfile: editProfile == freezed
          ? _value.editProfile
          : editProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      editFormStatus: editFormStatus == freezed
          ? _value.editFormStatus
          : editFormStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_EditProfileState implements _EditProfileState {
  const _$_EditProfileState(
      {this.email = const Email.pure(),
      this.fullName = const Name.pure(),
      this.editProfile = false,
      this.editFormStatus = FormzStatus.pure});

  ///email of the user
  @override
  @JsonKey()
  final Email email;

  ///full name of the user
  @override
  @JsonKey()
  final Name fullName;

  ///flag to check profile edit
  @override
  @JsonKey()
  final bool editProfile;

  ///Status of the input form
  @override
  @JsonKey()
  final FormzStatus editFormStatus;

  @override
  String toString() {
    return 'EditProfileState(email: $email, fullName: $fullName, editProfile: $editProfile, editFormStatus: $editFormStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProfileState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality()
                .equals(other.editProfile, editProfile) &&
            const DeepCollectionEquality()
                .equals(other.editFormStatus, editFormStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(editProfile),
      const DeepCollectionEquality().hash(editFormStatus));

  @JsonKey(ignore: true)
  @override
  _$$_EditProfileStateCopyWith<_$_EditProfileState> get copyWith =>
      __$$_EditProfileStateCopyWithImpl<_$_EditProfileState>(this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  const factory _EditProfileState(
      {final Email email,
      final Name fullName,
      final bool editProfile,
      final FormzStatus editFormStatus}) = _$_EditProfileState;

  @override

  ///email of the user
  Email get email;
  @override

  ///full name of the user
  Name get fullName;
  @override

  ///flag to check profile edit
  bool get editProfile;
  @override

  ///Status of the input form
  FormzStatus get editFormStatus;
  @override
  @JsonKey(ignore: true)
  _$$_EditProfileStateCopyWith<_$_EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
