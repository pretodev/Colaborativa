// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'achievement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Achievement {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get maxLevel => throw _privateConstructorUsedError;
  int get maxLevelProgess => throw _privateConstructorUsedError;
  int get userLevel => throw _privateConstructorUsedError;
  int get userProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AchievementCopyWith<Achievement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementCopyWith<$Res> {
  factory $AchievementCopyWith(
          Achievement value, $Res Function(Achievement) then) =
      _$AchievementCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String description,
      int maxLevel,
      int maxLevelProgess,
      int userLevel,
      int userProgress});
}

/// @nodoc
class _$AchievementCopyWithImpl<$Res> implements $AchievementCopyWith<$Res> {
  _$AchievementCopyWithImpl(this._value, this._then);

  final Achievement _value;
  // ignore: unused_field
  final $Res Function(Achievement) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? maxLevel = freezed,
    Object? maxLevelProgess = freezed,
    Object? userLevel = freezed,
    Object? userProgress = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      maxLevel: maxLevel == freezed
          ? _value.maxLevel
          : maxLevel // ignore: cast_nullable_to_non_nullable
              as int,
      maxLevelProgess: maxLevelProgess == freezed
          ? _value.maxLevelProgess
          : maxLevelProgess // ignore: cast_nullable_to_non_nullable
              as int,
      userLevel: userLevel == freezed
          ? _value.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int,
      userProgress: userProgress == freezed
          ? _value.userProgress
          : userProgress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_AchievementCopyWith<$Res>
    implements $AchievementCopyWith<$Res> {
  factory _$$_AchievementCopyWith(
          _$_Achievement value, $Res Function(_$_Achievement) then) =
      __$$_AchievementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String description,
      int maxLevel,
      int maxLevelProgess,
      int userLevel,
      int userProgress});
}

/// @nodoc
class __$$_AchievementCopyWithImpl<$Res> extends _$AchievementCopyWithImpl<$Res>
    implements _$$_AchievementCopyWith<$Res> {
  __$$_AchievementCopyWithImpl(
      _$_Achievement _value, $Res Function(_$_Achievement) _then)
      : super(_value, (v) => _then(v as _$_Achievement));

  @override
  _$_Achievement get _value => super._value as _$_Achievement;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? maxLevel = freezed,
    Object? maxLevelProgess = freezed,
    Object? userLevel = freezed,
    Object? userProgress = freezed,
  }) {
    return _then(_$_Achievement(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      maxLevel: maxLevel == freezed
          ? _value.maxLevel
          : maxLevel // ignore: cast_nullable_to_non_nullable
              as int,
      maxLevelProgess: maxLevelProgess == freezed
          ? _value.maxLevelProgess
          : maxLevelProgess // ignore: cast_nullable_to_non_nullable
              as int,
      userLevel: userLevel == freezed
          ? _value.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int,
      userProgress: userProgress == freezed
          ? _value.userProgress
          : userProgress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Achievement extends _Achievement {
  const _$_Achievement(
      {required this.id,
      required this.description,
      required this.maxLevel,
      required this.maxLevelProgess,
      required this.userLevel,
      required this.userProgress})
      : super._();

  @override
  final String id;
  @override
  final String description;
  @override
  final int maxLevel;
  @override
  final int maxLevelProgess;
  @override
  final int userLevel;
  @override
  final int userProgress;

  @override
  String toString() {
    return 'Achievement(id: $id, description: $description, maxLevel: $maxLevel, maxLevelProgess: $maxLevelProgess, userLevel: $userLevel, userProgress: $userProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Achievement &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.maxLevel, maxLevel) &&
            const DeepCollectionEquality()
                .equals(other.maxLevelProgess, maxLevelProgess) &&
            const DeepCollectionEquality().equals(other.userLevel, userLevel) &&
            const DeepCollectionEquality()
                .equals(other.userProgress, userProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(maxLevel),
      const DeepCollectionEquality().hash(maxLevelProgess),
      const DeepCollectionEquality().hash(userLevel),
      const DeepCollectionEquality().hash(userProgress));

  @JsonKey(ignore: true)
  @override
  _$$_AchievementCopyWith<_$_Achievement> get copyWith =>
      __$$_AchievementCopyWithImpl<_$_Achievement>(this, _$identity);
}

abstract class _Achievement extends Achievement {
  const factory _Achievement(
      {required final String id,
      required final String description,
      required final int maxLevel,
      required final int maxLevelProgess,
      required final int userLevel,
      required final int userProgress}) = _$_Achievement;
  const _Achievement._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get maxLevel => throw _privateConstructorUsedError;
  @override
  int get maxLevelProgess => throw _privateConstructorUsedError;
  @override
  int get userLevel => throw _privateConstructorUsedError;
  @override
  int get userProgress => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AchievementCopyWith<_$_Achievement> get copyWith =>
      throw _privateConstructorUsedError;
}
