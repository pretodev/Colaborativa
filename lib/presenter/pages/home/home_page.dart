import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../../app_store.dart';
import '../../routes/routes.dart';
import 'home_controller.dart';
import 'home_store.dart';
import 'home_view.dart';

class HomePage extends ModxPage<AppStore> {
  @override
  String get route => Routes.home;

  @override
  Widget get view => const HomeView();

  @override
  void binding(i) {
    bind(HomeStore(rxUser: app.rxUserRegistered));
    bind(HomeController());
  }
}
