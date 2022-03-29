// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _None none() {
    return const _None();
  }

  _VerifyPhoneNumber verifyPhoneNumber() {
    return const _VerifyPhoneNumber();
  }

  _VerifyPhoneNumberLoading verifyPhoneNumberLoading() {
    return const _VerifyPhoneNumberLoading();
  }

  _VerifyPhoneNumberError verifyPhoneNumberError(String errorMsg) {
    return _VerifyPhoneNumberError(
      errorMsg,
    );
  }

  _ConfirmSmsCode confirmSmsCode(PhoneStatus status) {
    return _ConfirmSmsCode(
      status,
    );
  }

  _ConfirmSmsCodeLoading confirmSmsCodeLoading() {
    return const _ConfirmSmsCodeLoading();
  }

  _ConfirmSmsCodeNewCode confirmSmsCodeNewCode() {
    return const _ConfirmSmsCodeNewCode();
  }

  _ConfirmSmsCodeError confirmSmsCodeError(String errorMsg) {
    return _ConfirmSmsCodeError(
      errorMsg,
    );
  }

  _WaitingSmsRegister waitingRegister() {
    return const _WaitingSmsRegister();
  }

  _Authenticated authenticated() {
    return const _Authenticated();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() verifyPhoneNumberLoading,
    required TResult Function(String errorMsg) verifyPhoneNumberError,
    required TResult Function(PhoneStatus status) confirmSmsCode,
    required TResult Function() confirmSmsCodeLoading,
    required TResult Function() confirmSmsCodeNewCode,
    required TResult Function(String errorMsg) confirmSmsCodeError,
    required TResult Function() waitingRegister,
    required TResult Function() authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_VerifyPhoneNumberLoading value)
        verifyPhoneNumberLoading,
    required TResult Function(_VerifyPhoneNumberError value)
        verifyPhoneNumberError,
    required TResult Function(_ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(_ConfirmSmsCodeLoading value)
        confirmSmsCodeLoading,
    required TResult Function(_ConfirmSmsCodeNewCode value)
        confirmSmsCodeNewCode,
    required TResult Function(_ConfirmSmsCodeError value) confirmSmsCodeError,
    required TResult Function(_WaitingSmsRegister value) waitingRegister,
    required TResult Function(_Authenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

/// @nodoc

class _$_None extends _None {
  const _$_None() : super._();

  @override
  String toString() {
    return 'AuthState.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() verifyPhoneNumberLoading,
    required TResult Function(String errorMsg) verifyPhoneNumberError,
    required TResult Function(PhoneStatus status) confirmSmsCode,
    required TResult Function() confirmSmsCodeLoading,
    required TResult Function() confirmSmsCodeNewCode,
    required TResult Function(String errorMsg) confirmSmsCodeError,
    required TResult Function() waitingRegister,
    required TResult Function() authenticated,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_VerifyPhoneNumberLoading value)
        verifyPhoneNumberLoading,
    required TResult Function(_VerifyPhoneNumberError value)
        verifyPhoneNumberError,
    required TResult Function(_ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(_ConfirmSmsCodeLoading value)
        confirmSmsCodeLoading,
    required TResult Function(_ConfirmSmsCodeNewCode value)
        confirmSmsCodeNewCode,
    required TResult Function(_ConfirmSmsCodeError value) confirmSmsCodeError,
    required TResult Function(_WaitingSmsRegister value) waitingRegister,
    required TResult Function(_Authenticated value) authenticated,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None extends AuthState {
  const factory _None() = _$_None;
  const _None._() : super._();
}

/// @nodoc
abstract class _$VerifyPhoneNumberCopyWith<$Res> {
  factory _$VerifyPhoneNumberCopyWith(
          _VerifyPhoneNumber value, $Res Function(_VerifyPhoneNumber) then) =
      __$VerifyPhoneNumberCopyWithImpl<$Res>;
}

/// @nodoc
class __$VerifyPhoneNumberCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$VerifyPhoneNumberCopyWith<$Res> {
  __$VerifyPhoneNumberCopyWithImpl(
      _VerifyPhoneNumber _value, $Res Function(_VerifyPhoneNumber) _then)
      : super(_value, (v) => _then(v as _VerifyPhoneNumber));

  @override
  _VerifyPhoneNumber get _value => super._value as _VerifyPhoneNumber;
}

/// @nodoc

class _$_VerifyPhoneNumber extends _VerifyPhoneNumber {
  const _$_VerifyPhoneNumber() : super._();

  @override
  String toString() {
    return 'AuthState.verifyPhoneNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _VerifyPhoneNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() verifyPhoneNumberLoading,
    required TResult Function(String errorMsg) verifyPhoneNumberError,
    required TResult Function(PhoneStatus status) confirmSmsCode,
    required TResult Function() confirmSmsCodeLoading,
    required TResult Function() confirmSmsCodeNewCode,
    required TResult Function(String errorMsg) confirmSmsCodeError,
    required TResult Function() waitingRegister,
    required TResult Function() authenticated,
  }) {
    return verifyPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
  }) {
    return verifyPhoneNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_VerifyPhoneNumberLoading value)
        verifyPhoneNumberLoading,
    required TResult Function(_VerifyPhoneNumberError value)
        verifyPhoneNumberError,
    required TResult Function(_ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(_ConfirmSmsCodeLoading value)
        confirmSmsCodeLoading,
    required TResult Function(_ConfirmSmsCodeNewCode value)
        confirmSmsCodeNewCode,
    required TResult Function(_ConfirmSmsCodeError value) confirmSmsCodeError,
    required TResult Function(_WaitingSmsRegister value) waitingRegister,
    required TResult Function(_Authenticated value) authenticated,
  }) {
    return verifyPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
  }) {
    return verifyPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _VerifyPhoneNumber extends AuthState {
  const factory _VerifyPhoneNumber() = _$_VerifyPhoneNumber;
  const _VerifyPhoneNumber._() : super._();
}

/// @nodoc
abstract class _$VerifyPhoneNumberLoadingCopyWith<$Res> {
  factory _$VerifyPhoneNumberLoadingCopyWith(_VerifyPhoneNumberLoading value,
          $Res Function(_VerifyPhoneNumberLoading) then) =
      __$VerifyPhoneNumberLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$VerifyPhoneNumberLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$VerifyPhoneNumberLoadingCopyWith<$Res> {
  __$VerifyPhoneNumberLoadingCopyWithImpl(_VerifyPhoneNumberLoading _value,
      $Res Function(_VerifyPhoneNumberLoading) _then)
      : super(_value, (v) => _then(v as _VerifyPhoneNumberLoading));

  @override
  _VerifyPhoneNumberLoading get _value =>
      super._value as _VerifyPhoneNumberLoading;
}

/// @nodoc

class _$_VerifyPhoneNumberLoading extends _VerifyPhoneNumberLoading {
  const _$_VerifyPhoneNumberLoading() : super._();

  @override
  String toString() {
    return 'AuthState.verifyPhoneNumberLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyPhoneNumberLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() verifyPhoneNumberLoading,
    required TResult Function(String errorMsg) verifyPhoneNumberError,
    required TResult Function(PhoneStatus status) confirmSmsCode,
    required TResult Function() confirmSmsCodeLoading,
    required TResult Function() confirmSmsCodeNewCode,
    required TResult Function(String errorMsg) confirmSmsCodeError,
    required TResult Function() waitingRegister,
    required TResult Function() authenticated,
  }) {
    return verifyPhoneNumberLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
  }) {
    return verifyPhoneNumberLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumberLoading != null) {
      return verifyPhoneNumberLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_VerifyPhoneNumberLoading value)
        verifyPhoneNumberLoading,
    required TResult Function(_VerifyPhoneNumberError value)
        verifyPhoneNumberError,
    required TResult Function(_ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(_ConfirmSmsCodeLoading value)
        confirmSmsCodeLoading,
    required TResult Function(_ConfirmSmsCodeNewCode value)
        confirmSmsCodeNewCode,
    required TResult Function(_ConfirmSmsCodeError value) confirmSmsCodeError,
    required TResult Function(_WaitingSmsRegister value) waitingRegister,
    required TResult Function(_Authenticated value) authenticated,
  }) {
    return verifyPhoneNumberLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
  }) {
    return verifyPhoneNumberLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumberLoading != null) {
      return verifyPhoneNumberLoading(this);
    }
    return orElse();
  }
}

