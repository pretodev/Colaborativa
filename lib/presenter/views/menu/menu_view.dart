import 'package:colaborativa_app/presenter/views/menu/widgets/menu_item.dart';
import 'package:colaborativa_app/presenter/widgets/page_body.dart';
import 'package:colaborativa_app/presenter/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../../theme/colors.dart';
import 'menu_controller.dart';
import 'menu_store.dart';

class MenuView extends ModxView<MenuController, MenuStore> {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app_outlined),
            onPressed: controller.signout,
          ),
        ],
      ),
      body: Column(
        children: [
          const ProfileAvatar(),
          const SizedBox(height: 8),
          Text(
            store.user.name,
            style: theme.textTheme.bodyText1?.copyWith(
              fontSize: 16.0,
              color: AppColors.text2,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: PageBody(
              child: ListView(
                children: const [
                  MenuItem(),
                  MenuItem(),
                  MenuItem(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
