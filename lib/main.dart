import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_container.dart';
import 'firebase_options.dart';
import 'presenter/app_widget.dart';
import 'state/state_observer.dart';

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
