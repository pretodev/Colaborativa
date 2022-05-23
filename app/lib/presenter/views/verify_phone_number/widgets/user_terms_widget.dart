import 'package:flutter/material.dart';

class SendPhoneTermsWidget extends StatelessWidget {
  const SendPhoneTermsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final linkStyle = theme.textTheme.bodyText1;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: theme.textTheme.bodyText1,
          children: [
            const TextSpan(
              text:
                  'Fornecendo seus número de telefone você conconcorda e aceita os ',
            ),
            TextSpan(
              text: 'Termos de Serviço',
              style: linkStyle,
            ),
            const TextSpan(
              text: ' e ',
            ),
            TextSpan(
              text: 'Políticas de Privacidade',
              style: linkStyle,
            ),
          ],
        ),
      ),
    );
  }
}
