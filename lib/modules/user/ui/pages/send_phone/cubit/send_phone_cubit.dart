import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_phone_state.dart';
part 'send_phone_cubit.freezed.dart';

class SendPhoneCubit extends Cubit<SendPhoneState> {
  SendPhoneCubit() : super(const SendPhoneState.init());

  sendPhone(String phone) {}
}
