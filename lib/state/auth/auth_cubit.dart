import 'package:bloc/bloc.dart';
import '../../../domain/auth/phone_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/auth/confirm_sms_code.dart';
import '../../../app/auth/get_auth_status.dart';
import '../../../app/auth/send_phone_number.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final GetAuthStatus _checkUser;
  final ConfirmSmsCode _confirmSmsCode;
  final SendPhoneNumber _sendPhoneNumber;

  AuthCubit({
    required GetAuthStatus checkUser,
    required ConfirmSmsCode confirmSmsCode,
    required SendPhoneNumber sendPhoneNumber,
  })  : _checkUser = checkUser,
        _confirmSmsCode = confirmSmsCode,
        _sendPhoneNumber = sendPhoneNumber,
        super(const AuthState.none());

  void listenUser() {
    _checkUser().listen((userStatus) {
      print(userStatus);
      final state = userStatus.when(
        none: () {
          return const AuthState.none();
        },
        unauthenticated: () {
          return const AuthState.verifyPhoneNumber();
        },
        waitingSmsCode: (status) {
          return AuthState.confirmSmsCode(status);
        },
        unregistered: (_) {
          return const AuthState.waitingRegister();
        },
        authenticated: (_) {
          return const AuthState.authenticated();
        },
      );
      emit(state);
    }, onError: (error) {
      final errorState = state.maybeWhen(
        verifyPhoneNumberLoading: () => AuthState.verifyPhoneNumberError(
          error.toString(),
        ),
        confirmSmsCodeLoading: () => AuthState.confirmSmsCodeError(
          error.toString(),
        ),
        orElse: () => throw error,
      );
      emit(errorState);
    });
  }

  Future<void> verifyPhoneNumber({
    required String phoneNumber,
  }) async {
    emit(const AuthState.verifyPhoneNumberLoading());
    await _sendPhoneNumber(phoneNumber);
  }

  Future<void> confirmSmsCode({
    required String smsCode,
    required String verificationId,
  }) async {
    emit(const AuthState.confirmSmsCodeLoading());
    await _confirmSmsCode(smsCode: smsCode, verificationId: verificationId);
  }
}
