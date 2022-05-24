import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/auth_service.dart';
import 'navigation/routes.dart';
import 'views/chat/chat_view.dart';
import 'views/home_view.dart';
import 'views/menu_view.dart';
import 'views/share_feeling_diary/share_feeling_diary_view.dart';
import 'views/splash_view.dart';
import 'views/verify_phone_number/verify_phone_number_view.dart';

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
        Routes.splash: (context) => const SplashView(),
        Routes.home: (context) => const HomeView(),
        Routes.menu: (context) => const MenuView(),
        Routes.fellingDiary: (context) => const ShareFeelingDiaryView(),
        Routes.chat: (context) => const ChatView(),
        Routes.verifyPhoneNumber: (context) => const VerifyPhoneNumberView(),
      },
    );
  }
}
