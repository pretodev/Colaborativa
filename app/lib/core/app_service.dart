import 'package:firebase_database/firebase_database.dart';

import 'entities/app_configs.dart';

class AppService {
  final _db = FirebaseDatabase.instance;

  Stream<AppConfigs> config([String language = 'pt-br']) {
    return _db.ref('app/$language').onValue.map((event) {
      final configMap = event.snapshot.value as Map?;
      return AppConfigs(
        chatSSuggestions: _getChatSuggestions(configMap ?? {}),
      );
    });
  }

  Map<String, List<String>> _getChatSuggestions(Map config) {
    final chatSSuggestions = config['chat_suggestions'] as Map;
    final types = ['support', 'acknowledgment', 'incentive'];
    final chatSSuggestionsMap = <String, List<String>>{};
    for (var type in types) {
      final typeMessages = chatSSuggestions[type] as Map?;
      if (typeMessages != null) {
        chatSSuggestionsMap['${type}All'] = _parseList(typeMessages['all']);
        chatSSuggestionsMap['${type}Individual'] =
            _parseList(typeMessages['individual']);
      }
    }
    return chatSSuggestionsMap;
  }

  List<T> _parseList<T>(List? list) {
    return list?.map((e) => e as T).toList() ?? [];
  }
}