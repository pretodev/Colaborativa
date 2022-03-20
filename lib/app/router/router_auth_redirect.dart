import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../modules/user/business/commands/check_user_status_command.dart';

class RouterAuthRedirect extends StatefulWidget {
  const RouterAuthRedirect({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<RouterAuthRedirect> createState() => _RouterAuthRedirectState();
}

class _RouterAuthRedirectState extends State<RouterAuthRedirect> {
  late CheckUserStatusCommand _checkUserStatus;
  late StreamSubscription _subscription;

  @override
  void initState() {
    super.initState();
    _checkUserStatus = context.read<CheckUserStatusCommand>();
    _subscription = _checkUserStatus().listen(
      (status) {
        print('status: $status');
        status.whenOrNull(
          authenticated: () => context.go('/home'),
          unauthenticated: () => context.go('/sendPhone'),
        );
      },
      onError: (error) {
        print(error); // todo: send to crashlytics
      },
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
