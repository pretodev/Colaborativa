// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneStatus {
  String get verificationId => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneStatusCopyWith<PhoneStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneStatusCopyWith<$Res> {
  factory $PhoneStatusCopyWith(
          PhoneStatus value, $Res Function(PhoneStatus) then) =
      _$PhoneStatusCopyWithImpl<$Res>;
  $Res call({String verificationId, String phoneNumber, DateTime timestamp});
}

/// @nodoc
class _$PhoneStatusCopyWithImpl<$Res> implements $PhoneStatusCopyWith<$Res> {
  _$PhoneStatusCopyWithImpl(this._value, this._then);

  final PhoneStatus _value;
  // ignore: unused_field
  final $Res Function(PhoneStatus) _then;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? phoneNumber = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_PhoneStatusCopyWith<$Res>
    implements $PhoneStatusCopyWith<$Res> {
  factory _$$_PhoneStatusCopyWith(
          _$_PhoneStatus value, $Res Function(_$_PhoneStatus) then) =
      __$$_PhoneStatusCopyWithImpl<$Res>;
  @override
  $Res call({String verificationId, String phoneNumber, DateTime timestamp});
}

/// @nodoc
class __$$_PhoneStatusCopyWithImpl<$Res> extends _$PhoneStatusCopyWithImpl<$Res>
    implements _$$_PhoneStatusCopyWith<$Res> {
  __$$_PhoneStatusCopyWithImpl(
      _$_PhoneStatus _value, $Res Function(_$_PhoneStatus) _then)
      : super(_value, (v) => _then(v as _$_PhoneStatus));

  @override
  _$_PhoneStatus get _value => super._value as _$_PhoneStatus;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? phoneNumber = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$_PhoneStatus(
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_PhoneStatus extends _PhoneStatus {
  const _$_PhoneStatus(
      {required this.verificationId,
      required this.phoneNumber,
      required this.timestamp})
      : super._();

  @override
  final String verificationId;
  @override
  final String phoneNumber;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'PhoneStatus(verificationId: $verificationId, phoneNumber: $phoneNumber, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneStatus &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(verificationId),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  _$$_PhoneStatusCopyWith<_$_PhoneStatus> get copyWith =>
      __$$_PhoneStatusCopyWithImpl<_$_PhoneStatus>(this, _$identity);
}

abstract class _PhoneStatus extends PhoneStatus {
  const factory _PhoneStatus(
      {required final String verificationId,
      required final String phoneNumber,
      required final DateTime timestamp}) = _$_PhoneStatus;
  const _PhoneStatus._() : super._();

  @override
  String get verificationId => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  DateTime get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneStatusCopyWith<_$_PhoneStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
