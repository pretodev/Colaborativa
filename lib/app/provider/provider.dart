import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../modules/user/business/adapters/user_datasource.dart';
import '../../modules/user/external/firebase_user_datasource.dart';

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
        Provider<UserDatasource>(create: (ctx) => FirebaseUserDatasource()),
      ],
      child: child,
    );
  }
}
