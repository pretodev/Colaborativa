import 'package:colaborativa_app/core/affiliation_service.dart';
import 'package:colaborativa_app/ui/theme/pictures.dart';
import 'package:colaborativa_app/ui/widgets/custom_box.dart';
import 'package:colaborativa_app/ui/widgets/profile_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/entities/user.dart';
import '../navigation/routes.dart';
import '../theme/colors.dart';
import '../theme/typography.dart';

class MentorView extends StatefulWidget {
  const MentorView({Key? key}) : super(key: key);

  @override
  State<MentorView> createState() => _MentorViewState();
}

class _MentorViewState extends State<MentorView> {
  late final NavigatorState navigate;
  late final AffiliationService affiliation;

  void showChat() {
    navigate.pushNamed(Routes.chat);
  }

  void chooseMentor() {
    navigate.pushNamed(Routes.affiliation);
  }

  @override
  void initState() {
    super.initState();
    navigate = Navigator.of(context);
    affiliation = context.read<AffiliationService>();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return StreamBuilder<User?>(
      stream: affiliation.mentor,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox();
        }
        final mentor = snapshot.data;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Afiliação',
                style: theme.textTheme.headline6?.copyWith(
                  color: AppColors.primaryDark,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomBox(
                width: double.maxFinite,
                child: Visibility(
                  visible: mentor != null,
                  replacement: Column(
                    children: [
                      Image.asset(
                        PngPicture.helpingHand,
                        height: 54,
                        width: 54,
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'Você não tem padrinho',
                        style: theme.textTheme.headline5,
                      ),
                      const SizedBox(height: 8.0),
                      InkWell(
                        onTap: chooseMentor,
                        child: Text(
                          'Encontre agora',
                          style: AppTextTheme.link.copyWith(),
                        ),
                      )
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const ProfileAvatarWidget(),
                      const SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            mentor?.name ?? '',
                            style: theme.textTheme.headline5?.copyWith(
                              color: AppColors.text2,
                            ),
                          ),
                          InkWell(
                            onTap: showChat,
                            child: Text(
                              'Envie uma mensagem',
                              style: AppTextTheme.link.copyWith(
                                color: AppColors.primaryDark,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
