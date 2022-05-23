import 'package:colaborativa_app/domain/user/user.dart';
import 'package:colaborativa_app/presenter/app_store.dart';
import 'package:modx/modx.dart';

class MenuStore with ModxAppStoreMixin<AppStore> {
  UserRegistered get user => app.userRegistered!;
}
