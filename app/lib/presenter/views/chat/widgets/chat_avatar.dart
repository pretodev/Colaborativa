import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../theme/colors.dart';
import '../../../theme/pictures.dart';

class ChatAvatar extends StatelessWidget {
  const ChatAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.0,
      width: 32.0,
      decoration: BoxDecoration(
        color: AppColors.backgroundMessage,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Center(
        child: SvgPicture.asset(
          SvgPictures.user,
          height: 16.0,
          width: 16.0,
        ),
      ),
    );
  }
}
