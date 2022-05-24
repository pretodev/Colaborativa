import 'package:flutter/widgets.dart';

import '../../utils/page_widget.dart';
import 'core/entities/feeling.dart';
import 'ui/share_feeling_diary/share_feeling_diary_model.dart';
import 'ui/share_feeling_diary/share_feeling_diary_view.dart';

Widget shareFeelingDiaryPage(BuildContext context) => ShareFeelingDiaryPage();

class ShareFeelingDiaryPage extends PageWidget<Feeling> {
  ShareFeelingDiaryPage({Key? key}) : super(key: key);

  @override
  void binding(args, i) {
    bindNotifier(ShareFeelingDiaryModel(
      feeling: args,
      feelingRepository: i(),
    ));
  }

  @override
  Widget get view => const ShareFeelingDiaryView();
}
