import 'package:modx/modx.dart';

import '../../../domain/user/user.dart';
import '../../app_store.dart';

class HomeStore with ModxAppStoreMixin<AppStore> {
  UserRegistered get user => app.userRegistered!;
}
