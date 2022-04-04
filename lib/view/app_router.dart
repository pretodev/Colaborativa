import 'package:go_router/go_router.dart';

import '../state/auth/auth_cubit.dart';
import 'pages/confirm_code/confirm_code_page.dart';
import 'pages/profile/profile_page.dart';
import 'pages/splash_page.dart';
import 'pages/verify_phone/verify_phone_page.dart';

class Routes {
  static const splash = '/';
  static const sendPhone = '/auth/send-phone';
  static const confirmCode = '/auth/confirm-code';
  static const register = '/auth/register';
}

class AppRouter {
  static GoRouter build(AuthCubit authCubit) {
    return GoRouter(
      refreshListenable: GoRouterRefreshStream(authCubit.stream),
      redirect: (state) {
        final route = authCubit.state.whenOrNull(
          verifyPhoneNumber: () => Routes.sendPhone,
          verifyPhoneNumberError: (_) => Routes.sendPhone,
          verifyPhoneNumberLoading: () => Routes.sendPhone,
          confirmSmsCode: (_) => Routes.confirmCode,
          confirmSmsCodeError: (_) => Routes.confirmCode,
          confirmSmsCodeLoading: () => Routes.confirmCode,
          confirmSmsCodeNewCode: () => Routes.confirmCode,
          waitingRegister: () => Routes.register,
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
      ],
    );
  }
}
