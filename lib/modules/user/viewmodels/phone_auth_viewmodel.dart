import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_triple/mobx_triple.dart';

import '../data/adapters/phone_auth.dart';
import '../data/entities/phone_auth_status.dart';

class PhoneAuthViewmodel extends MobXStore<Exception, PhoneAuthStatus> {
  static PhoneAuthViewmodel get instance => Modular.get();

  final PhoneAuth _phoneAuth;

  PhoneAuthViewmodel({required PhoneAuth phoneAuth})
      : _phoneAuth = phoneAuth,
        super(const PhoneAuthStatus.none());

  void verifyPhoneNumber(String phoneNumber) async {
    try {
      setLoading(true);
      await _phoneAuth.verifyPhoneNumber(phoneNumber);
    } on Exception {
      setLoading(false);
      rethrow;
    }
  }

  void confirmCode({
    required String verificationId,
    required String smsCode,
  }) async {
    try {
      setLoading(true);
      await _phoneAuth.confirmCode(
        smsCode: smsCode,
        verificationId: verificationId,
      );
    } on Exception {
      setLoading(false);
      rethrow;
    }
  }

  void reset() async {
    setLoading(true);
    await _phoneAuth.clearPreferences();
    setLoading(false);
  }
}
