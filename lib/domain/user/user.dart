import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User.unregistered({
    required String id,
  }) = UserUnregistered;

  const factory User.registered({
    required String id,
    required String name,
    required String email,
  }) = UserRegistered;

  bool get isUnregistered => this is UserUnregistered;

  bool get isRegistered => this is UserRegistered;
}
