import '../entities/phone_auth_status.dart';

abstract class PhoneAuth {
  const PhoneAuth();

  static const timeoutSeconds = 60 * 2;

  Future<void> verifyPhoneNumber(
    String phoneNumber, {
    int timeoutSeconds,
  });

  Future<void> confirmCode({
    required String verificationId,
    required String smsCode,
  });

  Future<void> loadPreferences();

  Future<void> clearPreferences();

  Stream<PhoneAuthStatus> get status;
}
