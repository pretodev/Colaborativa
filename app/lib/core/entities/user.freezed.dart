// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() unauthenticated,
    required TResult Function(String id) unregistered,
    required TResult Function(String id, String name) registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? unauthenticated,
    TResult Function(String id)? unregistered,
    TResult Function(String id, String name)? registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? unauthenticated,
    TResult Function(String id)? unregistered,
    TResult Function(String id, String name)? registered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNone value) none,
    required TResult Function(UserUnauthenticated value) unauthenticated,
    required TResult Function(UserUnregistered value) unregistered,
    required TResult Function(UserRegistered value) registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNone value)? none,
    TResult Function(UserUnauthenticated value)? unauthenticated,
    TResult Function(UserUnregistered value)? unregistered,
    TResult Function(UserRegistered value)? registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNone value)? none,
    TResult Function(UserUnauthenticated value)? unauthenticated,
    TResult Function(UserUnregistered value)? unregistered,
    TResult Function(UserRegistered value)? registered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;
}

/// @nodoc
abstract class _$$UserNoneCopyWith<$Res> {
  factory _$$UserNoneCopyWith(
          _$UserNone value, $Res Function(_$UserNone) then) =
      __$$UserNoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNoneCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$UserNoneCopyWith<$Res> {
  __$$UserNoneCopyWithImpl(_$UserNone _value, $Res Function(_$UserNone) _then)
      : super(_value, (v) => _then(v as _$UserNone));

  @override
  _$UserNone get _value => super._value as _$UserNone;
}

/// @nodoc

class _$UserNone extends UserNone {
  const _$UserNone() : super._();

  @override
  String toString() {
    return 'User.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() unauthenticated,
    required TResult Function(String id) unregistered,
    required TResult Function(String id, String name) registered,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? unauthenticated,
    TResult Function(String id)? unregistered,
    TResult Function(String id, String name)? registered,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? unauthenticated,
    TResult Function(String id)? unregistered,
    TResult Function(String id, String name)? registered,
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
    required TResult Function(UserNone value) none,
    required TResult Function(UserUnauthenticated value) unauthenticated,
    required TResult Function(UserUnregistered value) unregistered,
    required TResult Function(UserRegistered value) registered,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNone value)? none,
    TResult Function(UserUnauthenticated value)? unauthenticated,
    TResult Function(UserUnregistered value)? unregistered,
    TResult Function(UserRegistered value)? registered,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNone value)? none,
    TResult Function(UserUnauthenticated value)? unauthenticated,
    TResult Function(UserUnregistered value)? unregistered,
    TResult Function(UserRegistered value)? registered,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class UserNone extends User {
  const factory UserNone() = _$UserNone;
  const UserNone._() : super._();
}

/// @nodoc
abstract class _$$UserUnauthenticatedCopyWith<$Res> {
  factory _$$UserUnauthenticatedCopyWith(_$UserUnauthenticated value,
          $Res Function(_$UserUnauthenticated) then) =
      __$$UserUnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserUnauthenticatedCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$UserUnauthenticatedCopyWith<$Res> {
  __$$UserUnauthenticatedCopyWithImpl(
      _$UserUnauthenticated _value, $Res Function(_$UserUnauthenticated) _then)
      : super(_value, (v) => _then(v as _$UserUnauthenticated));

  @override
  _$UserUnauthenticated get _value => super._value as _$UserUnauthenticated;
}

/// @nodoc

class _$UserUnauthenticated extends UserUnauthenticated {
  const _$UserUnauthenticated() : super._();

