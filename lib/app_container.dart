import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'app/auth/confirm_sms_code.dart';
import 'app/auth/get_auth_status.dart';
import 'app/auth/send_phone_number.dart';
import 'domain/auth/phone_auth_service.dart';
import 'domain/user/user_datasource.dart';
import 'infra/firebase_phone_auth_service.dart';
import 'infra/firebase_user_repository.dart';
import 'state/auth/auth_cubit.dart';

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
        BlocProvider<AuthCubit>(
          create: (ctx) => AuthCubit(
            checkUser: ctx.read(),
            sendPhoneNumber: ctx.read(),
            confirmSmsCode: ctx.read(),
          ),
        ),
      ],
      child: child,
    );
  }
}
