import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../modules/feeling/core/entities/feeling.dart';

class Emoji extends StatelessWidget {
  const Emoji(
    this.emojiData, {
    Key? key,
    this.size = 50.0,
  }) : super(key: key);

  final Feeling emojiData;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/svg/emoji-${emojiData.name}.svg',
      width: size,
      height: size,
    );
  }
}
