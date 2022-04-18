import 'dart:async';

import 'package:colaborativa_app/domain/auth/failures.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../domain/auth/phone_auth_service.dart';
import '../domain/auth/phone_status.dart';

class FirebasePhoneAuthService implements PhoneAuthService {
  static const _phoneNumber = 'phone_number';
  static const _verificationId = 'verification_id';
  static const _timestamp = 'timestamp';

  FirebaseAuth get _auth => FirebaseAuth.instance;

  final _controller = StreamController<PhoneStatus?>();

  @override
  Stream<PhoneStatus?> get status {
    _loadStatus();
    return _controller.stream;
  }

  @override
  Future<void> verifyPhoneNumber(
    String phoneNumber, {
    timeoutSeconds = 60,
  }) async {
    final phoneNumberRaw = phoneNumber.replaceAll(RegExp(r'[^0-9]'), '');
    await _auth.verifyPhoneNumber(
      phoneNumber: '+55$phoneNumberRaw',
      timeout: Duration(seconds: timeoutSeconds),
      verificationCompleted: (authCredential) async {
        await _auth.signInWithCredential(authCredential);
      },
      verificationFailed: (_) {
        _controller.addError(PhoneAuthFailure());
      },
      codeSent: (verificationId, [code]) async {
        final status = PhoneStatus(
          verificationId: verificationId,
          phoneNumber: phoneNumber,
          timestamp: DateTime.now(),
        );
        await _saveStatus(status);
        _controller.add(status);
      },
      codeAutoRetrievalTimeout: (verificationId) {
        //_controller.add(const PhoneAuthStatus.timeout());
      },
    );
  }

  @override
  Future<void> confirmCode({
    required String verificationId,
    required String smsCode,
  }) async {
    await _auth.signInWithCredential(PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    ));
  }

  Future<void> _loadStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final phoneNumber = prefs.getString(_phoneNumber);
    final verificationId = prefs.getString(_verificationId);
    final timestamp = prefs.getInt(_timestamp);
    if (phoneNumber == null || verificationId == null || timestamp == null) {
      return _controller.add(null);
    }
    _controller.add(
      PhoneStatus(
        verificationId: verificationId,
        phoneNumber: phoneNumber,
        timestamp: DateTime.fromMillisecondsSinceEpoch(timestamp),
      ),
    );
  }

  Future<void> _saveStatus(PhoneStatus preferences) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_phoneNumber, preferences.phoneNumber);
    await prefs.setString(_verificationId, preferences.verificationId);
    await prefs.setInt(
      _timestamp,
      preferences.timestamp.millisecondsSinceEpoch,
    );
  }

  @override
  Future<void> reset() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_phoneNumber);
    await prefs.remove(_verificationId);
    await prefs.remove(_timestamp);
    _controller.add(null);
  }
}
