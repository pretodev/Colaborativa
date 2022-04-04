import 'package:flutter/material.dart';

import '../../../_commons/theme/colors.dart';
import '../../../_commons/theme/typography.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const CircleAvatar(
          radius: 62.0,
          backgroundColor: AppColors.backgroundDark,
          backgroundImage: AssetImage('assets/images/avatar.png'),
        ),
        const SizedBox(height: 12),
        Text(
          'Alterar foto de perfil',
          style: AppTextTheme.link.copyWith(fontSize: 16.0),
        ),
      ],
    );
  }
}
