part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.authStatusChanged(User user) = _AuthStatusChanged;

  const factory AppEvent.logoutRequested() = _LogoutRequested;

  ///This will get the user token from flutterSecureStorage
  const factory AppEvent.getToken() = _GetToken;
}
