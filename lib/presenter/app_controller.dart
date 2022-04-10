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
    _getAuthStatus().listen((status) {
      status.whenOrNull(
        authenticated: (user) {
          store.userRegistered = user;
          view.offAndToNamed(Routes.home);
        },
        unauthenticated: () {
          view.offAndToNamed(Routes.verifyPhoneNumber);
        },
        waitingSmsCode: (phoneStatus) {
          store.phoneStatus = phoneStatus;
          if (view.currentRoute != Routes.confirmSmsCode) {
            view.offAndToNamed(Routes.confirmSmsCode);
          }
        },
        unregistered: (user) {
          store.userUnregistered = user;
          view.offAndToNamed(Routes.register);
        },
      );
    });
  }
}
