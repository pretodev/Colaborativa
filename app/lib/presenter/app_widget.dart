import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../domain/auth/phone_auth_service.dart';
import '../domain/user/user_repository.dart';
import '../infra/firebase_phone_auth_service.dart';
import '../infra/firebase_user_repository.dart';
import 'app_controller.dart';
import 'app_store.dart';
import 'theme/theme.dart';
import 'views/chat/chat_page.dart';
import 'views/confirm_sms_code/confirm_sms_code_page.dart';
import 'views/profile/profile_page.dart';
import 'views/share_feeling_diary/share_feeling_diary_page.dart';
import 'views/verify_phone_number/verify_phone_number_page.dart';

class AppWidget extends ModxApp<AppController> {
  const AppWidget({Key? key}) : super(key: key);

  @override
  get appWidget => MaterialApp(
        title: 'ColaborAtiva',
        theme: AppTheme.instance,
      );

  @override
  get pages => [
        VerifyPhoneNumberPage(),
        ConfirmSmsCodePage(),
        ProfilePage(),
        ShareFeelingDiaryPage(),
        ChatPage(),
      ];

  @override
  void binding(i) {
    lazyBind<UserRepository>(
      () => FirebaseUserRepository(),
      fenix: true,
    );
    lazyBind<PhoneAuthService>(
      () => FirebasePhoneAuthService(),
      fenix: true,
    );
    bind(
      AppStore(),
      permanent: true,
    );
    bind(
      AppController(),
      permanent: true,
    );
  }
}
