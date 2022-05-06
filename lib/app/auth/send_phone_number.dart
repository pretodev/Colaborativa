import '../../domain/auth/phone_auth_service.dart';

class SendPhoneNumber {
  final PhoneAuthService _phoneAuth;

  SendPhoneNumber({
    required PhoneAuthService phoneAuth,
  }) : _phoneAuth = phoneAuth;

  Future<void> call(String phoneNumber) {
    return _phoneAuth.verifyPhoneNumber(phoneNumber);
  }
}
