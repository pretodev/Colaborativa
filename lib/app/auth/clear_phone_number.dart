import '../../domain/auth/phone_auth_service.dart';

class ClearPhoneNumber {
  final PhoneAuthService _phoneAuth;

  ClearPhoneNumber({required PhoneAuthService phoneAuth})
      : _phoneAuth = phoneAuth;

  Future<void> call() {
    return _phoneAuth.reset();
  }
}
