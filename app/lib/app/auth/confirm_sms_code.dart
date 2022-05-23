import '../../domain/auth/phone_auth_service.dart';

class ConfirmSmsCode {
  final PhoneAuthService _phoneAuth;

  ConfirmSmsCode({
    required PhoneAuthService phoneAuth,
  }) : _phoneAuth = phoneAuth;

  Future<void> call({
    required String smsCode,
    required String verificationId,
  }) {
    return _phoneAuth.confirmCode(
      smsCode: smsCode,
      verificationId: verificationId,
    );
  }
}
