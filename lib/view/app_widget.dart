import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/app_bloc.dart';
import 'router/router.dart';
import 'theme/theme.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late AppBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<AppBloc>();
    _bloc.add(const AppEvent.loadUser());
  }

  @override
  Widget build(BuildContext context) {
    final router = AppRouter.build(_bloc);

    return MaterialApp.router(
      title: 'ColaborAtiva',
      theme: AppTheme.instance,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
    );
  }
}
