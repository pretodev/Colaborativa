import 'package:colaborativa_app/app_providers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'ui/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Jiffy.locale("pt");

  runApp(
    MultiProvider(
      providers: appProviders,
      child: const AppWidget(),
    ),
  );
}
