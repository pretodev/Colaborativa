import 'package:modx/modx.dart';

import '../../../app/activity/check_activity.dart';
import '../../../app/activity/get_activities.dart';
import '../../../domain/activities/activity.dart';
import '../../app_store.dart';
import 'activities_checking_store.dart';
import 'widgets/activity_checkout_modal.dart';

class ActivitiesCheckingController
    extends ModxController<ActivitiesCheckingStore>
    with ModxAppStoreMixin<AppStore> {
  final GetActivities _getActivities;
  final CheckActivity _checkActivity;

  ActivitiesCheckingController({
    required GetActivities getActivities,
    required CheckActivity checkActivity,
  })  : _getActivities = getActivities,
        _checkActivity = checkActivity;

  @override
  void onInit() {
    super.onInit();
    loadActivities();
  }

  void loadActivities() async {
    final userId = app.userRegistered!.id;
    store.asyncActivities.future(
      _getActivities(userId: userId),
    );
  }

  void showActiviyCheckout(Activity activity) async {
    openBottomSheetModal(
      ActivityCheckModal(
        activity: activity,
        onCheckClicked: () => checkActivity(activity),
      ),
    );
  }

  Future<void> checkActivity(Activity activity) async {
    final userId = app.userRegistered!.id;
    await store.asyncActivities.future(() async {
      await _checkActivity(activity: activity, userId: userId);
      return _getActivities(userId: userId);
    }());
  }
}
