import 'package:flutter_modular/flutter_modular.dart';

import 'app_model.dart';
import 'modules/auth/auth_module.dart';
import 'modules/home/home_module.dart';
import 'modules/user/user_module.dart';

class AppModule extends Module {
  @override
  final imports = [
    UserModule(),
  ];

  @override
  final binds = [
    Bind.singleton((i) => AppModel()),
  ];

  @override
  final routes = [
    ModuleRoute('/', module: AuthModule()),
    ModuleRoute('/home', module: HomeModule()),
  ];
}
