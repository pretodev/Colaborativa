import 'package:modx/modx.dart';

import '../../routes/routes.dart';
import 'menu_controller.dart';
import 'menu_store.dart';
import 'menu_view.dart';

class MenuPage extends ModxPage {
  @override
  final route = Routes.menu;

  @override
  final view = const MenuView();

  @override
  void binding(i) {
    // Add others dependencies
    bind(MenuStore());
    bind(MenuController());
  }
}
