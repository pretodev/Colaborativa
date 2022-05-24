import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../app_model.dart';
import '../../../../presenter/routes/routes.dart';
import '../../../user/core/user_repository.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void loadUser() async {
    final userRepo = context.read<UserRepository>();
    final appVM = context.read<AppModel>();
    final user = await userRepo.currentUser();
    user.mapOrNull(
      unauthenticated: (data) {
        Navigator.of(context).popAndPushNamed(Routes.verifyPhoneNumber);
      },
      unregistered: (data) {
        appVM.user = data;
        Navigator.of(context).popAndPushNamed(Routes.register);
      },
      registered: (data) async {
        appVM.user = data;
        //userRepo.registerAccess();
        Navigator.of(context).popAndPushNamed(Routes.home);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    loadUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            end: Alignment(-0.93207111, 0.36227537),
            stops: [-0.596, -0.595, 1.0],
            colors: [
              Color(0xFF15B6D6),
              Color(0xFF15B6D6),
              Color(0xFF15D6D6),
            ],
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/svg/logo.svg',
              width: 114.0,
              height: 114.0,
            ),
            Text(
              'ColaborAtiva',
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
    );
  }
}
