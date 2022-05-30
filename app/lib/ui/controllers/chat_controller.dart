import 'package:colaborativa_app/core/chat_service.dart';
import 'package:colaborativa_app/core/entities/message.dart';
import 'package:flutter/cupertino.dart';

class ChatController extends ChangeNotifier {
  ChatController({
    required ChatService chatService,
  }) : _chatService = chatService;

  final ChatService _chatService;

  final List<Message> _messages = [];
  List<Message> get messages => _messages.reversed.toList();

  void load() async {
    final result = await _chatService.last();
    _messages.addAll(result);
    notifyListeners();
    _chatService.onNewMessage.listen((message) {
      if (!_messages.contains(message)) {
        _messages.add(message);
        notifyListeners();
      }
    });
    _chatService.onRemoveMessage.listen((message) {
      if (_messages.contains(message)) {
        _messages.remove(message);
        notifyListeners();
      }
    });
  }
}
