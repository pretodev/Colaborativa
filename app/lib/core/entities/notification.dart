import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

@freezed
class Notification with _$Notification {
  const Notification._();

  const factory Notification({
    String? title,
    String? body,
    @Default({}) Map<String, dynamic> data,
  }) = _Notification;
}
