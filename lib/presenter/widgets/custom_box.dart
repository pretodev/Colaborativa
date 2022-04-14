import 'package:flutter/material.dart';

import '../theme/colors.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({
    Key? key,
    this.child,
    this.height,
    this.width,
    this.margin,
  }) : super(key: key);

  final Widget? child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 20.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
          color: AppColors.lineOnWhite,
        ),
      ),
      child: child,
    );
  }
}
