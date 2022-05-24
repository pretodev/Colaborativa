import 'package:flutter_modular/flutter_modular.dart';

import 'ui/home/home_page.dart';
import 'ui/menu/menu_page.dart';

class HomeModule extends Module {
  @override
  final binds = [];

  @override
  final routes = [
    ChildRoute('/', child: (context, args) => const HomePage()),
    ChildRoute('/menu', child: (context, args) => const MenuPage()),
  ];
}
