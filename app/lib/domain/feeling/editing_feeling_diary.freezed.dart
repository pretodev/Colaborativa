// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'editing_feeling_diary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditingFeelingDiaryTearOff {
  const _$EditingFeelingDiaryTearOff();

  _EditingFeelingDiary call({required Feeling feeling, required String text}) {
    return _EditingFeelingDiary(
      feeling: feeling,
      text: text,
    );
  }
}

/// @nodoc
const $EditingFeelingDiary = _$EditingFeelingDiaryTearOff();

/// @nodoc
mixin _$EditingFeelingDiary {
  Feeling get feeling => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditingFeelingDiaryCopyWith<EditingFeelingDiary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditingFeelingDiaryCopyWith<$Res> {
  factory $EditingFeelingDiaryCopyWith(
          EditingFeelingDiary value, $Res Function(EditingFeelingDiary) then) =
      _$EditingFeelingDiaryCopyWithImpl<$Res>;
  $Res call({Feeling feeling, String text});
}

/// @nodoc
class _$EditingFeelingDiaryCopyWithImpl<$Res>
    implements $EditingFeelingDiaryCopyWith<$Res> {
  _$EditingFeelingDiaryCopyWithImpl(this._value, this._then);

  final EditingFeelingDiary _value;
  // ignore: unused_field
  final $Res Function(EditingFeelingDiary) _then;

  @override
  $Res call({
    Object? feeling = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      feeling: feeling == freezed
          ? _value.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as Feeling,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EditingFeelingDiaryCopyWith<$Res>
    implements $EditingFeelingDiaryCopyWith<$Res> {
  factory _$EditingFeelingDiaryCopyWith(_EditingFeelingDiary value,
          $Res Function(_EditingFeelingDiary) then) =
      __$EditingFeelingDiaryCopyWithImpl<$Res>;
  @override
  $Res call({Feeling feeling, String text});
}

/// @nodoc
class __$EditingFeelingDiaryCopyWithImpl<$Res>
    extends _$EditingFeelingDiaryCopyWithImpl<$Res>
    implements _$EditingFeelingDiaryCopyWith<$Res> {
  __$EditingFeelingDiaryCopyWithImpl(
      _EditingFeelingDiary _value, $Res Function(_EditingFeelingDiary) _then)
      : super(_value, (v) => _then(v as _EditingFeelingDiary));

  @override
  _EditingFeelingDiary get _value => super._value as _EditingFeelingDiary;

  @override
  $Res call({
    Object? feeling = freezed,
    Object? text = freezed,
  }) {
    return _then(_EditingFeelingDiary(
      feeling: feeling == freezed
          ? _value.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as Feeling,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditingFeelingDiary extends _EditingFeelingDiary {
  const _$_EditingFeelingDiary({required this.feeling, required this.text})
      : super._();

  @override
  final Feeling feeling;
  @override
  final String text;

  @override
  String toString() {
    return 'EditingFeelingDiary(feeling: $feeling, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditingFeelingDiary &&
            const DeepCollectionEquality().equals(other.feeling, feeling) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feeling),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$EditingFeelingDiaryCopyWith<_EditingFeelingDiary> get copyWith =>
      __$EditingFeelingDiaryCopyWithImpl<_EditingFeelingDiary>(
          this, _$identity);
}

abstract class _EditingFeelingDiary extends EditingFeelingDiary {
  const factory _EditingFeelingDiary(
      {required Feeling feeling,
      required String text}) = _$_EditingFeelingDiary;
  const _EditingFeelingDiary._() : super._();

  @override
  Feeling get feeling;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$EditingFeelingDiaryCopyWith<_EditingFeelingDiary> get copyWith =>
      throw _privateConstructorUsedError;
}
