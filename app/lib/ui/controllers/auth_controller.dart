import 'package:flutter/widgets.dart';

import '../../core/auth_service.dart';
import '../../core/entities/auth_status.dart';
import '../../core/entities/phone_preferences.dart';
import '../../core/entities/user.dart';
import '../../utils/strings/strings.dart';

class AuthController extends ChangeNotifier {
  AuthController({required AuthService authService})
      : _authService = authService {
    loadUser();
  }

  final AuthService _authService;

  AuthStatus _status = const AuthStatus.none();
  AuthStatus get status => _status;

  String? _error;
  String? get error => _error;

  PhonePreferences? get phonePreferences => status.whenOrNull(
        waitingSmsCode: (value) => value,
      );

  User? get user => status.whenOrNull(
        authenticated: (value) => value,
      );

  void loadUser() {
    _authService.status.listen((status) {
      _error = null;
      _status = status;
      notifyListeners();
    }, onError: (error) {
      _error = error.toString();
      notifyListeners();
    });
  }

  void verifyPhoneNumber(String phone) async {
    final phoneNumber = extractNumbers(phone);
    await _authService.verifyPhoneNumber(phoneNumber);
  }

  void requestNewSmsCode() async {
    await _authService.verifyPhoneNumber(phonePreferences!.phoneNumber);
  }

  void resetNumber() {
    _authService.resetPhoneNumber();
  }

  void confirmSmsCode(String smsCode) async {
    await _authService.confirmCode(
      smsCode: smsCode,
      verificationId: phonePreferences!.verificationId,
    );
  }

  void logout() {
    _authService.logout();
  }
}
