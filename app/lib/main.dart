import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/app_model.dart';
import 'ui/app_widget.dart';
import 'firebase_options.dart';
import 'core/activities_service.dart';
import 'core/auth_service.dart';
import 'core/chat_service.dart';
import 'core/feeling_service.dart';
import 'core/user_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => UserService()),
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
        ChangeNotifierProvider(create: (context) => AppModel()),
      ],
      child: const AppWidget(),
    ),
  );
}
