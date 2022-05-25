import 'package:colaborativa_app/ui/theme/pictures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AchievementLevelWidget extends StatelessWidget {
  static const iconSize = 16.0;

  const AchievementLevelWidget({
    Key? key,
    this.level = 0,
    this.maxLevel = 10,
  })  : assert(level <= maxLevel, "Level deve ser menor ou igual ao máximo"),
        super(key: key);

  final int level;
  final int maxLevel;

  Widget icon([Color? color]) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: SvgPicture.asset(
        SvgPictures.starActive,
        width: iconSize,
        height: iconSize,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (int i = 0; i < level; i++) icon(),
      for (int i = level; i < maxLevel; i++) icon(Colors.grey),
    ]);
  }
}
