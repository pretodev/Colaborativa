import 'package:colaborativa_app/domain/user/user_repository.dart';
import 'package:colaborativa_app/presenter/app_store.dart';
import 'package:colaborativa_app/presenter/routes/routes.dart';
import 'package:modx/modx.dart';

class SplashController extends ModxController with ModxAppStoreMixin<AppStore> {
  final UserRepository _userRepository;

  SplashController({
    required UserRepository userRepository,
  }) : _userRepository = userRepository;

  @override
  void onInit() {
    super.onInit();
    loadUser();
  }

  void loadUser() async {
    final user = await _userRepository.currentUser();
    user.map(
      unauthenticated: (data) {
        view.offAndToNamed(Routes.verifyPhoneNumber);
      },
      unregistered: (data) {
        app.userUnregistered = data;
        view.offAndToNamed(Routes.register);
      },
      registered: (data) async {
        app.userRegistered = data;
        _userRepository.registerAccess();
        view.offAndToNamed(Routes.home);
      },
    );
  }
}
