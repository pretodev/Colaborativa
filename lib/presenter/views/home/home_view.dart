import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../activities_checking/activities_checking_widget.dart';
import '../share_feeling/share_feeling_widget.dart';
import 'home_controller.dart';
import 'home_store.dart';

class HomeView extends ModxView<HomeController, HomeStore> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            'Olá, ${store.user.name}',
            style: const TextStyle(fontSize: 28.0),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.grid_view_outlined),
            onPressed: controller.openMenu,
          ),
        ],
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ShareFeelingWidget(),
          ),
          ActivitiesCheckingWidget(),
        ],
      ),
    );
  }
}
