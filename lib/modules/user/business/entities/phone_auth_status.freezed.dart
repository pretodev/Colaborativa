// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_auth_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhoneAuthStatusTearOff {
  const _$PhoneAuthStatusTearOff();

  _None none() {
    return const _None();
  }

  _Success success() {
    return const _Success();
  }

  _WaitingCode waitingCode() {
    return const _WaitingCode();
  }

  _Timeout timeout() {
    return const _Timeout();
  }
}

/// @nodoc
const $PhoneAuthStatus = _$PhoneAuthStatusTearOff();

/// @nodoc
mixin _$PhoneAuthStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() success,
    required TResult Function() waitingCode,
    required TResult Function() timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? success,
    TResult Function()? waitingCode,
    TResult Function()? timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? success,
    TResult Function()? waitingCode,
    TResult Function()? timeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Success value) success,
    required TResult Function(_WaitingCode value) waitingCode,
    required TResult Function(_Timeout value) timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Success value)? success,
    TResult Function(_WaitingCode value)? waitingCode,
    TResult Function(_Timeout value)? timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Success value)? success,
    TResult Function(_WaitingCode value)? waitingCode,
    TResult Function(_Timeout value)? timeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneAuthStatusCopyWith<$Res> {
  factory $PhoneAuthStatusCopyWith(
          PhoneAuthStatus value, $Res Function(PhoneAuthStatus) then) =
      _$PhoneAuthStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneAuthStatusCopyWithImpl<$Res>
    implements $PhoneAuthStatusCopyWith<$Res> {
  _$PhoneAuthStatusCopyWithImpl(this._value, this._then);

  final PhoneAuthStatus _value;
  // ignore: unused_field
  final $Res Function(PhoneAuthStatus) _then;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends _$PhoneAuthStatusCopyWithImpl<$Res>
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
    return 'PhoneAuthStatus.none()';
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
    required TResult Function() success,
    required TResult Function() waitingCode,
    required TResult Function() timeout,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? success,
    TResult Function()? waitingCode,
    TResult Function()? timeout,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? success,
    TResult Function()? waitingCode,
    TResult Function()? timeout,
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
    required TResult Function(_Success value) success,
    required TResult Function(_WaitingCode value) waitingCode,
    required TResult Function(_Timeout value) timeout,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Success value)? success,
    TResult Function(_WaitingCode value)? waitingCode,
    TResult Function(_Timeout value)? timeout,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Success value)? success,
    TResult Function(_WaitingCode value)? waitingCode,
    TResult Function(_Timeout value)? timeout,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None extends PhoneAuthStatus {
  const factory _None() = _$_None;
  const _None._() : super._();
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$PhoneAuthStatusCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success() : super._();

  @override
  String toString() {
    return 'PhoneAuthStatus.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() success,
    required TResult Function() waitingCode,
    required TResult Function() timeout,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? success,
    TResult Function()? waitingCode,
    TResult Function()? timeout,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? success,
    TResult Function()? waitingCode,
    TResult Function()? timeout,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Success value) success,
    required TResult Function(_WaitingCode value) waitingCode,
    required TResult Function(_Timeout value) timeout,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Success value)? success,
    TResult Function(_WaitingCode value)? waitingCode,
    TResult Function(_Timeout value)? timeout,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Success value)? success,
    TResult Function(_WaitingCode value)? waitingCode,
    TResult Function(_Timeout value)? timeout,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends PhoneAuthStatus {
  const factory _Success() = _$_Success;
  const _Success._() : super._();
}

/// @nodoc
abstract class _$WaitingCodeCopyWith<$Res> {
  factory _$WaitingCodeCopyWith(
          _WaitingCode value, $Res Function(_WaitingCode) then) =
      __$WaitingCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$WaitingCodeCopyWithImpl<$Res>
    extends _$PhoneAuthStatusCopyWithImpl<$Res>
    implements _$WaitingCodeCopyWith<$Res> {
  __$WaitingCodeCopyWithImpl(
      _WaitingCode _value, $Res Function(_WaitingCode) _then)
      : super(_value, (v) => _then(v as _WaitingCode));

  @override
  _WaitingCode get _value => super._value as _WaitingCode;
}

/// @nodoc

class _$_WaitingCode extends _WaitingCode {
  const _$_WaitingCode() : super._();

  @override
  String toString() {
    return 'PhoneAuthStatus.waitingCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WaitingCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() success,
    required TResult Function() waitingCode,
    required TResult Function() timeout,
  }) {
    return waitingCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? success,
    TResult Function()? waitingCode,
    TResult Function()? timeout,
  }) {
    return waitingCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? success,
    TResult Function()? waitingCode,
    TResult Function()? timeout,
    required TResult orElse(),
  }) {
    if (waitingCode != null) {
      return waitingCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Success value) success,
    required TResult Function(_WaitingCode value) waitingCode,
    required TResult Function(_Timeout value) timeout,
  }) {
    return waitingCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Success value)? success,
    TResult Function(_WaitingCode value)? waitingCode,
    TResult Function(_Timeout value)? timeout,
  }) {
    return waitingCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Success value)? success,
    TResult Function(_WaitingCode value)? waitingCode,
    TResult Function(_Timeout value)? timeout,
    required TResult orElse(),
  }) {
    if (waitingCode != null) {
      return waitingCode(this);
    }
    return orElse();
  }
}

abstract class _WaitingCode extends PhoneAuthStatus {
  const factory _WaitingCode() = _$_WaitingCode;
  const _WaitingCode._() : super._();
}

/// @nodoc
abstract class _$TimeoutCopyWith<$Res> {
  factory _$TimeoutCopyWith(_Timeout value, $Res Function(_Timeout) then) =
      __$TimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$TimeoutCopyWithImpl<$Res> extends _$PhoneAuthStatusCopyWithImpl<$Res>
    implements _$TimeoutCopyWith<$Res> {
  __$TimeoutCopyWithImpl(_Timeout _value, $Res Function(_Timeout) _then)
      : super(_value, (v) => _then(v as _Timeout));

  @override
  _Timeout get _value => super._value as _Timeout;
}

/// @nodoc

class _$_Timeout extends _Timeout {
  const _$_Timeout() : super._();

  @override
  String toString() {
    return 'PhoneAuthStatus.timeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Timeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() success,
    required TResult Function() waitingCode,
    required TResult Function() timeout,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? success,
    TResult Function()? waitingCode,
    TResult Function()? timeout,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? success,
    TResult Function()? waitingCode,
    TResult Function()? timeout,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Success value) success,
    required TResult Function(_WaitingCode value) waitingCode,
    required TResult Function(_Timeout value) timeout,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Success value)? success,
    TResult Function(_WaitingCode value)? waitingCode,
    TResult Function(_Timeout value)? timeout,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Success value)? success,
    TResult Function(_WaitingCode value)? waitingCode,
    TResult Function(_Timeout value)? timeout,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _Timeout extends PhoneAuthStatus {
  const factory _Timeout() = _$_Timeout;
  const _Timeout._() : super._();
}
