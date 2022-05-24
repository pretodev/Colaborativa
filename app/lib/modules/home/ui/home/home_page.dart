import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../app_model.dart';
import '../../../../presenter/routes/routes.dart';
import '../../../../presenter/theme/pictures.dart';
import '../../../activities/ui/activities/activities_view.dart';
import '../../../feeling/ui/share_feeling_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void openMenu() {
    Navigator.of(context).pushNamed(Routes.menu);
  }

  void openChat() {
    Navigator.of(context).pushNamed(Routes.chat);
  }

  @override
  Widget build(BuildContext context) {
    final appVm = context.read<AppModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Olá, ${appVm.registeredUser.name}',
          style: const TextStyle(fontSize: 28.0),
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
