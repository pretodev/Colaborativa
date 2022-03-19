import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../business/adapters/phone_auth.dart';

part 'send_phone_cubit.freezed.dart';
part 'send_phone_state.dart';

class SendPhoneCubit extends Cubit<SendPhoneState> {
  final PhoneAuth _phoneAuth;

  StreamSubscription? _subscription;

  SendPhoneCubit({required PhoneAuth phoneAuth})
      : _phoneAuth = phoneAuth,
        super(const SendPhoneState.none());

  void sendPhone(String phone) {
    emit(const SendPhoneState.sending());
    _subscription?.cancel();
    _subscription = _phoneAuth.verifyPhoneNumber(phone).listen(
      (status) {
        print(status);
      },
      onError: (error) {
        emit(SendPhoneState.failure(error));
      },
    );
  }
}
