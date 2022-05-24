import '../../core/auth_service.dart';
import '../../core/entities/auth_status.dart';
import '../../utils/easy_notifier.dart';
import '../../utils/strings/strings.dart';

class AuthModel extends EasyNotifier {
  AuthModel({
    required AuthService authService,
  }) : _authService = authService {
    _listen();
  }

  final AuthService _authService;

  AuthStatus? _status;
  AuthStatus? get status => _status;

  void _listen() {
    _authService.status.listen((status) {
      _status = status;
      notifyListeners();
    });
  }

  void verifyPhoneNumber(String phone) async {
    final phoneNumber = extractNumbers(phone);
    await _authService.verifyPhoneNumber(phoneNumber);
  }
}
