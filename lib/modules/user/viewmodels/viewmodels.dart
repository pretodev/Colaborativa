import 'package:flutter_modular/flutter_modular.dart';

import 'phone_auth_viewmodel.dart';
import 'user_status_viewmodel.dart';

UserStatusViewmodel get userStatus => Modular.get<UserStatusViewmodel>();

PhoneAuthViewmodel get phoneAuth => Modular.get<PhoneAuthViewmodel>();
