import 'package:flutter_modular/flutter_modular.dart';

import 'data/adapters/phone_auth.dart';
import 'data/adapters/user_datasource.dart';
import 'external/firebase_phone_auth.dart';
import 'external/firebase_user_datasource.dart';
import 'ui/pages/confirm_code_page.dart';
import 'ui/pages/send_phone_page.dart';
import 'ui/pages/splash_page.dart';
import 'viewmodels/phone_auth_viewmodel.dart';
import 'viewmodels/user_status_viewmodel.dart';

class UserModule extends Module {
  @override
  final binds = [
    Bind.lazySingleton<PhoneAuth>(
      (_) => FirebasePhoneAuth(),
      export: true,
    ),
    Bind.lazySingleton<UserDatasource>(
      (_) => FirebaseUserDatasource(),
      export: true,
    ),
    Bind.lazySingleton(
      (i) => UserStatusViewmodel(
        phoneAuth: i(),
        userDatasource: i(),
      ),
      export: true,
    ),
    Bind.lazySingleton(
      (i) => PhoneAuthViewmodel(
        phoneAuth: i(),
      ),
    ),
  ];

  @override
  final routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => const SplashPage(),
    ),
    ChildRoute(
      '/send_phone',
      child: (_, args) => const SendPhonePage(),
    ),
    ChildRoute(
      '/confirm_code',
      child: (_, args) => ConfirmCodePage(preferences: args.data),
    ),
  ];
}
