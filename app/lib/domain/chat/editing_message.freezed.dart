// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'editing_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditingMessage {
  String get content => throw _privateConstructorUsedError;
  Emitter get emitter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditingMessageCopyWith<EditingMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditingMessageCopyWith<$Res> {
  factory $EditingMessageCopyWith(
          EditingMessage value, $Res Function(EditingMessage) then) =
      _$EditingMessageCopyWithImpl<$Res>;
  $Res call({String content, Emitter emitter});

  $EmitterCopyWith<$Res> get emitter;
}

/// @nodoc
class _$EditingMessageCopyWithImpl<$Res>
    implements $EditingMessageCopyWith<$Res> {
  _$EditingMessageCopyWithImpl(this._value, this._then);

  final EditingMessage _value;
  // ignore: unused_field
  final $Res Function(EditingMessage) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? emitter = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      emitter: emitter == freezed
          ? _value.emitter
          : emitter // ignore: cast_nullable_to_non_nullable
              as Emitter,
    ));
  }

  @override
  $EmitterCopyWith<$Res> get emitter {
    return $EmitterCopyWith<$Res>(_value.emitter, (value) {
      return _then(_value.copyWith(emitter: value));
    });
  }
}

/// @nodoc
abstract class _$$_EditingMessageCopyWith<$Res>
    implements $EditingMessageCopyWith<$Res> {
  factory _$$_EditingMessageCopyWith(
          _$_EditingMessage value, $Res Function(_$_EditingMessage) then) =
      __$$_EditingMessageCopyWithImpl<$Res>;
  @override
  $Res call({String content, Emitter emitter});

  @override
  $EmitterCopyWith<$Res> get emitter;
}

/// @nodoc
class __$$_EditingMessageCopyWithImpl<$Res>
    extends _$EditingMessageCopyWithImpl<$Res>
    implements _$$_EditingMessageCopyWith<$Res> {
  __$$_EditingMessageCopyWithImpl(
      _$_EditingMessage _value, $Res Function(_$_EditingMessage) _then)
      : super(_value, (v) => _then(v as _$_EditingMessage));

  @override
  _$_EditingMessage get _value => super._value as _$_EditingMessage;

  @override
  $Res call({
    Object? content = freezed,
    Object? emitter = freezed,
  }) {
    return _then(_$_EditingMessage(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      emitter: emitter == freezed
          ? _value.emitter
          : emitter // ignore: cast_nullable_to_non_nullable
              as Emitter,
    ));
  }
}

/// @nodoc

class _$_EditingMessage extends _EditingMessage {
  const _$_EditingMessage({required this.content, required this.emitter})
      : super._();

  @override
  final String content;
  @override
  final Emitter emitter;

  @override
  String toString() {
    return 'EditingMessage(content: $content, emitter: $emitter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditingMessage &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.emitter, emitter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(emitter));

  @JsonKey(ignore: true)
  @override
  _$$_EditingMessageCopyWith<_$_EditingMessage> get copyWith =>
      __$$_EditingMessageCopyWithImpl<_$_EditingMessage>(this, _$identity);
}

abstract class _EditingMessage extends EditingMessage {
  const factory _EditingMessage(
      {required final String content,
      required final Emitter emitter}) = _$_EditingMessage;
  const _EditingMessage._() : super._();

  @override
  String get content => throw _privateConstructorUsedError;
  @override
  Emitter get emitter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EditingMessageCopyWith<_$_EditingMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
