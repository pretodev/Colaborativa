import 'package:flutter/widgets.dart';
import 'package:modx/modx.dart';

import '../../routes/routes.dart';
import 'splash_view.dart';

class SplashPage extends ModxPage {
  @override
  String get route => Routes.splash;

  @override
  Widget get view => const SplashView();
}
