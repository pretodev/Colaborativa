import 'package:modx/modx.dart';

import '../../../app/user/save_profile.dart';
import '../../../domain/user/user_profile.dart';
import 'profile_store.dart';

class ProfileController extends ModxController<ProfileStore> {
  final SaveProfile _saveProfile;

  ProfileController({
    required SaveProfile saveProfile,
  }) : _saveProfile = saveProfile;

  void saveProfile(UserProfile profile) async {
    store.savingProfile = true;
    await _saveProfile(profile, userId: store.user.id);
  }
}
