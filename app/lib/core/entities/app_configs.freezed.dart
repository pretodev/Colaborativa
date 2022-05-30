// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_configs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppConfigs {
  Map<String, List<String>> get chatSSuggestions =>
      throw _privateConstructorUsedError;
  String get newsUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppConfigsCopyWith<AppConfigs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigsCopyWith<$Res> {
  factory $AppConfigsCopyWith(
          AppConfigs value, $Res Function(AppConfigs) then) =
      _$AppConfigsCopyWithImpl<$Res>;
  $Res call({Map<String, List<String>> chatSSuggestions, String newsUrl});
}

/// @nodoc
class _$AppConfigsCopyWithImpl<$Res> implements $AppConfigsCopyWith<$Res> {
  _$AppConfigsCopyWithImpl(this._value, this._then);

  final AppConfigs _value;
  // ignore: unused_field
  final $Res Function(AppConfigs) _then;

  @override
  $Res call({
    Object? chatSSuggestions = freezed,
    Object? newsUrl = freezed,
  }) {
    return _then(_value.copyWith(
      chatSSuggestions: chatSSuggestions == freezed
          ? _value.chatSSuggestions
          : chatSSuggestions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      newsUrl: newsUrl == freezed
          ? _value.newsUrl
          : newsUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AppConfigsCopyWith<$Res>
    implements $AppConfigsCopyWith<$Res> {
  factory _$$_AppConfigsCopyWith(
          _$_AppConfigs value, $Res Function(_$_AppConfigs) then) =
      __$$_AppConfigsCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, List<String>> chatSSuggestions, String newsUrl});
}

/// @nodoc
class __$$_AppConfigsCopyWithImpl<$Res> extends _$AppConfigsCopyWithImpl<$Res>
    implements _$$_AppConfigsCopyWith<$Res> {
  __$$_AppConfigsCopyWithImpl(
      _$_AppConfigs _value, $Res Function(_$_AppConfigs) _then)
      : super(_value, (v) => _then(v as _$_AppConfigs));

  @override
  _$_AppConfigs get _value => super._value as _$_AppConfigs;

  @override
  $Res call({
    Object? chatSSuggestions = freezed,
    Object? newsUrl = freezed,
  }) {
    return _then(_$_AppConfigs(
      chatSSuggestions: chatSSuggestions == freezed
          ? _value._chatSSuggestions
          : chatSSuggestions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      newsUrl: newsUrl == freezed
          ? _value.newsUrl
          : newsUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppConfigs extends _AppConfigs {
  const _$_AppConfigs(
      {required final Map<String, List<String>> chatSSuggestions,
      required this.newsUrl})
      : _chatSSuggestions = chatSSuggestions,
        super._();

  final Map<String, List<String>> _chatSSuggestions;
  @override
  Map<String, List<String>> get chatSSuggestions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_chatSSuggestions);
  }

  @override
  final String newsUrl;

  @override
  String toString() {
    return 'AppConfigs(chatSSuggestions: $chatSSuggestions, newsUrl: $newsUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppConfigs &&
            const DeepCollectionEquality()
                .equals(other._chatSSuggestions, _chatSSuggestions) &&
            const DeepCollectionEquality().equals(other.newsUrl, newsUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chatSSuggestions),
      const DeepCollectionEquality().hash(newsUrl));

  @JsonKey(ignore: true)
  @override
  _$$_AppConfigsCopyWith<_$_AppConfigs> get copyWith =>
      __$$_AppConfigsCopyWithImpl<_$_AppConfigs>(this, _$identity);
}

abstract class _AppConfigs extends AppConfigs {
  const factory _AppConfigs(
      {required final Map<String, List<String>> chatSSuggestions,
      required final String newsUrl}) = _$_AppConfigs;
  const _AppConfigs._() : super._();

  @override
  Map<String, List<String>> get chatSSuggestions =>
      throw _privateConstructorUsedError;
  @override
  String get newsUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppConfigsCopyWith<_$_AppConfigs> get copyWith =>
      throw _privateConstructorUsedError;
}
