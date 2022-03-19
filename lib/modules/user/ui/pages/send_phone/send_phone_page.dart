import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/send_phone_cubit.dart';
import 'widgets/send_phone_widget.dart';

class SendPhonePage extends StatelessWidget {
  const SendPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SendPhoneCubit(),
      child: const SendPhoneWidget(),
    );
  }
}
