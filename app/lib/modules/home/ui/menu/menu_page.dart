import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../app_model.dart';
import '../../../../presenter/theme/colors.dart';
import '../../../../presenter/widgets/page_body.dart';
import '../../../../presenter/widgets/profile_avatar.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  void signout() {}

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final app = context.read<AppModel>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app_outlined),
            onPressed: signout,
          ),
        ],
      ),
      body: Column(
        children: [
          const ProfileAvatar(),
          const SizedBox(height: 8),
          Text(
            app.registeredUser.name,
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
