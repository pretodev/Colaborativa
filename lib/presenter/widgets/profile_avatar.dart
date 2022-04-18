import 'package:colaborativa_app/presenter/theme/pictures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/colors.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
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
          height: 36.0,
          width: 36.0,
        ),
      ),
    );
  }
}
