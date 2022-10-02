import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class Exceptions with _$Exceptions implements Exception {
  ///Thrown when there is a auth exception
  const factory Exceptions.signUpException(String message, [String? devLogs]) =
      SignUpException;

  ///Thrown when there is a  exception in Sign Out
  const factory Exceptions.signOutException(String message, [String? devLogs]) =
      SignOutException;

  ///Thrown when there is a exception in Writing or Reading data from Remote Data Source
  const factory Exceptions.remoteDataSourceException(String message,
      [String? devLogs]) = RemoteDataSourceException;

  ///Thrown when there is a  exception in setting or getting custom claims of the current user
  const factory Exceptions.customClaimsException(String message,
      [String? devLogs]) = CustomClaimsException;

  ///Thrown when there is a  exception in Cache
  const factory Exceptions.cacheException(String message, [String? devLogs]) =
      CacheException;

  ///This is thrown when there is a  exception in Firebase
  const factory Exceptions.dataSourceException(String message,
      [String? devLogs]) = DataSourceException;

  ///This is thrown during errors in address

  const factory Exceptions.address(String message, [String? devLogs]) =
      AddressException;

  ///This is thrown during errors in routes

  const factory Exceptions.routes(String message, [String? devLogs]) =
      RoutesException;

  ///This is thrown during errors in trips

  const factory Exceptions.trips(String message, [String? devLogs]) =
      TripsException;

  ///This is thrown during errors in Google Map

  const factory Exceptions.map(String message, [String? devLogs]) =
      MapException;

  //! Location

  ///This is thrown when location services are not enabled

  const factory Exceptions.locationServicesNotEnabled(String message,
      [String? devLogs]) = LocationServicesNotEnabledException;

  ///This is thrown when there is a  exception when requesting location permission

  const factory Exceptions.locationPermissionRequest(String message,
      [String? devLogs]) = LocationPermissionRequestException;

  ///This is thrown when location permission is not given

  const factory Exceptions.locationPermissionNotGiven(String message,
      [String? devLogs]) = LocationPermissionNotGivenException;

  ///This is thrown when updating customer location

  const factory Exceptions.locationUpdate(String message, [String? devLogs]) =
      LocationUpdateException;

  //!

  const factory Exceptions.localStorageException(String message,
      [String? devLogs]) = LocalStorageException;
  // const factory Exceptions.passwordReset(String message, [String? devLogs]) =
  //     PasswordResetException;
  // const factory Exceptions.dynamicLinkException(String message,
  //     [String? devLogs]) = DynamicLinkException;
}
