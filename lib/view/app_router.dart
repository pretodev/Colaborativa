import 'package:go_router/go_router.dart';

import '../state/auth/auth_cubit.dart';
import 'auth/send_phone_page.dart';
import 'auth/splash_page.dart';

class Routes {
  static const String splash = '/';
  static const String sendPhone = '/send-phone';
}

class AppRouter {
  static GoRouter build(AuthCubit authCubit) {
    return GoRouter(
      refreshListenable: GoRouterRefreshStream(authCubit.stream),
      redirect: (state) {
        final route = authCubit.state.whenOrNull(
          verifyPhoneNumber: () => Routes.sendPhone,
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
          builder: (_, state) => const SendPhonePage(),
        ),
        //GoRoute(path: '/confirm-code', builder: (_, state) => const ConfirmCodePage()),
      ],
    );
  }
}
