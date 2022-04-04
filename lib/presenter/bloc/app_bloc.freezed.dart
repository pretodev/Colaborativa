// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  _AppLoadUser loadUser() {
    return const _AppLoadUser();
  }

  _AppChangeAuthStatus changeAuthStatus(AuthStatus status) {
    return _AppChangeAuthStatus(
      status,
    );
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function(AuthStatus status) changeAuthStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function(AuthStatus status)? changeAuthStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function(AuthStatus status)? changeAuthStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppLoadUser value) loadUser,
    required TResult Function(_AppChangeAuthStatus value) changeAuthStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppLoadUser value)? loadUser,
    TResult Function(_AppChangeAuthStatus value)? changeAuthStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoadUser value)? loadUser,
    TResult Function(_AppChangeAuthStatus value)? changeAuthStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$AppLoadUserCopyWith<$Res> {
  factory _$AppLoadUserCopyWith(
          _AppLoadUser value, $Res Function(_AppLoadUser) then) =
      __$AppLoadUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppLoadUserCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$AppLoadUserCopyWith<$Res> {
  __$AppLoadUserCopyWithImpl(
      _AppLoadUser _value, $Res Function(_AppLoadUser) _then)
      : super(_value, (v) => _then(v as _AppLoadUser));

  @override
  _AppLoadUser get _value => super._value as _AppLoadUser;
}

/// @nodoc

class _$_AppLoadUser implements _AppLoadUser {
  const _$_AppLoadUser();

  @override
  String toString() {
    return 'AppEvent.loadUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AppLoadUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function(AuthStatus status) changeAuthStatus,
  }) {
    return loadUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function(AuthStatus status)? changeAuthStatus,
  }) {
    return loadUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function(AuthStatus status)? changeAuthStatus,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppLoadUser value) loadUser,
    required TResult Function(_AppChangeAuthStatus value) changeAuthStatus,
  }) {
    return loadUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppLoadUser value)? loadUser,
    TResult Function(_AppChangeAuthStatus value)? changeAuthStatus,
  }) {
    return loadUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoadUser value)? loadUser,
    TResult Function(_AppChangeAuthStatus value)? changeAuthStatus,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser(this);
    }
    return orElse();
  }
}

abstract class _AppLoadUser implements AppEvent {
  const factory _AppLoadUser() = _$_AppLoadUser;
}

/// @nodoc
abstract class _$AppChangeAuthStatusCopyWith<$Res> {
  factory _$AppChangeAuthStatusCopyWith(_AppChangeAuthStatus value,
          $Res Function(_AppChangeAuthStatus) then) =
      __$AppChangeAuthStatusCopyWithImpl<$Res>;
  $Res call({AuthStatus status});

  $AuthStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$AppChangeAuthStatusCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$AppChangeAuthStatusCopyWith<$Res> {
  __$AppChangeAuthStatusCopyWithImpl(
      _AppChangeAuthStatus _value, $Res Function(_AppChangeAuthStatus) _then)
      : super(_value, (v) => _then(v as _AppChangeAuthStatus));

  @override
  _AppChangeAuthStatus get _value => super._value as _AppChangeAuthStatus;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_AppChangeAuthStatus(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }

  @override
  $AuthStatusCopyWith<$Res> get status {
    return $AuthStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$_AppChangeAuthStatus implements _AppChangeAuthStatus {
  const _$_AppChangeAuthStatus(this.status);

  @override
  final AuthStatus status;

  @override
  String toString() {
    return 'AppEvent.changeAuthStatus(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppChangeAuthStatus &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$AppChangeAuthStatusCopyWith<_AppChangeAuthStatus> get copyWith =>
      __$AppChangeAuthStatusCopyWithImpl<_AppChangeAuthStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function(AuthStatus status) changeAuthStatus,
  }) {
    return changeAuthStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function(AuthStatus status)? changeAuthStatus,
  }) {
    return changeAuthStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function(AuthStatus status)? changeAuthStatus,
    required TResult orElse(),
  }) {
    if (changeAuthStatus != null) {
      return changeAuthStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppLoadUser value) loadUser,
    required TResult Function(_AppChangeAuthStatus value) changeAuthStatus,
  }) {
    return changeAuthStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppLoadUser value)? loadUser,
    TResult Function(_AppChangeAuthStatus value)? changeAuthStatus,
  }) {
    return changeAuthStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLoadUser value)? loadUser,
    TResult Function(_AppChangeAuthStatus value)? changeAuthStatus,
    required TResult orElse(),
  }) {
    if (changeAuthStatus != null) {
      return changeAuthStatus(this);
    }
    return orElse();
  }
}

