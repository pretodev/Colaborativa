import 'package:freezed_annotation/freezed_annotation.dart';

import '../../modules/chat/core/models/emitter.dart';

part 'editing_message.freezed.dart';

@freezed
class EditingMessage with _$EditingMessage {
  const EditingMessage._();

  const factory EditingMessage({
    required String content,
    required Emitter emitter,
  }) = _EditingMessage;
}
