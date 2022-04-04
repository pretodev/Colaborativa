import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'app/auth/confirm_sms_code.dart';
import 'app/auth/get_auth_status.dart';
import 'app/auth/send_phone_number.dart';
import 'app/user/save_profile.dart';
import 'domain/auth/phone_auth_service.dart';
import 'domain/user/user_repository.dart';
import 'infra/firebase_phone_auth_service.dart';
import 'infra/firebase_user_repository.dart';
import 'view/bloc/app_bloc.dart';
import 'view/pages/profile/bloc/profile_bloc.dart';

class AppContainer extends StatelessWidget {
  final Widget child;

  const AppContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PhoneAuthService>(
          create: (_) => FirebasePhoneAuthService(),
          lazy: true,
        ),
        Provider<UserRepository>(
          create: (_) => FirebaseUserRepository(),
          lazy: true,
        ),
        Provider<GetAuthStatus>(
          create: (ctx) => GetAuthStatus(
            phoneAuth: ctx.read(),
            userRepository: ctx.read(),
          ),
          lazy: true,
        ),
        Provider<ConfirmSmsCode>(
          create: (ctx) => ConfirmSmsCode(
            phoneAuth: ctx.read(),
          ),
          lazy: true,
        ),
        Provider<SendPhoneNumber>(
          create: (ctx) => SendPhoneNumber(
            phoneAuth: ctx.read(),
          ),
          lazy: true,
        ),
        Provider<SaveProfile>(
          create: (ctx) => SaveProfile(
            userRepository: ctx.read(),
          ),
          lazy: true,
        ),
        BlocProvider<AppBloc>(
          create: (ctx) => AppBloc(
            getAuthStatus: ctx.read(),
          ),
        ),
        BlocProvider<ProfileBloc>(
          create: (ctx) => ProfileBloc(
            userId: ctx.read<AppBloc>().userId,
            saveProfile: ctx.read(),
          ),
          lazy: true,
        ),
      ],
      child: child,
    );
  }
}
