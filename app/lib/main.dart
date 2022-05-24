import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_model.dart';
import 'app_widget.dart';
import 'firebase_options.dart';
import 'modules/activities/core/activities_repository.dart';
import 'modules/chat/core/chat_service.dart';
import 'modules/feeling/core/feeling_repository.dart';
import 'modules/user/core/user_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => UserRepository()),
        Provider(
          create: (context) => FeelingRepository(),
          lazy: true,
        ),
        Provider(
          create: (context) => ActivitiesRepository(),
          lazy: true,
        ),
        Provider(
          create: (context) => ChatService(),
          lazy: true,
        ),
        ChangeNotifierProvider(create: (context) => AppModel()),
      ],
      child: const AppWidget(),
    ),
  );
}
