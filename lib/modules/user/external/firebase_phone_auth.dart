import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

import '../business/adapters/phone_auth.dart';
import '../business/entities/phone_auth_status.dart';

class FirebasePhoneAuth implements PhoneAuth {
  FirebaseAuth get _auth => FirebaseAuth.instance;

  @override
  Stream<PhoneAuthStatus> verifyPhoneNumber(
    String phoneNumber, {
    timeoutSeconds = 60,
  }) {
    final controller = StreamController<PhoneAuthStatus>();
    _auth
        .verifyPhoneNumber(
          phoneNumber: phoneNumber,
          timeout: Duration(seconds: timeoutSeconds),
          verificationCompleted: (authCredential) async {
            await _auth.signInWithCredential(authCredential);
            controller.add(const PhoneAuthStatus.success());
          },
          verificationFailed: (authException) {
            controller.addError(authException);
          },
          codeSent: (verificationId, [code]) {
            controller.add(const PhoneAuthStatus.waitingCode());
          },
          codeAutoRetrievalTimeout: (verificationId) {
            controller.add(const PhoneAuthStatus.timeout());
          },
        )
        .catchError((error) => controller.addError(error));
    return controller.stream;
  }
}
