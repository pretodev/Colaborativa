import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/adapters/phone_auth.dart';
import '../data/entities/phone_auth_status.dart';
import '../data/entities/phone_preferences.dart';

class FirebasePhoneAuth implements PhoneAuth {
  FirebaseAuth get _auth => FirebaseAuth.instance;

  final _controller = StreamController<PhoneAuthStatus>();

  @override
  Stream<PhoneAuthStatus> get status => _controller.stream;

  @override
  Future<void> verifyPhoneNumber(
    String phoneNumber, {
    timeoutSeconds = 60,
  }) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: Duration(seconds: timeoutSeconds),
        verificationCompleted: (authCredential) async {
          await _auth.signInWithCredential(authCredential);
          _controller.add(const PhoneAuthStatus.success());
        },
        verificationFailed: (authException) {
          _controller.addError(authException);
        },
        codeSent: (verificationId, [code]) async {
          final preferences = PhonePreferences(
            verificationId: verificationId,
            phoneNumber: phoneNumber,
            timestamp: DateTime.now(),
          );
          await _savePreferences(preferences);
          _controller.add(PhoneAuthStatus.waitingCode(preferences));
        },
        codeAutoRetrievalTimeout: (verificationId) {
          //_controller.add(const PhoneAuthStatus.timeout());
        },
      );
    } catch (error) {
      _controller.addError(error);
      rethrow;
    }
  }

  @override
  Future<void> confirmCode(String code) {
    // TODO: implement confirmCode
    throw UnimplementedError();
  }

  @override
  Future<void> loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final phoneNumber = prefs.getString('phoneNumber');
    final verificationId = prefs.getString('verificationId');
    final timestamp = prefs.getInt('timestamp');
    if (phoneNumber == null || verificationId == null || timestamp == null) {
      return _controller.add(const PhoneAuthStatus.none());
    }
    final preferences = PhonePreferences(
      verificationId: verificationId,
      phoneNumber: phoneNumber,
      timestamp: DateTime.fromMillisecondsSinceEpoch(timestamp),
    );
    _controller.add(PhoneAuthStatus.waitingCode(preferences));
  }

  Future<void> _savePreferences(PhonePreferences preferences) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('phoneNumber', preferences.phoneNumber);
    await prefs.setString('verificationId', preferences.verificationId);
    await prefs.setInt(
      'timestamp',
      preferences.timestamp.millisecondsSinceEpoch,
    );
  }

  @override
  Future<void> clearPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('phoneNumber');
    await prefs.remove('verificationId');
    await prefs.remove('timestamp');
    _controller.add(const PhoneAuthStatus.none());
  }
}
