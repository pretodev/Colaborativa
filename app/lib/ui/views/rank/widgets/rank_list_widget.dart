import 'package:flutter/material.dart';

import '../../../../core/entities/rank_user.dart';
import '../../../theme/colors.dart';
import 'rank_avatar_widget.dart';

class RankListWidget extends StatelessWidget {
  const RankListWidget({
    Key? key,
    required this.users,
  }) : super(key: key);

  final List<RankUser> users;

  @override
  Widget build(BuildContext context) {
    final othersUsers = users.length >= 4 ? users.skip(3).toList() : [];
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (users.length >= 2)
                RankAvatarWidget(number: 2, user: users[1]),
              if (users.isNotEmpty) RankAvatarWidget(number: 1, user: users[0]),
              if (users.length >= 3)
                RankAvatarWidget(number: 3, user: users[2]),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(color: AppColors.lineOnWhite),
          ListView.builder(
            shrinkWrap: true,
            itemCount: othersUsers.length,
            itemBuilder: (context, index) => ListTile(
              leading: Text(
                '${index + 4}',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              title: Text(
                othersUsers[index].name,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: AppColors.primaryDark,
                    ),
              ),
              trailing: Text(
                '${othersUsers[index].score} pts',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
