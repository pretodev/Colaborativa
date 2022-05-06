import 'package:modx/modx.dart';

import '../app/auth/get_auth_status.dart';
import 'app_store.dart';
import 'routes/routes.dart';

class AppController extends ModxController<AppStore> {
  final GetAuthStatus _getAuthStatus;

  AppController({
    required GetAuthStatus getAuthStatus,
  }) : _getAuthStatus = getAuthStatus;

  @override
  void onInit() {
    super.onInit();
    print('INIT APP CONTROLLER');
    _getAuthStatus().listen((status) {
      status.whenOrNull(
        authenticated: (user) {
          store.userRegistered = user;
          view.offAllNamed(Routes.home);
        },
        unauthenticated: () {
          view.offAllNamed(Routes.verifyPhoneNumber);
        },
        waitingSmsCode: (phoneStatus) {
          store.phoneStatus = phoneStatus;
          if (view.currentRoute != Routes.confirmSmsCode) {
            view.offAllNamed(Routes.confirmSmsCode);
          }
        },
        unregistered: (user) {
          store.userUnregistered = user;
          view.offAllNamed(Routes.register);
        },
      );
    }, onError: (error) {
      store.authError = error;
    });
  }
}
