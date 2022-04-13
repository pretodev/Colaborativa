import 'package:modx/modx.dart';

import '../../../app/feeling/is_registered_day_feeling.dart';
import '../../../domain/feeling/feeling.dart';
import '../../app_store.dart';
import '../../routes/routes.dart';
import 'share_feeling_store.dart';

class ShareFeelingController extends ModxController<ShareFeelingStore>
    with ModxAppStoreMixin<AppStore> {
  final IsRegisteredDayFeeling _isRegisteredDayFeeling;
  ShareFeelingController({
    required IsRegisteredDayFeeling isRegisteredDayFeeling,
  }) : _isRegisteredDayFeeling = isRegisteredDayFeeling;

  @override
  void onInit() {
    super.onInit();
    loadStatus();
  }

  void loadStatus() {
    store.asyncIsFeelingRegistered.future(
      _isRegisteredDayFeeling(app.userRegistered!.id),
    );
  }

  void describeFelling(Feeling feeling) {
    view.toNamed(
      Routes.fellingDiary,
      arguments: {'feeling': feeling},
    );
  }
}
