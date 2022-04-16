import 'dart:async';

import 'package:firebase_database/firebase_database.dart';

import '../domain/chat/editing_message.dart';
import '../domain/chat/message.dart';
import '../domain/chat/message_repository.dart';
import 'mappers/editing_message_mapper.dart';
import 'mappers/message_mapper.dart';

class FirebaseMessageRepository implements MessageRepository {
  final _db = FirebaseDatabase.instance;

  final _messageController = StreamController<List<Message>>();

  final _storeMessages = <Message>[];

  @override
  Future<void> sendMessage(EditingMessage message) async {
    return _db
        .ref('chat/1/messages')
        .push()
        .set(EditingMessageMapper.toMap(message));
  }

  @override
  Stream<List<Message>> messages() {
    final messageRef = _db.ref('chat/1/messages');
    messageRef.onChildAdded.listen((event) {
      final message = MessageMapper.fromFirebase(event.snapshot);
      _storeMessages.add(message);
      _messageController.add(_storeMessages);
    });
    // messageRef.onChildRemoved.listen((event) {
    //   final message = MessageMapper.fromFirebase(event.snapshot);
    //   _storeMessages.remove(message);
    //   _messageController.add(_storeMessages);
    // });
    //moreMessages(10);
    return _messageController.stream;
  }

  @override
  Future<void> moreMessages([int count = 10]) async {
    final result =
        await _db.ref('chat/1/messages').startAt(_storeMessages.length).get();
    final messages = result.children.map(MessageMapper.fromFirebase).toList();
    messages.forEach(((element) => print(element.content)));
    _storeMessages.addAll(messages.reversed);
    _messageController.add(_storeMessages);
  }
}
