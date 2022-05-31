import 'package:flutter/material.dart';

import '../theme/colors.dart';

class SelectableListTileWidget extends StatelessWidget {
  const SelectableListTileWidget({
    Key? key,
    required this.selected,
    required this.title,
    this.subtitle,
    this.onClicked,
    this.trailing,
    this.leading,
  }) : super(key: key);

  final bool selected;
  final Widget title;
  final Widget? subtitle;
  final VoidCallback? onClicked;
  final Widget? trailing;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: selected ? AppColors.backgroundDark : null,
      ),
      child: ListTile(
        leading: leading,
        title: title,
        selected: selected,
        subtitle: subtitle,
        trailing: trailing,
        onTap: onClicked,
      ),
    );
  }
}
