import 'package:modx/modx.dart';

import '../../../domain/chat/message.dart';
import '../../../domain/user/user.dart';
import '../../app_store.dart';

class ChatStore with ModxAppStoreMixin<AppStore> {
  final rxMessages = RxAsync<Exception, List<Message>>([]);

  UserRegistered get user => app.userRegistered!;
}
