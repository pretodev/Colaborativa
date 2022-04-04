import 'package:flutter/material.dart';

import 'theme/colors.dart';

class PageBody extends StatelessWidget {
  final Widget child;
  final bool scroll;

  const PageBody({
    Key? key,
    required this.child,
    this.scroll = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const paddingSize = 16.0;
    final appBarSize =
        MediaQuery.of(context).padding.top + kToolbarHeight + (paddingSize * 2);

    final wrapperChild = Container(
      child: child,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height - appBarSize,
        minWidth: double.infinity,
      ),
      padding: const EdgeInsets.all(paddingSize),
      decoration: const BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
    return scroll ? SingleChildScrollView(child: wrapperChild) : wrapperChild;
  }
}
