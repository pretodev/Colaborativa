import 'package:modx/modx.dart';

import '../../../domain/user/user.dart';

class ProfileStore {
  ProfileStore({
    required Rxn<UserUnregistered> rxUser,
  }) : _rxUser = rxUser;

  final _rxSavingProfile = RxBool(false);
  final Rxn<UserUnregistered> _rxUser;

  bool get isSavingProfile => _rxSavingProfile.value;
  set savingProfile(bool value) => _rxSavingProfile.value = value;

  UserUnregistered get user => _rxUser.value!;
}
