import 'package:flutter_modular/flutter_modular.dart';

import 'ui/splash/splash_page.dart';

class AuthModule extends Module {
  @override
  final binds = [];

  @override
  final routes = [
    ChildRoute('/', child: (context, args) => const SplashPage()),
  ];
}
