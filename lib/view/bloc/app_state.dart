part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.none() = _None;

  const factory AppState.starting() = _AppStarting;

  const factory AppState.authenticated(UserRegistered user) = _Authenticated;

  const factory AppState.unregistered(UserUnregistered user) = _Unregistered;

  const factory AppState.waitingSmsCode(PhoneStatus status) = _WaitingSmsCode;

  const factory AppState.unauthenticated() = _Unauthenticated;
}
