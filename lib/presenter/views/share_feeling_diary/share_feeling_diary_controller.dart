import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../../../app/feeling/register_day_feeling.dart';
import '../../../domain/feeling/editing_feeling_diary.dart';
import '../../app_store.dart';
import 'share_feeling_diary_store.dart';

class ShareFeelingDiaryController extends ModxController<ShareFeelingDiaryStore>
    with ModxAppStoreMixin<AppStore> {
  final RegisterDayFeeling _registerDayFeeling;

  ShareFeelingDiaryController({
    required RegisterDayFeeling registerDayFeeling,
  }) : _registerDayFeeling = registerDayFeeling;

  final text = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    text.addListener(() {
      store.setSendDiary(text.text.length > 10);
    });
  }

  void registerDayFeeling() async {
    await _registerDayFeeling(
      EditingFeelingDiary(
        feeling: store.feeling,
        text: text.text,
      ),
      userId: app.userRegistered!.id,
    );
    view.back(result: true);
  }
}
