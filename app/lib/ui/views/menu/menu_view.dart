import 'package:colaborativa_app/ui/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/auth_controller.dart';
import '../../theme/colors.dart';
import '../../theme/pictures.dart';
import '../../widgets/page_body.dart';
import '../../widgets/profile_avatar.dart';
import 'widgets/menu_item_widget.dart';

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
          Consumer<AuthController>(
            builder: (context, auth, child) => Text(
              auth.user?.name ?? 'Sem nome',
              style: theme.textTheme.bodyText1?.copyWith(
                fontSize: 16.0,
                color: AppColors.text2,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: PageBody(
              child: ListView(
                children: [
                  MenuItemWidget(
                    svgIcon: SvgPictures.goal,
                    title: 'Conquistas',
                    description:
                        'Veja os objetivos conquistado ao longo da sua jornada de cuidado próprio.',
                    onPresssed: () =>
                        Navigator.pushNamed(context, Routes.achievements),
                  ),
                  const MenuItemWidget(
                    svgIcon: SvgPictures.readingBook,
                    title: 'Informativos',
                    description:
                        'Se informe e tenha a acesso a materias sobre lesão por pressão',
                  ),
                  const MenuItemWidget(
                    svgIcon: SvgPictures.settings,
                    title: 'Configurações',
                    description:
                        'Controle notificações e explore outros recursos.',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