abstract class _VerifyPhoneNumberLoading extends AuthState {
  const factory _VerifyPhoneNumberLoading() = _$_VerifyPhoneNumberLoading;
  const _VerifyPhoneNumberLoading._() : super._();
}

/// @nodoc
abstract class _$VerifyPhoneNumberErrorCopyWith<$Res> {
  factory _$VerifyPhoneNumberErrorCopyWith(_VerifyPhoneNumberError value,
          $Res Function(_VerifyPhoneNumberError) then) =
      __$VerifyPhoneNumberErrorCopyWithImpl<$Res>;
  $Res call({String errorMsg});
}

/// @nodoc
class __$VerifyPhoneNumberErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$VerifyPhoneNumberErrorCopyWith<$Res> {
  __$VerifyPhoneNumberErrorCopyWithImpl(_VerifyPhoneNumberError _value,
      $Res Function(_VerifyPhoneNumberError) _then)
      : super(_value, (v) => _then(v as _VerifyPhoneNumberError));

  @override
  _VerifyPhoneNumberError get _value => super._value as _VerifyPhoneNumberError;

  @override
  $Res call({
    Object? errorMsg = freezed,
  }) {
    return _then(_VerifyPhoneNumberError(
      errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyPhoneNumberError extends _VerifyPhoneNumberError {
  const _$_VerifyPhoneNumberError(this.errorMsg) : super._();

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'AuthState.verifyPhoneNumberError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyPhoneNumberError &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errorMsg));

  @JsonKey(ignore: true)
  @override
  _$VerifyPhoneNumberErrorCopyWith<_VerifyPhoneNumberError> get copyWith =>
      __$VerifyPhoneNumberErrorCopyWithImpl<_VerifyPhoneNumberError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() verifyPhoneNumberLoading,
    required TResult Function(String errorMsg) verifyPhoneNumberError,
    required TResult Function(PhoneStatus status) confirmSmsCode,
    required TResult Function() confirmSmsCodeLoading,
    required TResult Function() confirmSmsCodeNewCode,
    required TResult Function(String errorMsg) confirmSmsCodeError,
    required TResult Function() waitingRegister,
    required TResult Function() authenticated,
  }) {
    return verifyPhoneNumberError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
  }) {
    return verifyPhoneNumberError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumberError != null) {
      return verifyPhoneNumberError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_VerifyPhoneNumberLoading value)
        verifyPhoneNumberLoading,
    required TResult Function(_VerifyPhoneNumberError value)
        verifyPhoneNumberError,
    required TResult Function(_ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(_ConfirmSmsCodeLoading value)
        confirmSmsCodeLoading,
    required TResult Function(_ConfirmSmsCodeNewCode value)
        confirmSmsCodeNewCode,
    required TResult Function(_ConfirmSmsCodeError value) confirmSmsCodeError,
    required TResult Function(_WaitingSmsRegister value) waitingRegister,
    required TResult Function(_Authenticated value) authenticated,
  }) {
    return verifyPhoneNumberError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
  }) {
    return verifyPhoneNumberError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumberError != null) {
      return verifyPhoneNumberError(this);
    }
    return orElse();
  }
}

