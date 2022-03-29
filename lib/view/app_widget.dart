import 'package:colaborativa_app/state/auth/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '_commons/theme/theme.dart';
import 'app_router.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late AuthCubit _authCubit;

  @override
  void initState() {
    super.initState();
    _authCubit = context.read<AuthCubit>();
    _authCubit.listenUser();
  }

  @override
  Widget build(BuildContext context) {
    final router = AppRouter.build(_authCubit);

    return MaterialApp.router(
      title: 'ColaborAtiva',
      theme: AppTheme.instance,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
    );
  }
}
