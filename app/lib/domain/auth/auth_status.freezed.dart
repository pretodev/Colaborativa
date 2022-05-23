// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStatusTearOff {
  const _$AuthStatusTearOff();

  _None none() {
    return const _None();
  }

  _Authenticated authenticated(UserRegistered user) {
    return _Authenticated(
      user,
    );
  }

  _Unregistered unregistered(UserUnregistered user) {
    return _Unregistered(
      user,
    );
  }

  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

  _WaitingSmsCode waitingSmsCode(PhoneStatus status) {
    return _WaitingSmsCode(
      status,
    );
  }
}

/// @nodoc
const $AuthStatus = _$AuthStatusTearOff();

/// @nodoc
mixin _$AuthStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(UserRegistered user) authenticated,
    required TResult Function(UserUnregistered user) unregistered,
    required TResult Function() unauthenticated,
    required TResult Function(PhoneStatus status) waitingSmsCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function()? unauthenticated,
    TResult Function(PhoneStatus status)? waitingSmsCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function()? unauthenticated,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unregistered value) unregistered,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_WaitingSmsCode value) waitingSmsCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatusCopyWith<$Res> {
  factory $AuthStatusCopyWith(
          AuthStatus value, $Res Function(AuthStatus) then) =
      _$AuthStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStatusCopyWithImpl<$Res> implements $AuthStatusCopyWith<$Res> {
  _$AuthStatusCopyWithImpl(this._value, this._then);

  final AuthStatus _value;
  // ignore: unused_field
  final $Res Function(AuthStatus) _then;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends _$AuthStatusCopyWithImpl<$Res>
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
    return 'AuthStatus.none()';
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
    required TResult Function(UserRegistered user) authenticated,
    required TResult Function(UserUnregistered user) unregistered,
    required TResult Function() unauthenticated,
    required TResult Function(PhoneStatus status) waitingSmsCode,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function()? unauthenticated,
    TResult Function(PhoneStatus status)? waitingSmsCode,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function()? unauthenticated,
    TResult Function(PhoneStatus status)? waitingSmsCode,
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
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unregistered value) unregistered,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_WaitingSmsCode value) waitingSmsCode,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None extends AuthStatus {
  const factory _None() = _$_None;
  const _None._() : super._();
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({UserRegistered user});
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStatusCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Authenticated(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegistered,
    ));
  }
}

/// @nodoc

class _$_Authenticated extends _Authenticated {
  const _$_Authenticated(this.user) : super._();

  @override
  final UserRegistered user;

  @override
  String toString() {
    return 'AuthStatus.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Authenticated &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(UserRegistered user) authenticated,
    required TResult Function(UserUnregistered user) unregistered,
    required TResult Function() unauthenticated,
    required TResult Function(PhoneStatus status) waitingSmsCode,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function()? unauthenticated,
    TResult Function(PhoneStatus status)? waitingSmsCode,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function()? unauthenticated,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unregistered value) unregistered,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_WaitingSmsCode value) waitingSmsCode,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated extends AuthStatus {
  const factory _Authenticated(UserRegistered user) = _$_Authenticated;
  const _Authenticated._() : super._();

  UserRegistered get user;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnregisteredCopyWith<$Res> {
  factory _$UnregisteredCopyWith(
          _Unregistered value, $Res Function(_Unregistered) then) =
      __$UnregisteredCopyWithImpl<$Res>;
  $Res call({UserUnregistered user});
}

/// @nodoc
class __$UnregisteredCopyWithImpl<$Res> extends _$AuthStatusCopyWithImpl<$Res>
    implements _$UnregisteredCopyWith<$Res> {
  __$UnregisteredCopyWithImpl(
      _Unregistered _value, $Res Function(_Unregistered) _then)
      : super(_value, (v) => _then(v as _Unregistered));

  @override
  _Unregistered get _value => super._value as _Unregistered;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Unregistered(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserUnregistered,
    ));
  }
}

/// @nodoc

class _$_Unregistered extends _Unregistered {
  const _$_Unregistered(this.user) : super._();

  @override
  final UserUnregistered user;