abstract class _VerifyPhoneNumberError extends AuthState {
  const factory _VerifyPhoneNumberError(String errorMsg) =
      _$_VerifyPhoneNumberError;
  const _VerifyPhoneNumberError._() : super._();

  String get errorMsg;
  @JsonKey(ignore: true)
  _$VerifyPhoneNumberErrorCopyWith<_VerifyPhoneNumberError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmSmsCodeCopyWith<$Res> {
  factory _$ConfirmSmsCodeCopyWith(
          _ConfirmSmsCode value, $Res Function(_ConfirmSmsCode) then) =
      __$ConfirmSmsCodeCopyWithImpl<$Res>;
  $Res call({PhoneStatus status});

  $PhoneStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$ConfirmSmsCodeCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$ConfirmSmsCodeCopyWith<$Res> {
  __$ConfirmSmsCodeCopyWithImpl(
      _ConfirmSmsCode _value, $Res Function(_ConfirmSmsCode) _then)
      : super(_value, (v) => _then(v as _ConfirmSmsCode));

  @override
  _ConfirmSmsCode get _value => super._value as _ConfirmSmsCode;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_ConfirmSmsCode(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PhoneStatus,
    ));
  }

  @override
  $PhoneStatusCopyWith<$Res> get status {
    return $PhoneStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$_ConfirmSmsCode extends _ConfirmSmsCode {
  const _$_ConfirmSmsCode(this.status) : super._();

  @override
  final PhoneStatus status;

  @override
  String toString() {
    return 'AuthState.confirmSmsCode(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConfirmSmsCode &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$ConfirmSmsCodeCopyWith<_ConfirmSmsCode> get copyWith =>
      __$ConfirmSmsCodeCopyWithImpl<_ConfirmSmsCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() verifyPhoneNumberLoading,
    required TResult Function(String errorMsg) verifyPhoneNumberError,
    required TResult Function(PhoneStatus status) confirmSmsCode,
    required TResult Function() confirmSmsCodeLoading,
    required TResult Function() confirmSmsCodeNewCode,
    required TResult Function(String errorMsg) confirmSmsCodeError,
    required TResult Function() waitingRegister,
    required TResult Function() authenticated,
  }) {
    return confirmSmsCode(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
  }) {
    return confirmSmsCode?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (confirmSmsCode != null) {
      return confirmSmsCode(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_VerifyPhoneNumberLoading value)
        verifyPhoneNumberLoading,
    required TResult Function(_VerifyPhoneNumberError value)
        verifyPhoneNumberError,
    required TResult Function(_ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(_ConfirmSmsCodeLoading value)
        confirmSmsCodeLoading,
    required TResult Function(_ConfirmSmsCodeNewCode value)
        confirmSmsCodeNewCode,
    required TResult Function(_ConfirmSmsCodeError value) confirmSmsCodeError,
    required TResult Function(_WaitingSmsRegister value) waitingRegister,
    required TResult Function(_Authenticated value) authenticated,
  }) {
    return confirmSmsCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
  }) {
    return confirmSmsCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (confirmSmsCode != null) {
      return confirmSmsCode(this);
    }
    return orElse();
  }
}

abstract class _ConfirmSmsCode extends AuthState {
  const factory _ConfirmSmsCode(PhoneStatus status) = _$_ConfirmSmsCode;
  const _ConfirmSmsCode._() : super._();

