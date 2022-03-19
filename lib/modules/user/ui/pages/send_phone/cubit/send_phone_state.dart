part of 'send_phone_cubit.dart';

@freezed
class SendPhoneState with _$SendPhoneState {
  const factory SendPhoneState.init() = _Initial;

  const factory SendPhoneState.error({required Exception error}) = _Error;

  const factory SendPhoneState.loading() = _Loaging;
}
