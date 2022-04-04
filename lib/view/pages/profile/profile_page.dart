import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/user/user_profile.dart';
import '../../_commons/page_body.dart';
import 'bloc/profile_bloc.dart';
import 'widgets/profile_avatar.dart';
import 'widgets/profile_form.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void _saveProfile(UserProfile profile) {
    final bloc = context.read<ProfileBloc>();
    bloc.add(ProfileEvent.save(profile));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Perfil'),
        centerTitle: true,
      ),
      body: PageBody(
        scroll: true,
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const ProfileAvatar(),
                const SizedBox(height: 16),
                ProfileForm(
                  onSubmit: _saveProfile,
                  saving: state.isSaving,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
