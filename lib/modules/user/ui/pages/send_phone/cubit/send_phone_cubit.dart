import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../business/adapters/phone_auth.dart';

part 'send_phone_cubit.freezed.dart';
part 'send_phone_state.dart';

class SendPhoneCubit extends Cubit<SendPhoneState> {
  final PhoneAuth _phoneAuth;

  SendPhoneCubit({
    required PhoneAuth phoneAuth,
  })  : _phoneAuth = phoneAuth,
        super(const SendPhoneState.none());

  void sendPhone(String phone) async {
    emit(const SendPhoneState.sending());
    try {
      await _phoneAuth.verifyPhoneNumber(phone);
      emit(const SendPhoneState.none());
    } on Exception catch (error) {
      emit(SendPhoneState.failure(error));
    }
  }
}
