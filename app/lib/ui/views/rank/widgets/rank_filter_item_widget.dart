import 'package:flutter/material.dart';

class RankFilterItemWidget extends StatelessWidget {
  const RankFilterItemWidget({
    Key? key,
    required this.label,
    this.onPressed,
    this.selected = false,
  }) : super(key: key);

  final String label;
  final bool selected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 100.0,
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: selected ? Colors.transparent : theme.primaryColor,
            width: 1.0,
          ),
          color: selected ? theme.primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyText2?.copyWith(
            color: selected ? Colors.white : theme.primaryColor,
          ),
        ),
      ),
    );
  }
}
