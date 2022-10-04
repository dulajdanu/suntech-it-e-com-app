import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class Exceptions with _$Exceptions implements Exception {
  ///Thrown when there is a auth exception
  const factory Exceptions.loginException(String message, [String? devLogs]) =
      LoginException;

  ///Thrown when there is a auth exception
  const factory Exceptions.signUpException(String message, [String? devLogs]) =
      SignUpException;

  ///Thrown when there is a  exception in Sign Out
  const factory Exceptions.signOutException(String message, [String? devLogs]) =
      SignOutException;

  ///Thrown when there is a  exception in reset Password
  const factory Exceptions.resetPassword(String message, [String? devLogs]) =
      ResetPasswordException;

  ///Thrown when there is a  exception in updating profile
  const factory Exceptions.updateProfile(String message, [String? devLogs]) =
      UpdateProfileException;
}
