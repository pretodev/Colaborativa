// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhonePreferences {
  String get verificationId => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhonePreferencesCopyWith<PhonePreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhonePreferencesCopyWith<$Res> {
  factory $PhonePreferencesCopyWith(
          PhonePreferences value, $Res Function(PhonePreferences) then) =
      _$PhonePreferencesCopyWithImpl<$Res>;
  $Res call({String verificationId, String phoneNumber, DateTime timestamp});
}

/// @nodoc
class _$PhonePreferencesCopyWithImpl<$Res>
    implements $PhonePreferencesCopyWith<$Res> {
  _$PhonePreferencesCopyWithImpl(this._value, this._then);

  final PhonePreferences _value;
  // ignore: unused_field
  final $Res Function(PhonePreferences) _then;

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
abstract class _$$_PhonePreferencesCopyWith<$Res>
    implements $PhonePreferencesCopyWith<$Res> {
  factory _$$_PhonePreferencesCopyWith(
          _$_PhonePreferences value, $Res Function(_$_PhonePreferences) then) =
      __$$_PhonePreferencesCopyWithImpl<$Res>;
  @override
  $Res call({String verificationId, String phoneNumber, DateTime timestamp});
}

/// @nodoc
class __$$_PhonePreferencesCopyWithImpl<$Res>
    extends _$PhonePreferencesCopyWithImpl<$Res>
    implements _$$_PhonePreferencesCopyWith<$Res> {
  __$$_PhonePreferencesCopyWithImpl(
      _$_PhonePreferences _value, $Res Function(_$_PhonePreferences) _then)
      : super(_value, (v) => _then(v as _$_PhonePreferences));

  @override
  _$_PhonePreferences get _value => super._value as _$_PhonePreferences;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? phoneNumber = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$_PhonePreferences(
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

class _$_PhonePreferences extends _PhonePreferences {
  const _$_PhonePreferences(
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
    return 'PhonePreferences(verificationId: $verificationId, phoneNumber: $phoneNumber, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhonePreferences &&
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
  _$$_PhonePreferencesCopyWith<_$_PhonePreferences> get copyWith =>
      __$$_PhonePreferencesCopyWithImpl<_$_PhonePreferences>(this, _$identity);
}

abstract class _PhonePreferences extends PhonePreferences {
  const factory _PhonePreferences(
      {required final String verificationId,
      required final String phoneNumber,
      required final DateTime timestamp}) = _$_PhonePreferences;
  const _PhonePreferences._() : super._();

  @override
  String get verificationId => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  DateTime get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PhonePreferencesCopyWith<_$_PhonePreferences> get copyWith =>
      throw _privateConstructorUsedError;
}
