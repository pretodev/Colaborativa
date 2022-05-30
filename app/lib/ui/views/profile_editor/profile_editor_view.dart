import 'package:colaborativa_app/core/auth_service.dart';
import 'package:colaborativa_app/core/entities/user_profile.dart';
import 'package:colaborativa_app/core/user_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/page_body.dart';
import '../../widgets/profile_avatar.dart';
import 'widgets/profile_form.dart';

class ProfileEditorView extends StatefulWidget {
  const ProfileEditorView({
    Key? key,
    this.register = false,
  }) : super(key: key);

  final bool register;

  @override
  State<ProfileEditorView> createState() => _ProfileEditorViewState();
}

class _ProfileEditorViewState extends State<ProfileEditorView> {
  late final UserService _userService;
  late final AuthService _authService;

  UserProfile? _profile;
  bool _loading = false;
  set loading(bool value) => setState(() => _loading = value);

  bool _saving = false;
  set saving(bool value) => setState(() => _saving = value);

  void loadUser() async {
    loading = true;
    _profile = await _userService.profile;
    loading = false;
  }

  void saveUser(UserProfile user) async {
    saving = true;
    if (!widget.register) {
      await _userService.saveProfile(user);
    } else {
      await _authService.register(user);
    }
    saving = false;
  }

  @override
  void initState() {
    super.initState();
    if (!widget.register) {
      _userService = context.read<UserService>();
      loadUser();
    } else {
      _authService = context.read<AuthService>();
    }
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
