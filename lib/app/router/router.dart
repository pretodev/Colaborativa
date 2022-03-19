import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../modules/user/ui/cubit/auth_cubit.dart';
import '../../modules/user/ui/pages/send_phone/send_phone_page.dart';
import '../../modules/user/ui/pages/splash/splash_page.dart';

class AppRouter {
  static final instance = GoRouter(
    navigatorBuilder: ((_, state, child) {
      return BlocListener<AuthCubit, AuthState>(
        listener: (context, state) => state.whenOrNull(
          authenticated: () => context.go('/home'),
          unauthenticated: () => context.go('/sendPhone'),
        ),
        child: child,
      );
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
