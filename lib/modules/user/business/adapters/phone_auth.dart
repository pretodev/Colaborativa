import '../entities/phone_auth_status.dart';

abstract class PhoneAuth {
  const PhoneAuth();

  Stream<PhoneAuthStatus> verifyPhoneNumber(
    String phoneNumber, {
    int timeoutSeconds,
  });
}
