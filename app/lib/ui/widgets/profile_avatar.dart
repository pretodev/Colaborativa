import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/colors.dart';
import '../theme/pictures.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
    this.size = 100,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    final imageSize = (size / 100) * 36.0;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.lineOnWhite,
          width: 1,
        ),
      ),
      child: Center(
        child: SvgPicture.asset(
          SvgPictures.user,
          height: imageSize,
          width: imageSize,
        ),
      ),
    );
  }
}
