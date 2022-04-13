import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({
    Key? key,
    this.child,
    this.height,
    this.width,
  }) : super(key: key);

  final Widget? child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 20.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
