import 'package:modx/modx.dart';

import '../../../domain/user/user.dart';
import '../../app_store.dart';

class ProfileStore with ModxAppStoreMixin<AppStore> {
  final _rxSavingProfile = RxBool(false);

  bool get isSavingProfile => _rxSavingProfile.value;
  set savingProfile(bool value) => _rxSavingProfile.value = value;

  UserUnregistered get user => app.userUnregistered!;
}