  PhoneStatus get status;
  @JsonKey(ignore: true)
  _$ConfirmSmsCodeCopyWith<_ConfirmSmsCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmSmsCodeLoadingCopyWith<$Res> {
  factory _$ConfirmSmsCodeLoadingCopyWith(_ConfirmSmsCodeLoading value,
          $Res Function(_ConfirmSmsCodeLoading) then) =
      __$ConfirmSmsCodeLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConfirmSmsCodeLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$ConfirmSmsCodeLoadingCopyWith<$Res> {
  __$ConfirmSmsCodeLoadingCopyWithImpl(_ConfirmSmsCodeLoading _value,
      $Res Function(_ConfirmSmsCodeLoading) _then)
      : super(_value, (v) => _then(v as _ConfirmSmsCodeLoading));

  @override
  _ConfirmSmsCodeLoading get _value => super._value as _ConfirmSmsCodeLoading;
}

/// @nodoc

class _$_ConfirmSmsCodeLoading extends _ConfirmSmsCodeLoading {
  const _$_ConfirmSmsCodeLoading() : super._();

  @override
  String toString() {
    return 'AuthState.confirmSmsCodeLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ConfirmSmsCodeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() verifyPhoneNumberLoading,
    required TResult Function(String errorMsg) verifyPhoneNumberError,
    required TResult Function(PhoneStatus status) confirmSmsCode,
    required TResult Function() confirmSmsCodeLoading,
    required TResult Function() confirmSmsCodeNewCode,
    required TResult Function(String errorMsg) confirmSmsCodeError,
    required TResult Function() waitingRegister,
    required TResult Function() authenticated,
  }) {
    return confirmSmsCodeLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
  }) {
    return confirmSmsCodeLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (confirmSmsCodeLoading != null) {
      return confirmSmsCodeLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_VerifyPhoneNumberLoading value)
        verifyPhoneNumberLoading,
    required TResult Function(_VerifyPhoneNumberError value)
        verifyPhoneNumberError,
    required TResult Function(_ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(_ConfirmSmsCodeLoading value)
        confirmSmsCodeLoading,
    required TResult Function(_ConfirmSmsCodeNewCode value)
        confirmSmsCodeNewCode,
    required TResult Function(_ConfirmSmsCodeError value) confirmSmsCodeError,
    required TResult Function(_WaitingSmsRegister value) waitingRegister,
    required TResult Function(_Authenticated value) authenticated,
  }) {
    return confirmSmsCodeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
  }) {
    return confirmSmsCodeLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (confirmSmsCodeLoading != null) {
      return confirmSmsCodeLoading(this);
    }
    return orElse();
  }
}

