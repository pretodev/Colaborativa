import 'package:mobx_triple/mobx_triple.dart';

import '../data/adapters/phone_auth.dart';
import '../data/entities/phone_auth_status.dart';

class PhoneAuthViewmodel extends MobXStore<Exception, PhoneAuthStatus> {
  final PhoneAuth _phoneAuth;

  PhoneAuthViewmodel({required PhoneAuth phoneAuth})
      : _phoneAuth = phoneAuth,
        super(const PhoneAuthStatus.none());

  void verifyPhoneNumber(String phoneNumber) async {
    await _phoneAuth.verifyPhoneNumber(phoneNumber);
  }

  void confirmCode(String code) async {
    await _phoneAuth.confirmCode(code);
  }

  void reset() async {
    await _phoneAuth.clearPreferences();
  }
}
