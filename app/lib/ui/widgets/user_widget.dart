import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/entities/user.dart';
import '../../core/user_service.dart';

typedef UserWidgetBuilder = Widget Function(BuildContext contex, User? user);

class UserWidget extends StatelessWidget {
  const UserWidget({Key? key, required this.builder}) : super(key: key);

  final UserWidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    final userService = context.read<UserService>();
    return StreamBuilder<User?>(
      initialData: null,
      stream: userService.user,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox();
        }
        return builder(context, snapshot.data);
      },
    );
  }
}
