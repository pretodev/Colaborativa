import 'package:flutter/material.dart';

class FieldWrapper extends StatelessWidget {
  final String label;
  final Widget child;

  const FieldWrapper({
    Key? key,
    required this.label,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: theme.textTheme.bodyText2,
        ),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}