  @override
  String toString() {
    return 'User.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() unauthenticated,
    required TResult Function(String id) unregistered,
    required TResult Function(String id, String name) registered,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? unauthenticated,
    TResult Function(String id)? unregistered,
    TResult Function(String id, String name)? registered,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? unauthenticated,
    TResult Function(String id)? unregistered,
    TResult Function(String id, String name)? registered,
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
    required TResult Function(UserNone value) none,
    required TResult Function(UserUnauthenticated value) unauthenticated,
    required TResult Function(UserUnregistered value) unregistered,
    required TResult Function(UserRegistered value) registered,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNone value)? none,
    TResult Function(UserUnauthenticated value)? unauthenticated,
    TResult Function(UserUnregistered value)? unregistered,
    TResult Function(UserRegistered value)? registered,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNone value)? none,
    TResult Function(UserUnauthenticated value)? unauthenticated,
    TResult Function(UserUnregistered value)? unregistered,
    TResult Function(UserRegistered value)? registered,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UserUnauthenticated extends User {
  const factory UserUnauthenticated() = _$UserUnauthenticated;
  const UserUnauthenticated._() : super._();
}

/// @nodoc
abstract class _$$UserUnregisteredCopyWith<$Res> {
  factory _$$UserUnregisteredCopyWith(
          _$UserUnregistered value, $Res Function(_$UserUnregistered) then) =
      __$$UserUnregisteredCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$$UserUnregisteredCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$UserUnregisteredCopyWith<$Res> {
  __$$UserUnregisteredCopyWithImpl(
      _$UserUnregistered _value, $Res Function(_$UserUnregistered) _then)
      : super(_value, (v) => _then(v as _$UserUnregistered));

  @override
  _$UserUnregistered get _value => super._value as _$UserUnregistered;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$UserUnregistered(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserUnregistered extends UserUnregistered {
  const _$UserUnregistered({required this.id}) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'User.unregistered(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUnregistered &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$UserUnregisteredCopyWith<_$UserUnregistered> get copyWith =>
      __$$UserUnregisteredCopyWithImpl<_$UserUnregistered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() unauthenticated,
    required TResult Function(String id) unregistered,
    required TResult Function(String id, String name) registered,
  }) {
    return unregistered(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? unauthenticated,
    TResult Function(String id)? unregistered,
    TResult Function(String id, String name)? registered,
  }) {
    return unregistered?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? unauthenticated,
    TResult Function(String id)? unregistered,
    TResult Function(String id, String name)? registered,
    required TResult orElse(),
  }) {
    if (unregistered != null) {
      return unregistered(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNone value) none,
    required TResult Function(UserUnauthenticated value) unauthenticated,
    required TResult Function(UserUnregistered value) unregistered,
    required TResult Function(UserRegistered value) registered,
  }) {
    return unregistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNone value)? none,
    TResult Function(UserUnauthenticated value)? unauthenticated,
    TResult Function(UserUnregistered value)? unregistered,
    TResult Function(UserRegistered value)? registered,
  }) {
    return unregistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNone value)? none,
    TResult Function(UserUnauthenticated value)? unauthenticated,
    TResult Function(UserUnregistered value)? unregistered,
    TResult Function(UserRegistered value)? registered,
    required TResult orElse(),
  }) {
    if (unregistered != null) {
      return unregistered(this);
    }
    return orElse();
  }
}

abstract class UserUnregistered extends User {
  const factory UserUnregistered({required final String id}) =
      _$UserUnregistered;
  const UserUnregistered._() : super._();

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UserUnregisteredCopyWith<_$UserUnregistered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRegisteredCopyWith<$Res> {
  factory _$$UserRegisteredCopyWith(
          _$UserRegistered value, $Res Function(_$UserRegistered) then) =
      __$$UserRegisteredCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class __$$UserRegisteredCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$UserRegisteredCopyWith<$Res> {
  __$$UserRegisteredCopyWithImpl(
      _$UserRegistered _value, $Res Function(_$UserRegistered) _then)
      : super(_value, (v) => _then(v as _$UserRegistered));

  @override
  _$UserRegistered get _value => super._value as _$UserRegistered;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$UserRegistered(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserRegistered extends UserRegistered {
  const _$UserRegistered({required this.id, required this.name}) : super._();

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'User.registered(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegistered &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$UserRegisteredCopyWith<_$UserRegistered> get copyWith =>
      __$$UserRegisteredCopyWithImpl<_$UserRegistered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() unauthenticated,
    required TResult Function(String id) unregistered,
    required TResult Function(String id, String name) registered,
  }) {
    return registered(id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? unauthenticated,
    TResult Function(String id)? unregistered,
    TResult Function(String id, String name)? registered,
  }) {
    return registered?.call(id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? unauthenticated,
    TResult Function(String id)? unregistered,
    TResult Function(String id, String name)? registered,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNone value) none,
    required TResult Function(UserUnauthenticated value) unauthenticated,
    required TResult Function(UserUnregistered value) unregistered,
    required TResult Function(UserRegistered value) registered,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNone value)? none,
    TResult Function(UserUnauthenticated value)? unauthenticated,
    TResult Function(UserUnregistered value)? unregistered,
    TResult Function(UserRegistered value)? registered,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNone value)? none,
    TResult Function(UserUnauthenticated value)? unauthenticated,
    TResult Function(UserUnregistered value)? unregistered,
    TResult Function(UserRegistered value)? registered,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class UserRegistered extends User {
  const factory UserRegistered(
      {required final String id,
      required final String name}) = _$UserRegistered;
  const UserRegistered._() : super._();

  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UserRegisteredCopyWith<_$UserRegistered> get copyWith =>
      throw _privateConstructorUsedError;
}