abstract class _AppChangeAuthStatus implements AppEvent {
  const factory _AppChangeAuthStatus(AuthStatus status) =
      _$_AppChangeAuthStatus;

  AuthStatus get status;
  @JsonKey(ignore: true)
  _$AppChangeAuthStatusCopyWith<_AppChangeAuthStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _None none() {
    return const _None();
  }

  _AppStarting starting() {
    return const _AppStarting();
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

  _WaitingSmsCode waitingSmsCode(PhoneStatus status) {
    return _WaitingSmsCode(
      status,
    );
  }

  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() starting,
    required TResult Function(UserRegistered user) authenticated,
    required TResult Function(UserUnregistered user) unregistered,
    required TResult Function(PhoneStatus status) waitingSmsCode,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? starting,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    TResult Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? starting,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_AppStarting value) starting,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unregistered value) unregistered,
    required TResult Function(_WaitingSmsCode value) waitingSmsCode,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_AppStarting value)? starting,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_AppStarting value)? starting,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

/// @nodoc

class _$_None implements _None {
  const _$_None();

  @override
  String toString() {
    return 'AppState.none()';
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
    required TResult Function() starting,
    required TResult Function(UserRegistered user) authenticated,
    required TResult Function(UserUnregistered user) unregistered,
    required TResult Function(PhoneStatus status) waitingSmsCode,
    required TResult Function() unauthenticated,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? starting,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    TResult Function()? unauthenticated,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? starting,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    TResult Function()? unauthenticated,
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
    required TResult Function(_AppStarting value) starting,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unregistered value) unregistered,
    required TResult Function(_WaitingSmsCode value) waitingSmsCode,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_AppStarting value)? starting,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_AppStarting value)? starting,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements AppState {
  const factory _None() = _$_None;
}

/// @nodoc
abstract class _$AppStartingCopyWith<$Res> {
  factory _$AppStartingCopyWith(
          _AppStarting value, $Res Function(_AppStarting) then) =
      __$AppStartingCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppStartingCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStartingCopyWith<$Res> {
  __$AppStartingCopyWithImpl(
      _AppStarting _value, $Res Function(_AppStarting) _then)
      : super(_value, (v) => _then(v as _AppStarting));

  @override
  _AppStarting get _value => super._value as _AppStarting;
}

/// @nodoc

class _$_AppStarting implements _AppStarting {
  const _$_AppStarting();

  @override
  String toString() {
    return 'AppState.starting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AppStarting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() starting,
    required TResult Function(UserRegistered user) authenticated,
    required TResult Function(UserUnregistered user) unregistered,
    required TResult Function(PhoneStatus status) waitingSmsCode,
    required TResult Function() unauthenticated,
  }) {
    return starting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? starting,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    TResult Function()? unauthenticated,
  }) {
    return starting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? starting,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (starting != null) {
      return starting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_AppStarting value) starting,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unregistered value) unregistered,
    required TResult Function(_WaitingSmsCode value) waitingSmsCode,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return starting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_AppStarting value)? starting,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) {
    return starting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_AppStarting value)? starting,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (starting != null) {
      return starting(this);
    }
    return orElse();
  }
}

