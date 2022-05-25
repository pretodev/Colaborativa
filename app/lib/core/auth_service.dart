import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as fa;
import 'package:shared_preferences/shared_preferences.dart';

import 'entities/auth_status.dart';
import 'entities/phone_preferences.dart';
import 'entities/user.dart';
import 'errors/errors.dart';

class AuthService {
  static const _phoneNumber = 'phone_number';
  static const _verificationId = 'verification_id';
  static const _timestamp = 'timestamp';

  final _auth = fa.FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  final _serviceController = StreamController<AuthStatus>();

  StreamController<PhonePreferences?>? _phoneController;
  StreamSubscription? _phoneSubscription;

  Future<void> _loadPhonePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final phoneNumber = prefs.getString(_phoneNumber);
    final verificationId = prefs.getString(_verificationId);
    final timestamp = prefs.getInt(_timestamp);
    if (phoneNumber == null || verificationId == null || timestamp == null) {
      return _phoneController?.add(null);
    }
    _phoneController?.add(
      PhonePreferences(
        verificationId: verificationId,
        phoneNumber: phoneNumber,
        timestamp: DateTime.fromMillisecondsSinceEpoch(timestamp),
      ),
    );
  }

  Future<void> _savePhonePreferences(PhonePreferences preferences) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_phoneNumber, preferences.phoneNumber);
    await prefs.setString(_verificationId, preferences.verificationId);
    await prefs.setInt(
      _timestamp,
      preferences.timestamp.millisecondsSinceEpoch,
    );
  }

  Stream<AuthStatus> get status {
    _auth.userChanges().listen((user) async {
      if (user == null) {
        _loadPhonePreferences();
        _phoneController ??= StreamController<PhonePreferences?>();
        _phoneSubscription = _phoneController?.stream.listen(
          (prefs) {
            if (prefs == null) {
              _serviceController.add(const AuthStatus.unauthenticated());
            } else {
              _serviceController.add(AuthStatus.waitingSmsCode(prefs));
            }
          },
          onError: _serviceController.addError,
        );
      } else {
        final doc = await _firestore.doc('users/${user.uid}').get();
        if (doc.exists) {
          final user = User(
            id: doc.id,
            name: doc.get('name') as String,
          );
          _serviceController.add(AuthStatus.authenticated(user));
        } else {
          _serviceController.add(const AuthStatus.unregistered());
        }
        await resetPhoneNumber();
        await _phoneSubscription?.cancel();
        await _phoneController?.close();
        _phoneController = null;
      }
    });

    return _serviceController.stream;
  }

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
      verificationFailed: (e) {
        if (e.code == 'invalid-phone-number') {
          _serviceController.addError(Errors.invalidPhoneNumber);
        } else {
          _serviceController.addError(e);
        }
      },
      codeSent: (verificationId, [code]) async {
        final status = PhonePreferences(
          verificationId: verificationId,
          phoneNumber: phoneNumber,
          timestamp: DateTime.now(),
        );
        await _savePhonePreferences(status);
        _phoneController?.add(status);
      },
      codeAutoRetrievalTimeout: (verificationId) {
        //_controller.add(const PhoneAuthStatus.timeout());
      },
    );
  }

  Future<void> confirmCode({
    required String verificationId,
    required String smsCode,
  }) async {
    try {
      await _auth.signInWithCredential(fa.PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      ));
    } on fa.FirebaseAuthException catch (e) {
      if (e.code == 'invalid-verification-code') {
        _serviceController.addError(Errors.invalidSmsCode);
      } else {
        _serviceController.addError(e);
      }
    }
  }

  Future<void> resetPhoneNumber() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_phoneNumber);
    await prefs.remove(_verificationId);
    await prefs.remove(_timestamp);
    _phoneController?.add(null);
  }

  Future<void> logout() {
    return _auth.signOut();
  }
}
