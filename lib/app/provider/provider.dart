import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../modules/user/business/commands/check_user.dart';
import '../../modules/user/ui/cubit/auth_cubit.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => CheckUser()),
        Provider(create: (ctx) => AuthCubit(checkUser: ctx.read())),
      ],
      child: child,
    );
  }
}
