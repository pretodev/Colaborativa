import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SmsInstructionsWidget extends StatelessWidget {
  final String phone;
  final VoidCallback onWrongNumberClicked;

  const SmsInstructionsWidget({
    Key? key,
    required this.phone,
    required this.onWrongNumberClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RichText(
      text: TextSpan(
        style: theme.textTheme.headline6,
        children: [
          TextSpan(
            text:
                'Aguarde o SMS com seu código de confirmação enviado para o número $phone. ',
          ),
          TextSpan(
            text: 'Número errado?',
            style: theme.textTheme.bodyText1,
            recognizer: TapGestureRecognizer()..onTap = onWrongNumberClicked,
          )
        ],
      ),
    );
  }
}
