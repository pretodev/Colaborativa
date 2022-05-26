import 'package:colaborativa_app/core/entities/user_profile.dart';
import 'package:colaborativa_app/core/user_service.dart';
import 'package:flutter/material.dart';

import '../../widgets/page_body.dart';
import '../../widgets/profile_avatar.dart';
import 'widgets/profile_form.dart';

class ProfileEditorView extends StatefulWidget {
  const ProfileEditorView({Key? key}) : super(key: key);

  @override
  State<ProfileEditorView> createState() => _ProfileEditorViewState();
}

class _ProfileEditorViewState extends State<ProfileEditorView> {
  late final UserService _userService;

  UserProfile? _profile;
  bool _loading = false;
  set loading(bool value) => setState(() => _loading = value);

  bool _saving = false;
  set saving(bool value) => setState(() => _saving = value);

  void loadUser() async {
    if (_userService.hasUser) {
      loading = true;
      _profile = await _userService.profile;
      loading = false;
    }
  }

  void saveUser(UserProfile user) async {
    saving = true;
    await _userService.saveProfile(user);
    saving = false;
  }

  @override
  void initState() {
    super.initState();
    _userService = UserService();
    loadUser();
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
        child: Visibility(
          visible: !_loading,
          replacement: const SizedBox(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ProfileAvatar(),
              const SizedBox(height: 16),
              ProfileForm(
                initialValue: _profile,
                onSubmit: saveUser,
                saving: _saving,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
