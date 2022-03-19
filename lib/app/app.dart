import 'package:colaborativa_app/app/router/router.dart';
import 'package:flutter/material.dart';

import 'theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = AppRouter.instance;

    return MaterialApp.router(
      title: 'ColaborAtiva',
      theme: AppTheme.instance,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
