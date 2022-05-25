import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../core/score_service.dart';
import '../theme/colors.dart';
import '../theme/pictures.dart';
import '../theme/typography.dart';
import '../widgets/custom_box.dart';

class ScoreView extends StatelessWidget {
  const ScoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scoreService = context.read<ScoreService>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Pontuação',
            style: theme.textTheme.headline6?.copyWith(
              color: AppColors.primaryDark,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomBox(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StreamBuilder<int>(
                      stream: scoreService.score,
                      builder: (context, snapshot) {
                        return Text(
                          '${snapshot.data ?? 0} pontos',
                          style: theme.textTheme.headline5?.copyWith(
                            color: AppColors.text2,
                          ),
                        );
                      },
                    ),
                    Text(
                      'Ver rank',
                      style: AppTextTheme.link.copyWith(
                        color: AppColors.primaryDark,
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  SvgPictures.trophy,
                  width: 100.0,
                  height: 100.0,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
