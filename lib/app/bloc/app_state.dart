part of 'app_bloc.dart';

enum AppStatus {
  authenticated,
  unauthenticated,
}

@freezed
class AppState with _$AppState {
  const factory AppState(
      {@Default(AppStatus.unauthenticated) AppStatus status}) = _AppState;
}
