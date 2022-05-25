import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void loadUser() async {
    // final userRepo = context.read<UserService>();
    // final appVM = context.read<AppModel>();
    // final user = await userRepo.currentUser();
    // user.mapOrNull(
    //   unauthenticated: (data) {
    //     Navigator.of(context).popAndPushNamed(Routes.verifyPhoneNumber);
    //   },
    //   unregistered: (data) {
    //     appVM.user = data;
    //     Navigator.of(context).popAndPushNamed(Routes.register);
    //   },
    //   registered: (data) async {
    //     appVM.user = data;
    //     //userRepo.registerAccess();
    //     Navigator.of(context).popAndPushNamed(Routes.home);
    //   },
    // );
  }

  @override
  void initState() {
    super.initState();
    // loadUser();
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
