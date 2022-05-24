import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/entities/feeling.dart';
import '../../core/feeling_service.dart';
import '../navigation/routes.dart';
import '../widgets/custom_box.dart';
import '../widgets/emoji.dart';

class ShareFeelingView extends StatelessWidget {
  const ShareFeelingView({Key? key}) : super(key: key);

  void describeFelling(BuildContext context, Feeling feeling) {
    Navigator.of(context).pushNamed(Routes.fellingDiary, arguments: feeling);
  }

  @override
  Widget build(BuildContext context) {
    final feelingRepo = context.read<FeelingService>();

    return StreamBuilder<bool>(
      stream: feelingRepo.isFeelingDiarySaved(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox();
        }

        final isFeelingDiarySaved = snapshot.data ?? false;
        if (isFeelingDiarySaved) {
          return CustomBox(
            width: double.maxFinite,
            child: Column(children: const [
              Text(
                'Hoje voce ja fez seu feedback',
              ),
            ]),
          );
        }

        return CustomBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Como voce esta se sentindo hoje?',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: Feeling.values
                    .map((felling) => InkWell(
                          child: Emoji(felling, size: 32.0),
                          onTap: () => describeFelling(context, felling),
                        ))
                    .toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
