part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.loadUser() = _AppLoadUser;

  const factory AppEvent.changeAuthStatus(AuthStatus status) =
      _AppChangeAuthStatus;
}
