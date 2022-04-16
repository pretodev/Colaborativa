import 'package:modx/modx.dart';

import '../../routes/routes.dart';
import 'home_store.dart';

class HomeController extends ModxController<HomeStore> {
  void openMenu() {
    view.toNamed(Routes.menu);
  }

  void openChat() {
    view.toNamed(Routes.chat);
  }
}
