import 'package:modx/modx.dart';

import '../../../app/user/save_profile.dart';
import '../../app_store.dart';
import '../../routes/routes.dart';
import 'profile_controller.dart';
import 'profile_store.dart';
import 'profile_view.dart';

class ProfilePage extends ModxPage<AppStore> {
  @override
  final route = Routes.register;

  @override
  final view = const ProfileView();

  @override
  void binding(i) {
    // Add others dependencies
    bind(SaveProfile(userRepository: i()));
    bind(ProfileStore());
    bind(ProfileController(saveProfile: i()));
  }
}
