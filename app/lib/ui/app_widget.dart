import 'package:colaborativa_app/core/notification_service.dart';
import 'package:colaborativa_app/core/user_service.dart';
import 'package:colaborativa_app/ui/controllers/chat_controller.dart';
import 'package:colaborativa_app/ui/views/news_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/context_extension.dart';
import 'controllers/app_controller.dart';
import 'controllers/auth_controller.dart';
import 'navigation/routes.dart';
import 'theme/theme.dart';
import 'views/achievements/achievements_view.dart';
import 'views/chat/chat_view.dart';
import 'views/chat_message_selector_view.dart';
import 'views/confirm_sms_code/confirm_sms_code_view.dart';
import 'views/home_view.dart';
import 'views/menu/menu_view.dart';
import 'views/profile_editor/profile_editor_view.dart';
import 'views/rank/rank_view.dart';
import 'views/share_feeling_diary_view.dart';
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
    final app = context.read<AppController>();
    app.load();
    final auth = context.read<AuthController>();
    auth.addListener(() {
      auth.status.whenOrNull(
        unauthenticated: () {
          _navigateTo(Routes.verifyPhoneNumber);
        },
        waitingSmsCode: (prefs) {
          _navigateTo(Routes.confirmSmsCode);
        },
        unregistered: () {
          _navigateTo(Routes.register);
        },
        authenticated: (_) {
          context.read<NotificationService>().subscribe();
          context.read<UserService>().registerAccess();
          context.read<ChatController>().load();
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
      theme: AppTheme.instance,
      routes: {
        Routes.splash: (ctx) => const SplashView(),
        Routes.verifyPhoneNumber: (ctx) => const VerifyPhoneNumberView(),
        Routes.confirmSmsCode: (ctx) => const ConfirmSmsCodeView(),
        Routes.home: (ctx) => const HomeView(),
        Routes.menu: (ctx) => const MenuView(),
        Routes.fellingDiary: (ctx) =>
            ShareFeelingDiaryView(feeling: ctx.args()),
        Routes.chat: (ctx) => const ChatView(),
        Routes.rank: (ctx) => const RankView(),
        Routes.achievements: (ctx) => const AchievementsView(),
        Routes.profile: (ctx) => const ProfileEditorView(),
        Routes.register: (ctx) => const ProfileEditorView(register: true),
        Routes.chatMessageSelector: (ctx) =>
            ChatMessageSelectorView(messageType: ctx.args()),
        Routes.news: (ctx) => const NewsView(),
      },
    );
  }
}
