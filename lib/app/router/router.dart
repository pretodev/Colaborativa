import 'package:colaborativa_app/modules/user/pages/splash/splash_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final instance = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (_, state) => const SplashPage(),
      ),
    ],
  );
}
