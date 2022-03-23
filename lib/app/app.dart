import 'package:colaborativa_app/app/app_module.dart';
import 'package:colaborativa_app/app/app_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

final colaborativaApp = ModularApp(
  child: const AppWidget(),
  module: AppModule(),
);
