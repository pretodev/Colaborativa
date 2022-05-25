import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../theme/colors.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.svgIcon,
    this.onPresssed,
  }) : super(key: key);

  final String title;
  final String description;
  final String svgIcon;
  final VoidCallback? onPresssed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onPresssed,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  svgIcon,
                  height: 48.0,
                  width: 48.0,
                  color: AppColors.text2,
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: theme.textTheme.bodyText1?.copyWith(
                          fontSize: 16.0,
                          color: AppColors.text2,
                        ),
                      ),
                      Text(
                        description,
                        style: theme.textTheme.bodyText1?.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: AppColors.lineOnWhite,
            height: 0.5,
          ),
        ],
      ),
    );
  }
}