abstract class _AppStarting implements AppState {
  const factory _AppStarting() = _$_AppStarting;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({UserRegistered user});
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
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

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.user);

  @override
  final UserRegistered user;

  @override
  String toString() {
    return 'AppState.authenticated(user: $user)';
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
    required TResult Function() starting,
    required TResult Function(UserRegistered user) authenticated,
    required TResult Function(UserUnregistered user) unregistered,
    required TResult Function(PhoneStatus status) waitingSmsCode,
    required TResult Function() unauthenticated,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? starting,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    TResult Function()? unauthenticated,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? starting,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    TResult Function()? unauthenticated,
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
    required TResult Function(_AppStarting value) starting,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unregistered value) unregistered,
    required TResult Function(_WaitingSmsCode value) waitingSmsCode,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_AppStarting value)? starting,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_AppStarting value)? starting,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AppState {
  const factory _Authenticated(UserRegistered user) = _$_Authenticated;

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
class __$UnregisteredCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
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

class _$_Unregistered implements _Unregistered {
  const _$_Unregistered(this.user);

  @override
  final UserUnregistered user;

  @override
  String toString() {
    return 'AppState.unregistered(user: $user)';
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
    required TResult Function() starting,
    required TResult Function(UserRegistered user) authenticated,
    required TResult Function(UserUnregistered user) unregistered,
    required TResult Function(PhoneStatus status) waitingSmsCode,
    required TResult Function() unauthenticated,
  }) {
    return unregistered(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? starting,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    TResult Function()? unauthenticated,
  }) {
    return unregistered?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? starting,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    TResult Function()? unauthenticated,
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
    required TResult Function(_AppStarting value) starting,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unregistered value) unregistered,
    required TResult Function(_WaitingSmsCode value) waitingSmsCode,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return unregistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_AppStarting value)? starting,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) {
    return unregistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_AppStarting value)? starting,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unregistered != null) {
      return unregistered(this);
    }
    return orElse();
  }
}

abstract class _Unregistered implements AppState {
  const factory _Unregistered(UserUnregistered user) = _$_Unregistered;

  UserUnregistered get user;
  @JsonKey(ignore: true)
  _$UnregisteredCopyWith<_Unregistered> get copyWith =>
      throw _privateConstructorUsedError;
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
class __$WaitingSmsCodeCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
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

class _$_WaitingSmsCode implements _WaitingSmsCode {
  const _$_WaitingSmsCode(this.status);

  @override
  final PhoneStatus status;

  @override
  String toString() {
    return 'AppState.waitingSmsCode(status: $status)';
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
    required TResult Function() starting,
    required TResult Function(UserRegistered user) authenticated,
    required TResult Function(UserUnregistered user) unregistered,
    required TResult Function(PhoneStatus status) waitingSmsCode,
    required TResult Function() unauthenticated,
  }) {
    return waitingSmsCode(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? starting,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    TResult Function()? unauthenticated,
  }) {
    return waitingSmsCode?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? starting,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    TResult Function()? unauthenticated,
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
    required TResult Function(_AppStarting value) starting,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unregistered value) unregistered,
    required TResult Function(_WaitingSmsCode value) waitingSmsCode,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return waitingSmsCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_AppStarting value)? starting,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) {
    return waitingSmsCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_AppStarting value)? starting,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (waitingSmsCode != null) {
      return waitingSmsCode(this);
    }
    return orElse();
  }
}

abstract class _WaitingSmsCode implements AppState {
  const factory _WaitingSmsCode(PhoneStatus status) = _$_WaitingSmsCode;

  PhoneStatus get status;
  @JsonKey(ignore: true)
  _$WaitingSmsCodeCopyWith<_WaitingSmsCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AppState.unauthenticated()';
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
    required TResult Function() starting,
    required TResult Function(UserRegistered user) authenticated,
    required TResult Function(UserUnregistered user) unregistered,
    required TResult Function(PhoneStatus status) waitingSmsCode,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? starting,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    TResult Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? starting,
    TResult Function(UserRegistered user)? authenticated,
    TResult Function(UserUnregistered user)? unregistered,
    TResult Function(PhoneStatus status)? waitingSmsCode,
    TResult Function()? unauthenticated,
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
    required TResult Function(_AppStarting value) starting,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unregistered value) unregistered,
    required TResult Function(_WaitingSmsCode value) waitingSmsCode,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_AppStarting value)? starting,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_AppStarting value)? starting,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unregistered value)? unregistered,
    TResult Function(_WaitingSmsCode value)? waitingSmsCode,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AppState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}
