import 'package:freezed_annotation/freezed_annotation.dart';

part 'emitter.freezed.dart';

@freezed
class Emitter with _$Emitter {
  const Emitter._();

  const factory Emitter({
    required String id,
    required String name,
    String? photoUrl,
  }) = _Emitter;
}
