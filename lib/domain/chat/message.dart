import 'package:colaborativa_app/domain/chat/emitter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

@freezed
class Message with _$Message {
  const Message._();

  const factory Message({
    required String id,
    required String content,
    required DateTime timestamp,
    required Emitter emitter,
  }) = _Message;
}
