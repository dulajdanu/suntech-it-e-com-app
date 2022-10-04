part of 'edit_profile_cubit.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    ///email of the user
    @Default(Email.pure()) Email email,

    ///full name of the user
    @Default(Name.pure()) Name fullName,

    ///flag to check profile edit
    @Default(false) bool editProfile,

    ///Status of the input form
    @Default(FormzStatus.pure) FormzStatus editFormStatus,
  }) = _EditProfileState;
}
