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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  UserUnregistered unregistered({required String id}) {
    return UserUnregistered(
      id: id,
    );
  }

  UserRegistered registered({required String id, required String name}) {
    return UserRegistered(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) unregistered,
    required TResult Function(String id, String name) registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? unregistered,
    TResult Function(String id, String name)? registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? unregistered,
    TResult Function(String id, String name)? registered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserUnregistered value) unregistered,
    required TResult Function(UserRegistered value) registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserUnregistered value)? unregistered,
    TResult Function(UserRegistered value)? registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserUnregistered value)? unregistered,
    TResult Function(UserRegistered value)? registered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $UserUnregisteredCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory $UserUnregisteredCopyWith(
          UserUnregistered value, $Res Function(UserUnregistered) then) =
      _$UserUnregisteredCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class _$UserUnregisteredCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $UserUnregisteredCopyWith<$Res> {
  _$UserUnregisteredCopyWithImpl(
      UserUnregistered _value, $Res Function(UserUnregistered) _then)
      : super(_value, (v) => _then(v as UserUnregistered));

  @override
  UserUnregistered get _value => super._value as UserUnregistered;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(UserUnregistered(
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
            other is UserUnregistered &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $UserUnregisteredCopyWith<UserUnregistered> get copyWith =>
      _$UserUnregisteredCopyWithImpl<UserUnregistered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) unregistered,
    required TResult Function(String id, String name) registered,
  }) {
    return unregistered(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? unregistered,
    TResult Function(String id, String name)? registered,
  }) {
    return unregistered?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(UserUnregistered value) unregistered,
    required TResult Function(UserRegistered value) registered,
  }) {
    return unregistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserUnregistered value)? unregistered,
    TResult Function(UserRegistered value)? registered,
  }) {
    return unregistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  const factory UserUnregistered({required String id}) = _$UserUnregistered;
  const UserUnregistered._() : super._();

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  $UserUnregisteredCopyWith<UserUnregistered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisteredCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory $UserRegisteredCopyWith(
          UserRegistered value, $Res Function(UserRegistered) then) =
      _$UserRegisteredCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class _$UserRegisteredCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $UserRegisteredCopyWith<$Res> {
  _$UserRegisteredCopyWithImpl(
      UserRegistered _value, $Res Function(UserRegistered) _then)
      : super(_value, (v) => _then(v as UserRegistered));

  @override
  UserRegistered get _value => super._value as UserRegistered;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(UserRegistered(
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
            other is UserRegistered &&
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
  $UserRegisteredCopyWith<UserRegistered> get copyWith =>
      _$UserRegisteredCopyWithImpl<UserRegistered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) unregistered,
    required TResult Function(String id, String name) registered,
  }) {
    return registered(id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? unregistered,
    TResult Function(String id, String name)? registered,
  }) {
    return registered?.call(id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(UserUnregistered value) unregistered,
    required TResult Function(UserRegistered value) registered,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserUnregistered value)? unregistered,
    TResult Function(UserRegistered value)? registered,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  const factory UserRegistered({required String id, required String name}) =
      _$UserRegistered;
  const UserRegistered._() : super._();

  @override
  String get id;
  String get name;
  @override
  @JsonKey(ignore: true)
  $UserRegisteredCopyWith<UserRegistered> get copyWith =>
      throw _privateConstructorUsedError;
}