abstract class _ConfirmSmsCodeLoading extends AuthState {
  const factory _ConfirmSmsCodeLoading() = _$_ConfirmSmsCodeLoading;
  const _ConfirmSmsCodeLoading._() : super._();
}

/// @nodoc
abstract class _$ConfirmSmsCodeNewCodeCopyWith<$Res> {
  factory _$ConfirmSmsCodeNewCodeCopyWith(_ConfirmSmsCodeNewCode value,
          $Res Function(_ConfirmSmsCodeNewCode) then) =
      __$ConfirmSmsCodeNewCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConfirmSmsCodeNewCodeCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$ConfirmSmsCodeNewCodeCopyWith<$Res> {
  __$ConfirmSmsCodeNewCodeCopyWithImpl(_ConfirmSmsCodeNewCode _value,
      $Res Function(_ConfirmSmsCodeNewCode) _then)
      : super(_value, (v) => _then(v as _ConfirmSmsCodeNewCode));

  @override
  _ConfirmSmsCodeNewCode get _value => super._value as _ConfirmSmsCodeNewCode;
}

/// @nodoc

class _$_ConfirmSmsCodeNewCode extends _ConfirmSmsCodeNewCode {
  const _$_ConfirmSmsCodeNewCode() : super._();

  @override
  String toString() {
    return 'AuthState.confirmSmsCodeNewCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ConfirmSmsCodeNewCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() verifyPhoneNumberLoading,
    required TResult Function(String errorMsg) verifyPhoneNumberError,
    required TResult Function(PhoneStatus status) confirmSmsCode,
    required TResult Function() confirmSmsCodeLoading,
    required TResult Function() confirmSmsCodeNewCode,
    required TResult Function(String errorMsg) confirmSmsCodeError,
    required TResult Function() waitingRegister,
    required TResult Function() authenticated,
  }) {
    return confirmSmsCodeNewCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
  }) {
    return confirmSmsCodeNewCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (confirmSmsCodeNewCode != null) {
      return confirmSmsCodeNewCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_VerifyPhoneNumberLoading value)
        verifyPhoneNumberLoading,
    required TResult Function(_VerifyPhoneNumberError value)
        verifyPhoneNumberError,
    required TResult Function(_ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(_ConfirmSmsCodeLoading value)
        confirmSmsCodeLoading,
    required TResult Function(_ConfirmSmsCodeNewCode value)
        confirmSmsCodeNewCode,
    required TResult Function(_ConfirmSmsCodeError value) confirmSmsCodeError,
    required TResult Function(_WaitingSmsRegister value) waitingRegister,
    required TResult Function(_Authenticated value) authenticated,
  }) {
    return confirmSmsCodeNewCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
  }) {
    return confirmSmsCodeNewCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (confirmSmsCodeNewCode != null) {
      return confirmSmsCodeNewCode(this);
    }
    return orElse();
  }
}

abstract class _ConfirmSmsCodeNewCode extends AuthState {
  const factory _ConfirmSmsCodeNewCode() = _$_ConfirmSmsCodeNewCode;
  const _ConfirmSmsCodeNewCode._() : super._();
}