  @override
  String toString() {
    return 'AuthStatus.unregistered(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unregistered &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$UnregisteredCopyWith<_Unregistered> get copyWith =>
      __$UnregisteredCopyWithImpl<_Unregistered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(UserRegistered user) authenticated,
    required TResult Function(UserUnregistered user) unregistered,
    required TResult Function() unauthenticated,
    required TResult Function(PhoneStatus status) waitingSmsCode,
  }) {
    return unregistered(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function()? unauthenticated,
    TResult Function(PhoneStatus status)? waitingSmsCode,
  }) {
    return unregistered?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function()? unauthenticated,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    required TResult orElse(),
  }) {
    if (unregistered != null) {
      return unregistered(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unregistered value) unregistered,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_WaitingSmsCode value) waitingSmsCode,
  }) {
    return unregistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
  }) {
    return unregistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    required TResult orElse(),
  }) {
    if (unregistered != null) {
      return unregistered(this);
    }
    return orElse();
  }
}

abstract class _Unregistered extends AuthStatus {
  const factory _Unregistered(UserUnregistered user) = _$_Unregistered;
  const _Unregistered._() : super._();

  UserUnregistered get user;
  @JsonKey(ignore: true)
  _$UnregisteredCopyWith<_Unregistered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc

class _$_Unauthenticated extends _Unauthenticated {
  const _$_Unauthenticated() : super._();

  @override
  String toString() {
    return 'AuthStatus.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(UserRegistered user) authenticated,
    required TResult Function(UserUnregistered user) unregistered,
    required TResult Function() unauthenticated,
    required TResult Function(PhoneStatus status) waitingSmsCode,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function()? unauthenticated,
    TResult Function(PhoneStatus status)? waitingSmsCode,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function()? unauthenticated,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unregistered value) unregistered,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_WaitingSmsCode value) waitingSmsCode,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated extends AuthStatus {
  const factory _Unauthenticated() = _$_Unauthenticated;
  const _Unauthenticated._() : super._();
}

/// @nodoc
abstract class _$WaitingSmsCodeCopyWith<$Res> {
  factory _$WaitingSmsCodeCopyWith(
          _WaitingSmsCode value, $Res Function(_WaitingSmsCode) then) =
      __$WaitingSmsCodeCopyWithImpl<$Res>;
  $Res call({PhoneStatus status});

  $PhoneStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$WaitingSmsCodeCopyWithImpl<$Res> extends _$AuthStatusCopyWithImpl<$Res>
    implements _$WaitingSmsCodeCopyWith<$Res> {
  __$WaitingSmsCodeCopyWithImpl(
      _WaitingSmsCode _value, $Res Function(_WaitingSmsCode) _then)
      : super(_value, (v) => _then(v as _WaitingSmsCode));

  @override
  _WaitingSmsCode get _value => super._value as _WaitingSmsCode;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_WaitingSmsCode(
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

class _$_WaitingSmsCode extends _WaitingSmsCode {
  const _$_WaitingSmsCode(this.status) : super._();

  @override
  final PhoneStatus status;

  @override
  String toString() {
    return 'AuthStatus.waitingSmsCode(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WaitingSmsCode &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$WaitingSmsCodeCopyWith<_WaitingSmsCode> get copyWith =>
      __$WaitingSmsCodeCopyWithImpl<_WaitingSmsCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(UserRegistered user) authenticated,
    required TResult Function(UserUnregistered user) unregistered,
    required TResult Function() unauthenticated,
    required TResult Function(PhoneStatus status) waitingSmsCode,
  }) {
    return waitingSmsCode(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function()? unauthenticated,
    TResult Function(PhoneStatus status)? waitingSmsCode,
  }) {
    return waitingSmsCode?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function()? unauthenticated,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    required TResult orElse(),
  }) {
    if (waitingSmsCode != null) {
      return waitingSmsCode(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unregistered value) unregistered,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_WaitingSmsCode value) waitingSmsCode,
  }) {
    return waitingSmsCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
  }) {
    return waitingSmsCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    required TResult orElse(),
  }) {
    if (waitingSmsCode != null) {
      return waitingSmsCode(this);
    }
    return orElse();
  }
}

abstract class _WaitingSmsCode extends AuthStatus {
  const factory _WaitingSmsCode(PhoneStatus status) = _$_WaitingSmsCode;
  const _WaitingSmsCode._() : super._();

  PhoneStatus get status;
  @JsonKey(ignore: true)
  _$WaitingSmsCodeCopyWith<_WaitingSmsCode> get copyWith =>
      throw _privateConstructorUsedError;
}
