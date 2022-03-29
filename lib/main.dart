import 'package:colaborativa_app/state/state_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_container.dart';
import 'firebase_options.dart';
import 'view/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  BlocOverrides.runZoned(
    () {
      runApp(
        const AppContainer(
          child: AppWidget(),
        ),
      );
    },
    blocObserver: StateObserver(),
  );
}