/// @nodoc
abstract class _$ConfirmSmsCodeErrorCopyWith<$Res> {
  factory _$ConfirmSmsCodeErrorCopyWith(_ConfirmSmsCodeError value,
          $Res Function(_ConfirmSmsCodeError) then) =
      __$ConfirmSmsCodeErrorCopyWithImpl<$Res>;
  $Res call({String errorMsg});
}

/// @nodoc
class __$ConfirmSmsCodeErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$ConfirmSmsCodeErrorCopyWith<$Res> {
  __$ConfirmSmsCodeErrorCopyWithImpl(
      _ConfirmSmsCodeError _value, $Res Function(_ConfirmSmsCodeError) _then)
      : super(_value, (v) => _then(v as _ConfirmSmsCodeError));

  @override
  _ConfirmSmsCodeError get _value => super._value as _ConfirmSmsCodeError;

  @override
  $Res call({
    Object? errorMsg = freezed,
  }) {
    return _then(_ConfirmSmsCodeError(
      errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfirmSmsCodeError extends _ConfirmSmsCodeError {
  const _$_ConfirmSmsCodeError(this.errorMsg) : super._();

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'AuthState.confirmSmsCodeError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConfirmSmsCodeError &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errorMsg));

  @JsonKey(ignore: true)
  @override
  _$ConfirmSmsCodeErrorCopyWith<_ConfirmSmsCodeError> get copyWith =>
      __$ConfirmSmsCodeErrorCopyWithImpl<_ConfirmSmsCodeError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() verifyPhoneNumberLoading,
    required TResult Function(String errorMsg) verifyPhoneNumberError,
    required TResult Function(PhoneStatus status) confirmSmsCode,
    required TResult Function() confirmSmsCodeLoading,
    required TResult Function() confirmSmsCodeNewCode,
    required TResult Function(String errorMsg) confirmSmsCodeError,
    required TResult Function() waitingRegister,
    required TResult Function() authenticated,
  }) {
    return confirmSmsCodeError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
  }) {
    return confirmSmsCodeError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (confirmSmsCodeError != null) {
      return confirmSmsCodeError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_VerifyPhoneNumberLoading value)
        verifyPhoneNumberLoading,
    required TResult Function(_VerifyPhoneNumberError value)
        verifyPhoneNumberError,
    required TResult Function(_ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(_ConfirmSmsCodeLoading value)
        confirmSmsCodeLoading,
    required TResult Function(_ConfirmSmsCodeNewCode value)
        confirmSmsCodeNewCode,
    required TResult Function(_ConfirmSmsCodeError value) confirmSmsCodeError,
    required TResult Function(_WaitingSmsRegister value) waitingRegister,
    required TResult Function(_Authenticated value) authenticated,
  }) {
    return confirmSmsCodeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
  }) {
    return confirmSmsCodeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (confirmSmsCodeError != null) {
      return confirmSmsCodeError(this);
    }
    return orElse();
  }
}

abstract class _ConfirmSmsCodeError extends AuthState {
  const factory _ConfirmSmsCodeError(String errorMsg) = _$_ConfirmSmsCodeError;
  const _ConfirmSmsCodeError._() : super._();

  String get errorMsg;
  @JsonKey(ignore: true)
  _$ConfirmSmsCodeErrorCopyWith<_ConfirmSmsCodeError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WaitingSmsRegisterCopyWith<$Res> {
  factory _$WaitingSmsRegisterCopyWith(
          _WaitingSmsRegister value, $Res Function(_WaitingSmsRegister) then) =
      __$WaitingSmsRegisterCopyWithImpl<$Res>;
}

/// @nodoc
class __$WaitingSmsRegisterCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$WaitingSmsRegisterCopyWith<$Res> {
  __$WaitingSmsRegisterCopyWithImpl(
      _WaitingSmsRegister _value, $Res Function(_WaitingSmsRegister) _then)
      : super(_value, (v) => _then(v as _WaitingSmsRegister));

  @override
  _WaitingSmsRegister get _value => super._value as _WaitingSmsRegister;
}

/// @nodoc

class _$_WaitingSmsRegister extends _WaitingSmsRegister {
  const _$_WaitingSmsRegister() : super._();

