import 'router_auth_redirect.dart';
import 'package:go_router/go_router.dart';

import '../../modules/user/ui/pages/send_phone/send_phone_page.dart';
import '../../modules/user/ui/pages/splash/splash_page.dart';

class AppRouter {
  static final instance = GoRouter(
    navigatorBuilder: ((context, state, child) {
      return RouterAuthRedirect(child: child);
    }),
    routes: [
      GoRoute(
        path: '/',
        builder: (_, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/sendPhone',
        builder: (_, state) => const SendPhonePage(),
      ),
    ],
  );
}
