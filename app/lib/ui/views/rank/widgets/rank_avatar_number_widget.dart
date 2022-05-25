import 'package:flutter/material.dart';

class RankAvatarNumberWidget extends StatelessWidget {
  const RankAvatarNumberWidget({Key? key, required this.number})
      : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      alignment: Alignment.center,
      width: 24.0,
      height: 24.0,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Text(
        number.toString(),
        textAlign: TextAlign.center,
        style: theme.textTheme.bodyText1?.copyWith(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