  @override
  String toString() {
    return 'AuthState.waitingRegister()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WaitingSmsRegister);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() verifyPhoneNumberLoading,
    required TResult Function(String errorMsg) verifyPhoneNumberError,
    required TResult Function(PhoneStatus status) confirmSmsCode,
    required TResult Function() confirmSmsCodeLoading,
    required TResult Function() confirmSmsCodeNewCode,
    required TResult Function(String errorMsg) confirmSmsCodeError,
    required TResult Function() waitingRegister,
    required TResult Function() authenticated,
  }) {
    return waitingRegister();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
  }) {
    return waitingRegister?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (waitingRegister != null) {
      return waitingRegister();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_VerifyPhoneNumberLoading value)
        verifyPhoneNumberLoading,
    required TResult Function(_VerifyPhoneNumberError value)
        verifyPhoneNumberError,
    required TResult Function(_ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(_ConfirmSmsCodeLoading value)
        confirmSmsCodeLoading,
    required TResult Function(_ConfirmSmsCodeNewCode value)
        confirmSmsCodeNewCode,
    required TResult Function(_ConfirmSmsCodeError value) confirmSmsCodeError,
    required TResult Function(_WaitingSmsRegister value) waitingRegister,
    required TResult Function(_Authenticated value) authenticated,
  }) {
    return waitingRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
  }) {
    return waitingRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (waitingRegister != null) {
      return waitingRegister(this);
    }
    return orElse();
  }
}

abstract class _WaitingSmsRegister extends AuthState {
  const factory _WaitingSmsRegister() = _$_WaitingSmsRegister;
  const _WaitingSmsRegister._() : super._();
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;
}

/// @nodoc

class _$_Authenticated extends _Authenticated {
  const _$_Authenticated() : super._();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() verifyPhoneNumber,
    required TResult Function() verifyPhoneNumberLoading,
    required TResult Function(String errorMsg) verifyPhoneNumberError,
    required TResult Function(PhoneStatus status) confirmSmsCode,
    required TResult Function() confirmSmsCodeLoading,
    required TResult Function() confirmSmsCodeNewCode,
    required TResult Function(String errorMsg) confirmSmsCodeError,
    required TResult Function() waitingRegister,
    required TResult Function() authenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? verifyPhoneNumber,
    TResult Function()? verifyPhoneNumberLoading,
    TResult Function(String errorMsg)? verifyPhoneNumberError,
    TResult Function(PhoneStatus status)? confirmSmsCode,
    TResult Function()? confirmSmsCodeLoading,
    TResult Function()? confirmSmsCodeNewCode,
    TResult Function(String errorMsg)? confirmSmsCodeError,
    TResult Function()? waitingRegister,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_VerifyPhoneNumberLoading value)
        verifyPhoneNumberLoading,
    required TResult Function(_VerifyPhoneNumberError value)
        verifyPhoneNumberError,
    required TResult Function(_ConfirmSmsCode value) confirmSmsCode,
    required TResult Function(_ConfirmSmsCodeLoading value)
        confirmSmsCodeLoading,
    required TResult Function(_ConfirmSmsCodeNewCode value)
        confirmSmsCodeNewCode,
    required TResult Function(_ConfirmSmsCodeError value) confirmSmsCodeError,
    required TResult Function(_WaitingSmsRegister value) waitingRegister,
    required TResult Function(_Authenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_VerifyPhoneNumberLoading value)? verifyPhoneNumberLoading,
    TResult Function(_VerifyPhoneNumberError value)? verifyPhoneNumberError,
    TResult Function(_ConfirmSmsCode value)? confirmSmsCode,
    TResult Function(_ConfirmSmsCodeLoading value)? confirmSmsCodeLoading,
    TResult Function(_ConfirmSmsCodeNewCode value)? confirmSmsCodeNewCode,
    TResult Function(_ConfirmSmsCodeError value)? confirmSmsCodeError,
    TResult Function(_WaitingSmsRegister value)? waitingRegister,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated extends AuthState {
  const factory _Authenticated() = _$_Authenticated;
  const _Authenticated._() : super._();
}
