import 'package:flutter/material.dart';

import 'modules/auth/auth.dart';
import 'modules/chat/ui/chat/chat_view.dart';
import 'modules/feeling/feeling.dart';
import 'modules/home/home.dart';
import 'presenter/routes/routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colaborativa',
      initialRoute: Routes.splash,
      routes: {
        Routes.splash: splashPage,
        Routes.home: homePage,
        Routes.menu: menuPage,
        Routes.fellingDiary: shareFeelingDiaryPage,
        Routes.chat: (context) => const ChatView(),
      },
    );
  }
}
