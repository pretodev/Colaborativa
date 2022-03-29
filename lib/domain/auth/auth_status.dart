import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user.dart';
import 'phone_status.dart';

part 'auth_status.freezed.dart';

@freezed
class AuthStatus with _$AuthStatus {
  const AuthStatus._();

  const factory AuthStatus.none() = _None;

  const factory AuthStatus.authenticated(UserRegistered user) = _Authenticated;

  const factory AuthStatus.unregistered(UserUnregistered user) = _Unregistered;

  const factory AuthStatus.unauthenticated() = _Unauthenticated;

  const factory AuthStatus.waitingSmsCode(PhoneStatus status) = _WaitingSmsCode;

  bool get isAuthenticated => this is _Authenticated;

  bool get isUnauthenticated => this is _Unauthenticated;

  bool get isWaitingCode => this is _WaitingSmsCode;

  bool get isUnregistered => this is _Unregistered;
}
