// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActivityTearOff {
  const _$ActivityTearOff();

  _Activity call(
      {required String id,
      required String iconUrl,
      required String name,
      required String description,
      DateTime? lastChecking}) {
    return _Activity(
      id: id,
      iconUrl: iconUrl,
      name: name,
      description: description,
      lastChecking: lastChecking,
    );
  }
}

/// @nodoc
const $Activity = _$ActivityTearOff();

/// @nodoc
mixin _$Activity {
  String get id => throw _privateConstructorUsedError;
  String get iconUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get lastChecking => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivityCopyWith<Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String iconUrl,
      String name,
      String description,
      DateTime? lastChecking});
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res> implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  final Activity _value;
  // ignore: unused_field
  final $Res Function(Activity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? iconUrl = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? lastChecking = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      lastChecking: lastChecking == freezed
          ? _value.lastChecking
          : lastChecking // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ActivityCopyWith<$Res> implements $ActivityCopyWith<$Res> {
  factory _$ActivityCopyWith(_Activity value, $Res Function(_Activity) then) =
      __$ActivityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String iconUrl,
      String name,
      String description,
      DateTime? lastChecking});
}

/// @nodoc
class __$ActivityCopyWithImpl<$Res> extends _$ActivityCopyWithImpl<$Res>
    implements _$ActivityCopyWith<$Res> {
  __$ActivityCopyWithImpl(_Activity _value, $Res Function(_Activity) _then)
      : super(_value, (v) => _then(v as _Activity));

  @override
  _Activity get _value => super._value as _Activity;

  @override
  $Res call({
    Object? id = freezed,
    Object? iconUrl = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? lastChecking = freezed,
  }) {
    return _then(_Activity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      lastChecking: lastChecking == freezed
          ? _value.lastChecking
          : lastChecking // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Activity extends _Activity {
  const _$_Activity(
      {required this.id,
      required this.iconUrl,
      required this.name,
      required this.description,
      this.lastChecking})
      : super._();

  @override
  final String id;
  @override
  final String iconUrl;
  @override
  final String name;
  @override
  final String description;
  @override
  final DateTime? lastChecking;

  @override
  String toString() {
    return 'Activity(id: $id, iconUrl: $iconUrl, name: $name, description: $description, lastChecking: $lastChecking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Activity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.iconUrl, iconUrl) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.lastChecking, lastChecking));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(iconUrl),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(lastChecking));

  @JsonKey(ignore: true)
  @override
  _$ActivityCopyWith<_Activity> get copyWith =>
      __$ActivityCopyWithImpl<_Activity>(this, _$identity);
}

abstract class _Activity extends Activity {
  const factory _Activity(
      {required String id,
      required String iconUrl,
      required String name,
      required String description,
      DateTime? lastChecking}) = _$_Activity;
  const _Activity._() : super._();

  @override
  String get id;
  @override
  String get iconUrl;
  @override
  String get name;
  @override
  String get description;
  @override
  DateTime? get lastChecking;
  @override
  @JsonKey(ignore: true)
  _$ActivityCopyWith<_Activity> get copyWith =>
      throw _privateConstructorUsedError;
}
