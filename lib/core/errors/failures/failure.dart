import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  ///This is returned when there is a exception in [`Login`]
  const factory Failure.login(String message) = LoginFailure;

  ///This is returned when there is a exception in [`Sign Up`]
  const factory Failure.signUp(String message) = SignUpFailure;

  ///Signout Failure is returned when there is a SignOutException
  const factory Failure.signOutFailure(String message) = SignOutFailure;

  ///Cache failure is returned when there is a exception in Cache

  const factory Failure.cacheFailure(String message) = CacheFailure;

  ///ResetPasswordFailure is returned when there is a exception in reset password

  const factory Failure.resetPassword(String message) = ResetPasswordFailure;

  ///returned when there is a update profile exception

  const factory Failure.updateProfile(String message) = UpdateProfileFailure;
}
