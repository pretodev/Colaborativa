import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../../../app/auth/send_phone_number.dart';
import '../../../utils/strings/strings.dart' as strings;
import 'verify_phone_number_store.dart';

class VerifyPhoneNumberController
    extends ModxController<VerifyPhoneNumberStore> {
  VerifyPhoneNumberController({
    required SendPhoneNumber sendPhoneNumber,
  }) : _sendPhoneNumber = sendPhoneNumber;

  final SendPhoneNumber _sendPhoneNumber;

  final phone = TextEditingController();
  final form = GlobalKey<FormState>();

  @override
  void onClose() {
    phone.dispose();
    super.onClose();
  }

  void verifyPhoneNumber() async {
    try {
      store.app.clearAuthError();
      if (!form.currentState!.validate()) {
        return;
      }
      store.phoneNumberChecking = true;
      final phoneNumber = strings.extractNumbers(phone.text);
      once(store.app.rxAuthError, (_) => store.phoneNumberChecking = false);
      await _sendPhoneNumber(phoneNumber);
    } catch (e) {
      print(e);
    }
  }
}
