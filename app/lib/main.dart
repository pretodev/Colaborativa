import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/achievement_service.dart';
import 'core/activities_service.dart';
import 'core/auth_service.dart';
import 'core/chat_service.dart';
import 'core/feeling_service.dart';
import 'core/score_service.dart';
import 'firebase_options.dart';
import 'ui/app_widget.dart';
import 'ui/controllers/auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (context) => FeelingService(),
          lazy: true,
        ),
        Provider(
          create: (context) => ActivitiesServices(),
          lazy: true,
        ),
        Provider(
          create: (context) => ChatService(),
          lazy: true,
        ),
        Provider(
          create: (context) => AuthService(),
          lazy: true,
        ),
        Provider(
          create: (context) => ScoreService(),
          lazy: true,
        ),
        Provider(
          create: (context) => AchievementService(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (context) => AuthController(
            authService: context.read<AuthService>(),
          ),
        ),
      ],
      child: const AppWidget(),
    ),
  );
}
