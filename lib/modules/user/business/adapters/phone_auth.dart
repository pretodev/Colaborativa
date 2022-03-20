import '../entities/phone_auth_status.dart';

abstract class PhoneAuth {
  const PhoneAuth();

  static const timeoutSeconds = 60 * 2;

  Future<void> verifyPhoneNumber(
    String phoneNumber, {
    int timeoutSeconds,
  });

  Future<void> confirmCode(String code);

  Future<void> loadPreferences();

  Stream<PhoneAuthStatus> get status;
}
