import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../business/adapters/phone_auth.dart';
import '../../../external/firebase_phone_auth.dart';
import 'cubit/send_phone_cubit.dart';
import 'widgets/send_phone_widget.dart';

class SendPhonePage extends StatelessWidget {
  const SendPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PhoneAuth>(
          create: (ctx) => FirebasePhoneAuth(),
        ),
        BlocProvider(
          create: (ctx) => SendPhoneCubit(phoneAuth: ctx.read<PhoneAuth>()),
        ),
      ],
      child: const SendPhoneWidget(),
    );
  }
}
