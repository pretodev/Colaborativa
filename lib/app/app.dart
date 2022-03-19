import 'package:flutter/material.dart';

import 'provider/provider.dart';
import 'router/router.dart';
import 'theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = AppRouter.instance;
    return AppProvider(
      child: MaterialApp.router(
        title: 'ColaborAtiva',
        theme: AppTheme.instance,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
      ),
    );
  }
}
