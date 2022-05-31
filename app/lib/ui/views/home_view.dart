import 'package:colaborativa_app/ui/widgets/user_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../core/notification_service.dart';
import '../../core/user_service.dart';
import '../controllers/chat_controller.dart';
import '../navigation/routes.dart';
import '../theme/pictures.dart';
import 'activities/activities_view.dart';
import 'score_view.dart';
import 'share_feeling_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    context.read<NotificationService>().subscribe();
    context.read<UserService>().registerAccess();
    context.read<ChatController>().load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final navigate = Navigator.of(context);

    return Scaffold(
      appBar: AppBar(
        title: UserWidget(
          builder: (contex, user) => Text(
            'Olá, ${user!.name}',
            style: const TextStyle(fontSize: 28.0),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => navigate.pushNamed(Routes.chat),
            child: SvgPicture.asset(
              SvgPictures.messenger,
              width: 32.0,
              height: 32.0,
            ),
          ),
          TextButton(
            onPressed: () => navigate.pushNamed(Routes.menu),
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
          ScoreView(),
        ],
      ),
    );
  }
}
