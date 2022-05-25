import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../navigation/routes.dart';
import '../theme/pictures.dart';
import 'activities/activities_view.dart';
import 'share_feeling_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  void openMenu() {
    Navigator.of(context).pushNamed(Routes.menu);
  }

  void openChat() {
    Navigator.of(context).pushNamed(Routes.chat);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Olá, appVm.registeredUser.name',
          style: TextStyle(fontSize: 28.0),
        ),
        actions: [
          TextButton(
            onPressed: openChat,
            child: SvgPicture.asset(
              SvgPictures.messenger,
              width: 32.0,
              height: 32.0,
            ),
          ),
          TextButton(
            onPressed: openMenu,
            child: SvgPicture.asset(
              SvgPictures.menu,
              width: 32.0,
              height: 32.0,
            ),
          ),
        ],
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ShareFeelingView(),
          ),
          ActivitiesView(),
        ],
      ),
    );
  }
}
