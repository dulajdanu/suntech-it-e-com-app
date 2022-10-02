import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  ///Auth Failure is returned when there is a exception is authentication [login,sign up]
  const factory Failure.authenticationFailure(String message) =
      AuthenticationFailure;

  ///Signout Failure is returned when there is a SignOutException
  const factory Failure.signOutFailure(String message) = SignOutFailure;

  ///Custom claims failure is returned when there is a CustomClaimsException

  const factory Failure.customClaimsFailure(String message) =
      CustomClaimsFailure;

  ///Cache failure is returned when there is a exception in Cache

  const factory Failure.cacheFailure(String message) = CacheFailure;

  ///Data source failure is returned when there is a  DataSourceException
  const factory Failure.dataSourceFailure(String message) = DataSourceFailure;

  ///Data source failure is returned when there is a  RemoteDataSourceException
  const factory Failure.remoteDataSourceFailure(String message) =
      RemoteDataSourceFailure;

  ///AddressFailure  is returned when there is a  AddressException
  const factory Failure.address(String message) = AddressFailure;

  ///RoutesFailure  is returned when there is a  RoutesException
  const factory Failure.routes(String message) = RoutesFailure;

  ///TripsFailure  is returned when there is a  TripsException
  const factory Failure.trips(String message) = TripsFailure;

  //!Location
  ///LocationRequestFailure failure is returned when there is a  LocationRequestException
  const factory Failure.locationRequest(String message) =
      LocationRequestFailure;

  ///LocationPermission failure is returned when there is a  LocationPermissionException
  const factory Failure.locationPermission(String message) =
      LocationPermissionFailure;

  ///LocationUpdate failure is returned when there is a  LocationUpdateException
  const factory Failure.locationUpdate(String message) = LocationUpdateFailure;
  //!

  //! Map
  ///MapFailure is returned when there is a  MapException
  const factory Failure.map(String message) = MapFailure;

  //!

  const factory Failure.localStorageFailure(String message) =
      LocalStorageFailure;
  // const factory Failure.passwordReset(String message) = PasswordResetFailure;
  // const factory Failure.dynamicLinkFailure(String message) = DynamicLinkFailure;
  // const factory Failure.imagePickerFailure(String message) = ImagePickerFailure;
  // const factory Failure.imageUploadFailure(String message) = ImageUploadFailure;
  // const factory Failure.userDocumentFailure(String message) =
  //     UserDocumentFailure;
  // const factory Failure.notificationPermissionDeniedFailure(String message) =
  //     NotificationPermissionDeniedFailure;
  // const factory Failure.notificationPermissionFailure(String message) =
  //     NotificationPermissionFailure;
  // const factory Failure.appVersionFailure(String message) = AppVersionFailure;
  // const factory Failure.emailVerificationFailure(String message) =
  //     EmailVerificationFailure;
}
