part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.none() = _None;

  const factory AuthState.verifyPhoneNumber() = _VerifyPhoneNumber;

  const factory AuthState.verifyPhoneNumberLoading() =
      _VerifyPhoneNumberLoading;

  const factory AuthState.verifyPhoneNumberError(String errorMsg) =
      _VerifyPhoneNumberError;

  const factory AuthState.confirmSmsCode(PhoneStatus status) = _ConfirmSmsCode;

  const factory AuthState.confirmSmsCodeLoading() = _ConfirmSmsCodeLoading;

  const factory AuthState.confirmSmsCodeError(String errorMsg) =
      _ConfirmSmsCodeError;

  const factory AuthState.waitingRegister() = _WaitingSmsRegister;

  const factory AuthState.authenticated() = _Authenticated;

  bool get isVerifyPhoneNumberLoading => this is _VerifyPhoneNumberLoading;
}
