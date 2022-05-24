import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modules/auth/auth.dart';
import 'modules/auth/core/auth_service.dart';
import 'modules/auth/ui/verify_phone_number/verify_phone_number_view.dart';
import 'modules/chat/ui/chat/chat_view.dart';
import 'modules/feeling/feeling.dart';
import 'modules/home/home.dart';
import 'presenter/routes/routes.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final _navigator = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    final auth = context.read<AuthService>();
    auth.status.listen((status) {
      status.whenOrNull(
        unauthenticated: () {
          _navigator.currentState?.pushNamedAndRemoveUntil(
            Routes.verifyPhoneNumber,
            (route) => false,
          );
        },
        authenticated: () {},
        unregistered: () {},
        waitingSmsCode: (prefs) {},
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colaborativa',
      initialRoute: Routes.splash,
      navigatorKey: _navigator,
      routes: {
        Routes.splash: splashPage,
        Routes.home: homePage,
        Routes.menu: menuPage,
        Routes.fellingDiary: shareFeelingDiaryPage,
        Routes.chat: (context) => const ChatView(),
        Routes.verifyPhoneNumber: (context) => const VerifyPhoneNumberView(),
      },
    );
  }
}
