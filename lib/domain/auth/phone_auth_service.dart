import 'phone_status.dart';

abstract class PhoneAuthService {
  const PhoneAuthService();

  static const timeoutSeconds = 60 * 2;

  Future<void> verifyPhoneNumber(
    String phoneNumber, {
    int timeoutSeconds,
  });

  Future<void> confirmCode({
    required String verificationId,
    required String smsCode,
  });

  Future<void> reset();

  Stream<PhoneStatus?> get status;
}
