import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../../widgets/page_body.dart';
import '../../widgets/profile_avatar.dart';
import 'widgets/profile_form.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Perfil'),
        centerTitle: true,
      ),
      body: PageBody(
        scroll: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ProfileAvatar(),
            const SizedBox(height: 16),
            Obx(
              () => ProfileForm(
                onSubmit: (_) {},
                saving: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
