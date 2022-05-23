import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modx/modx.dart';

import '../../theme/pictures.dart';
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
          TextButton(
            child: SvgPicture.asset(
              SvgPictures.messenger,
              width: 32.0,
              height: 32.0,
            ),
            onPressed: controller.openChat,
          ),
          TextButton(
            child: SvgPicture.asset(
              SvgPictures.menu,
              width: 32.0,
              height: 32.0,
            ),
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
