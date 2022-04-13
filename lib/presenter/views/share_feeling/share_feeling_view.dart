import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../../../domain/feeling/feeling.dart';
import '../../widgets/custom_box.dart';
import '../../widgets/emoji.dart';
import 'share_feeling_controller.dart';
import 'share_feeling_store.dart';

class ShareFeelingView
    extends ModxView<ShareFeelingController, ShareFeelingStore> {
  const ShareFeelingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fellings = [
      Feeling.smiling,
      Feeling.sleeping,
      Feeling.sad,
      Feeling.sick,
      Feeling.confused,
      Feeling.angry,
    ];
    return Obx(() {
      return store.asyncIsFeelingRegistered.map(
        waiting: () => const SizedBox(),
        error: (_) => const SizedBox(),
        state: (isRegisteredDayFeeling) {
          if (isRegisteredDayFeeling) {
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
                  children: fellings
                      .map((felling) => InkWell(
                            child: Emoji(felling, size: 32.0),
                            onTap: () {
                              controller.describeFelling(felling);
                            },
                          ))
                      .toList(),
                ),
              ],
            ),
          );
        },
      );
    });
  }
}
