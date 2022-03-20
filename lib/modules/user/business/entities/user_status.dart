import 'package:freezed_annotation/freezed_annotation.dart';

import 'phone_preferences.dart';

part 'user_status.freezed.dart';

@freezed
class UserStatus with _$UserStatus {
  const UserStatus._();

  const factory UserStatus.none() = _None;

  const factory UserStatus.authenticated() = _Authenticated;

  const factory UserStatus.unauthenticated() = _Unauthenticated;

  const factory UserStatus.waitingCode(PhonePreferences preferences) =
      _WaitingCode;
}
