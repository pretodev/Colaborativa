// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_phone_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SendPhoneStateTearOff {
  const _$SendPhoneStateTearOff();

  _None none() {
    return const _None();
  }

  _Failure failure(Exception error) {
    return _Failure(
      error,
    );
  }

  _Sending sending() {
    return const _Sending();
  }
}

/// @nodoc
const $SendPhoneState = _$SendPhoneStateTearOff();

/// @nodoc
mixin _$SendPhoneState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Exception error) failure,
    required TResult Function() sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Exception error)? failure,
    TResult Function()? sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Exception error)? failure,
    TResult Function()? sending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Sending value) sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Failure value)? failure,
    TResult Function(_Sending value)? sending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Failure value)? failure,
    TResult Function(_Sending value)? sending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPhoneStateCopyWith<$Res> {
  factory $SendPhoneStateCopyWith(
          SendPhoneState value, $Res Function(SendPhoneState) then) =
      _$SendPhoneStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendPhoneStateCopyWithImpl<$Res>
    implements $SendPhoneStateCopyWith<$Res> {
  _$SendPhoneStateCopyWithImpl(this._value, this._then);

  final SendPhoneState _value;
  // ignore: unused_field
  final $Res Function(SendPhoneState) _then;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends _$SendPhoneStateCopyWithImpl<$Res>
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
    return 'SendPhoneState.none()';
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
    required TResult Function(Exception error) failure,
    required TResult Function() sending,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Exception error)? failure,
    TResult Function()? sending,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Exception error)? failure,
    TResult Function()? sending,
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
    required TResult Function(_Failure value) failure,
    required TResult Function(_Sending value) sending,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Failure value)? failure,
    TResult Function(_Sending value)? sending,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Failure value)? failure,
    TResult Function(_Sending value)? sending,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements SendPhoneState {
  const factory _None() = _$_None;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({Exception error});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$SendPhoneStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Failure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'SendPhoneState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Exception error) failure,
    required TResult Function() sending,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Exception error)? failure,
    TResult Function()? sending,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Exception error)? failure,
    TResult Function()? sending,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Sending value) sending,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Failure value)? failure,
    TResult Function(_Sending value)? sending,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Failure value)? failure,
    TResult Function(_Sending value)? sending,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SendPhoneState {
  const factory _Failure(Exception error) = _$_Failure;

  Exception get error;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendingCopyWith<$Res> {
  factory _$SendingCopyWith(_Sending value, $Res Function(_Sending) then) =
      __$SendingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendingCopyWithImpl<$Res> extends _$SendPhoneStateCopyWithImpl<$Res>
    implements _$SendingCopyWith<$Res> {
  __$SendingCopyWithImpl(_Sending _value, $Res Function(_Sending) _then)
      : super(_value, (v) => _then(v as _Sending));

  @override
  _Sending get _value => super._value as _Sending;
}

/// @nodoc

class _$_Sending implements _Sending {
  const _$_Sending();

  @override
  String toString() {
    return 'SendPhoneState.sending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Sending);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Exception error) failure,
    required TResult Function() sending,
  }) {
    return sending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Exception error)? failure,
    TResult Function()? sending,
  }) {
    return sending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Exception error)? failure,
    TResult Function()? sending,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Sending value) sending,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Failure value)? failure,
    TResult Function(_Sending value)? sending,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Failure value)? failure,
    TResult Function(_Sending value)? sending,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class _Sending implements SendPhoneState {
  const factory _Sending() = _$_Sending;
}
