import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_auth_status.freezed.dart';

@freezed
class PhoneAuthStatus with _$PhoneAuthStatus {
  const PhoneAuthStatus._();

  const factory PhoneAuthStatus.none() = _None;

  const factory PhoneAuthStatus.success() = _Success;

  const factory PhoneAuthStatus.waitingCode() = _WaitingCode;

  const factory PhoneAuthStatus.timeout() = _Timeout;
}
