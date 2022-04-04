import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../bloc/app_bloc.dart';
import '../pages/confirm_code/confirm_code_page.dart';
import '../pages/profile/profile_page.dart';
import '../pages/splash_page.dart';
import '../pages/verify_phone/verify_phone_page.dart';

class Routes {
  static const splash = '/';
  static const sendPhone = '/auth/send-phone';
  static const confirmCode = '/auth/confirm-code';
  static const register = '/auth/register';
  static const home = '/home';
}

class AppRouter {
  static GoRouter build(AppBloc appBloc) {
    return GoRouter(
      refreshListenable: GoRouterRefreshStream(appBloc.stream),
      redirect: (state) {
        final route = appBloc.state.whenOrNull(
          unauthenticated: () => Routes.sendPhone,
          waitingSmsCode: (_) => Routes.confirmCode,
          unregistered: (_) => Routes.register,
          authenticated: (_) => Routes.home,
        );
        return route != null && state.subloc != route ? route : null;
      },
      routes: [
        GoRoute(
          path: Routes.splash,
          builder: (_, state) => const SplashPage(),
        ),
        GoRoute(
          path: Routes.sendPhone,
          builder: (_, state) => const VerifyPhonePage(),
        ),
        GoRoute(
          path: Routes.confirmCode,
          builder: (_, state) => const ConfirmCodePage(),
        ),
        GoRoute(
          path: Routes.register,
          builder: (_, state) => const ProfilePage(),
        ),
        GoRoute(
          path: Routes.home,
          builder: (_, state) => const Scaffold(),
        ),
      ],
    );
  }
}
