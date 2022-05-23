import 'package:colaborativa_app/app/auth/signout.dart';
import 'package:modx/modx.dart';

import 'menu_store.dart';

class MenuController extends ModxController<MenuStore> {
  final Signout _signout;

  MenuController({
    required Signout signout,
  }) : _signout = signout;

  void signout() {
    _signout();
  }
}
