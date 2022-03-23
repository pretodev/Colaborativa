import 'package:flutter_modular/flutter_modular.dart';

import '../modules/user/user_module.dart';

class AppModule extends Module {
  @override
  final imports = [
    UserModule(),
  ];

  @override
  final binds = [];

  @override
  final routes = [
    ModuleRoute(Modular.initialRoute, module: UserModule()),
  ];
}
