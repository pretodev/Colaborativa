import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app_model.dart';
import '../../../../presenter/routes/routes.dart';
import '../../../../presenter/theme/pictures.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void openMenu() {
    Modular.to.pushNamed('/home/menu');
  }

  void openChat() {
    Modular.to.pushNamed(Routes.chat);
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
          // Padding(
          //   padding: EdgeInsets.all(16.0),
          //   child: ShareFeelingWidget(),
          // ),
          //ActivitiesCheckingWidget(),
        ],
      ),
    );
  }
}
