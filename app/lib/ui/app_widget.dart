import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/auth_controller.dart';
import 'navigation/routes.dart';
import 'views/chat/chat_view.dart';
import 'views/confirm_sms_code/confirm_sms_code_view.dart';
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
  final _navKey = GlobalKey<NavigatorState>();

  var _currentRoute = Routes.splash;

  void _navigateTo(String route) {
    final nav = _navKey.currentState!;
    if (_currentRoute != route) {
      _currentRoute = route;
      nav.pushNamedAndRemoveUntil(route, (route) => false);
    }
  }

  @override
  void initState() {
    super.initState();
    final auth = context.read<AuthController>();
    auth.addListener(() {
      auth.status.whenOrNull(
        unauthenticated: () {
          _navigateTo(Routes.verifyPhoneNumber);
        },
        waitingSmsCode: (prefs) {
          _navigateTo(Routes.confirmSmsCode);
        },
        unregistered: () {},
        authenticated: () {
          _navigateTo(Routes.home);
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colaborativa',
      initialRoute: Routes.splash,
      navigatorKey: _navKey,
      routes: {
        Routes.splash: (context) => const SplashView(),
        Routes.verifyPhoneNumber: (context) => const VerifyPhoneNumberView(),
        Routes.confirmSmsCode: (context) => const ConfirmSmsCodeView(),
        Routes.home: (context) => const HomeView(),
        Routes.menu: (context) => const MenuView(),
        Routes.fellingDiary: (context) => const ShareFeelingDiaryView(),
        Routes.chat: (context) => const ChatView(),
      },
    );
  }
}
