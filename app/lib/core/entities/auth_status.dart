import 'package:freezed_annotation/freezed_annotation.dart';

import 'phone_preferences.dart';

part 'auth_status.freezed.dart';

@freezed
class AuthStatus with _$AuthStatus {
  const AuthStatus._();

  const factory AuthStatus.none() = _None;

  const factory AuthStatus.authenticated() = _Authenticated;

  const factory AuthStatus.unregistered() = _Unregistered;

  const factory AuthStatus.unauthenticated() = _Unauthenticated;

  const factory AuthStatus.waitingSmsCode(PhonePreferences prefs) =
      _WaitingSmsCode;
}
