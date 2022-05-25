import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/auth_controller.dart';
import '../theme/colors.dart';
import '../widgets/page_body.dart';
import '../widgets/profile_avatar.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final auth = context.read<AuthController>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app_outlined),
            onPressed: auth.logout,
          ),
        ],
      ),
      body: Column(
        children: [
          const ProfileAvatar(),
          const SizedBox(height: 8),
          Text(
            ' app.registeredUser.name',
            style: theme.textTheme.bodyText1?.copyWith(
              fontSize: 16.0,
              color: AppColors.text2,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: PageBody(
              child: ListView(
                children: const [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
