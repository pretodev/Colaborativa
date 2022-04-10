import 'dart:async';

import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../../../app/auth/confirm_sms_code.dart';
import '../../../app/auth/send_phone_number.dart';
import 'confirm_sms_code_store.dart';

class ConfirmSmsCodeController extends ModxController<ConfirmSmsCodeStore> {
  ConfirmSmsCodeController({
    required SendPhoneNumber sendPhoneNumber,
    required ConfirmSmsCode confirmSmsCode,
  })  : _sendPhoneNumber = sendPhoneNumber,
        _confirmSmsCode = confirmSmsCode;

  final SendPhoneNumber _sendPhoneNumber;
  final ConfirmSmsCode _confirmSmsCode;

  Timer? timer;
  final smsCode = TextEditingController();
  final smsCodeFocus = FocusNode();

  @override
  void onInit() {
    super.onInit();
    ever(store.rxPhoneStatus, (_) {
      setTimeout(store.phoneStatus.timestamp);
    });
    setTimeout(store.phoneStatus.timestamp);
    smsCode.addListener(confirmSmsCode);
  }

  @override
  void onClose() {
    smsCode.dispose();
    timer?.cancel();
    super.onClose();
  }

  void setTimeout(DateTime startTimestamp, {int timeoutSeconds = 60}) {
    store.smsCodeRequesting = false;
    final seconds =
        DateTime.now().difference(startTimestamp).inSeconds - timeoutSeconds;
    store.timeoutSeconds = seconds < timeoutSeconds ? seconds.abs() : 0;
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      store.timeoutSeconds -= 1;
      if (store.isTimeout) {
        timer.cancel();
      }
    });
  }

  void confirmSmsCode() async {
    if (smsCode.text.length < 6) {
      return;
    }
    store.smsCodeChecking = true;
    await _confirmSmsCode(
      smsCode: smsCode.text,
      verificationId: store.phoneStatus.verificationId,
    );
  }

  void requestNewSmsCode() async {
    store.smsCodeRequesting = true;
    await _sendPhoneNumber(store.phoneStatus.phoneNumber);
  }

  void resetPhoneNumber() async {}
}
