import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_status.freezed.dart';

@freezed
class PhoneStatus with _$PhoneStatus {
  const PhoneStatus._();

  const factory PhoneStatus({
    required String verificationId,
    required String phoneNumber,
    required DateTime timestamp,
  }) = _PhoneStatus;

  static const maxSecondsTimeout = 60 * 2;
}
