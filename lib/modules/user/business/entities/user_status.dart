import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_status.freezed.dart';

@freezed
class UserStatus with _$UserStatus {
  const UserStatus._();

  const factory UserStatus.none() = _None;

  const factory UserStatus.authenticated() = _Authenticated;

  const factory UserStatus.unauthenticated() = _Unauthenticated;
}
