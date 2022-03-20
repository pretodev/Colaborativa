// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStatusTearOff {
  const _$UserStatusTearOff();

  _None none() {
    return const _None();
  }

  _Authenticated authenticated() {
    return const _Authenticated();
  }

  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

  _WaitingCode waitingCode(PhonePreferences preferences) {
    return _WaitingCode(
      preferences,
    );
  }
}

/// @nodoc
const $UserStatus = _$UserStatusTearOff();

/// @nodoc
mixin _$UserStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(PhonePreferences preferences) waitingCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(PhonePreferences preferences)? waitingCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(PhonePreferences preferences)? waitingCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_WaitingCode value) waitingCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingCode value)? waitingCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingCode value)? waitingCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatusCopyWith<$Res> {
  factory $UserStatusCopyWith(
          UserStatus value, $Res Function(UserStatus) then) =
      _$UserStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStatusCopyWithImpl<$Res> implements $UserStatusCopyWith<$Res> {
  _$UserStatusCopyWithImpl(this._value, this._then);

  final UserStatus _value;
  // ignore: unused_field
  final $Res Function(UserStatus) _then;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends _$UserStatusCopyWithImpl<$Res>
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
    return 'UserStatus.none()';
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
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(PhonePreferences preferences) waitingCode,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(PhonePreferences preferences)? waitingCode,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(PhonePreferences preferences)? waitingCode,
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
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_WaitingCode value) waitingCode,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingCode value)? waitingCode,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingCode value)? waitingCode,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None extends UserStatus {
  const factory _None() = _$_None;
  const _None._() : super._();
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$UserStatusCopyWithImpl<$Res>
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
    return 'UserStatus.authenticated()';
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
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(PhonePreferences preferences) waitingCode,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(PhonePreferences preferences)? waitingCode,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(PhonePreferences preferences)? waitingCode,
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
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_WaitingCode value) waitingCode,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingCode value)? waitingCode,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingCode value)? waitingCode,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated extends UserStatus {
  const factory _Authenticated() = _$_Authenticated;
  const _Authenticated._() : super._();
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res>
    extends _$UserStatusCopyWithImpl<$Res>
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
    return 'UserStatus.unauthenticated()';
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
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(PhonePreferences preferences) waitingCode,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(PhonePreferences preferences)? waitingCode,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(PhonePreferences preferences)? waitingCode,
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
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_WaitingCode value) waitingCode,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingCode value)? waitingCode,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingCode value)? waitingCode,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated extends UserStatus {
  const factory _Unauthenticated() = _$_Unauthenticated;
  const _Unauthenticated._() : super._();
}

/// @nodoc
abstract class _$WaitingCodeCopyWith<$Res> {
  factory _$WaitingCodeCopyWith(
          _WaitingCode value, $Res Function(_WaitingCode) then) =
      __$WaitingCodeCopyWithImpl<$Res>;
  $Res call({PhonePreferences preferences});

  $PhonePreferencesCopyWith<$Res> get preferences;
}

/// @nodoc
class __$WaitingCodeCopyWithImpl<$Res> extends _$UserStatusCopyWithImpl<$Res>
    implements _$WaitingCodeCopyWith<$Res> {
  __$WaitingCodeCopyWithImpl(
      _WaitingCode _value, $Res Function(_WaitingCode) _then)
      : super(_value, (v) => _then(v as _WaitingCode));

  @override
  _WaitingCode get _value => super._value as _WaitingCode;

  @override
  $Res call({
    Object? preferences = freezed,
  }) {
    return _then(_WaitingCode(
      preferences == freezed
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as PhonePreferences,
    ));
  }

  @override
  $PhonePreferencesCopyWith<$Res> get preferences {
    return $PhonePreferencesCopyWith<$Res>(_value.preferences, (value) {
      return _then(_value.copyWith(preferences: value));
    });
  }
}

/// @nodoc

class _$_WaitingCode extends _WaitingCode {
  const _$_WaitingCode(this.preferences) : super._();

  @override
  final PhonePreferences preferences;

  @override
  String toString() {
    return 'UserStatus.waitingCode(preferences: $preferences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WaitingCode &&
            const DeepCollectionEquality()
                .equals(other.preferences, preferences));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(preferences));

  @JsonKey(ignore: true)
  @override
  _$WaitingCodeCopyWith<_WaitingCode> get copyWith =>
      __$WaitingCodeCopyWithImpl<_WaitingCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(PhonePreferences preferences) waitingCode,
  }) {
    return waitingCode(preferences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(PhonePreferences preferences)? waitingCode,
  }) {
    return waitingCode?.call(preferences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(PhonePreferences preferences)? waitingCode,
    required TResult orElse(),
  }) {
    if (waitingCode != null) {
      return waitingCode(preferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_WaitingCode value) waitingCode,
  }) {
    return waitingCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingCode value)? waitingCode,
  }) {
    return waitingCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_WaitingCode value)? waitingCode,
    required TResult orElse(),
  }) {
    if (waitingCode != null) {
      return waitingCode(this);
    }
    return orElse();
  }
}

abstract class _WaitingCode extends UserStatus {
  const factory _WaitingCode(PhonePreferences preferences) = _$_WaitingCode;
  const _WaitingCode._() : super._();

  PhonePreferences get preferences;
  @JsonKey(ignore: true)
  _$WaitingCodeCopyWith<_WaitingCode> get copyWith =>
      throw _privateConstructorUsedError;
}
