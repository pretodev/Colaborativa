part of 'send_phone_cubit.dart';

@freezed
class SendPhoneState with _$SendPhoneState {
  const factory SendPhoneState.none() = _None;

  const factory SendPhoneState.failure(Exception error) = _Failure;

  const factory SendPhoneState.sending() = _Sending;
}
