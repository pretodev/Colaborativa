import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_preferences.freezed.dart';

@freezed
class PhonePreferences with _$PhonePreferences {
  const PhonePreferences._();

  const factory PhonePreferences({
    required String verificationId,
    required String phoneNumber,
    required DateTime timestamp,
  }) = _PhonePreferences;

  static const maxSecondsTimeout = 60 * 2;
}
