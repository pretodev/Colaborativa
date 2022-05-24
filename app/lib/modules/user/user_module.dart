import 'package:flutter_modular/flutter_modular.dart';

import 'core/user_repository.dart';

class UserModule extends Module {
  @override
  final binds = [
    Bind.singleton((i) => UserRepository(), export: true),
  ];
}
