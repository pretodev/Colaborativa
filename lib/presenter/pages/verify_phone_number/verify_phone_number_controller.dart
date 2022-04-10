import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../../../app/auth/send_phone_number.dart';
import '../../../utils/strings/strings.dart' as strings;
import 'verify_phone_number_store.dart';

class VerifyPhoneNumberController
    extends ModxController<VerifyPhoneNumberStore> {
  VerifyPhoneNumberController({required SendPhoneNumber sendPhoneNumber})
      : _sendPhoneNumber = sendPhoneNumber;

  final SendPhoneNumber _sendPhoneNumber;

  final phone = TextEditingController();
  final form = GlobalKey<FormState>();

  void verifyPhoneNumber() async {
    if (!form.currentState!.validate()) {
      return;
    }
    store.rxPhoneNumberChecking.value = true;
    final phoneNumber = strings.extractNumbers(phone.text);
    await _sendPhoneNumber(phoneNumber);
  }
}
