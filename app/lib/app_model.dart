import 'modules/user/core/entity/user.dart';
import 'utils/easy_notifier.dart';

class AppModel extends EasyNotifier {
  var _user = const User.none();
  set user(User value) => notify(() => _user = value);
  UserRegistered get registeredUser => _user.maybeMap(
        registered: (u) => u,
        orElse: () => throw ('User is not registered'),
      );
}
