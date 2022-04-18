import 'package:colaborativa_app/presenter/theme/colors.dart';
import 'package:colaborativa_app/presenter/theme/pictures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              SvgPicture.asset(
                SvgPictures.menu,
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
                      'Menu item',
                      style: theme.textTheme.bodyText1?.copyWith(
                        fontSize: 16.0,
                        color: AppColors.text2,
                      ),
                    ),
                    Text(
                      'lorem ipsum dolor sit amet consectetur adipiscing elit',
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
    );
  }
}
