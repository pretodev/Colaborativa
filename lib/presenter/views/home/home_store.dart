import 'package:modx/modx.dart';

import '../../../domain/user/user.dart';

class HomeStore {
  HomeStore({
    required Rxn<UserRegistered> rxUser,
  }) : _rxUser = rxUser;

  final Rxn<UserRegistered> _rxUser;

  UserRegistered get user => _rxUser.value!;
}
