// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of user;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required UniqueId<String?> id,
      required DisplayName firstName,
      required DisplayName lastName,
      DisplayName? name,
      required EmailAddress email,
      required Phone phone,
      required Password password,
      required MediaField photo,
      bool isPrivate = false,
      AuthProvider provider = AuthProvider.regular,
      bool? active = false,
      bool? accountVerified = false,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) {
    return _User(
      id: id,
      firstName: firstName,
      lastName: lastName,
      name: name,
      email: email,
      phone: phone,
      password: password,
      photo: photo,
      isPrivate: isPrivate,
      provider: provider,
      active: active,
      accountVerified: accountVerified,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  DisplayName get firstName => throw _privateConstructorUsedError;
  DisplayName get lastName => throw _privateConstructorUsedError;
  DisplayName? get name => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  MediaField get photo => throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;
  AuthProvider get provider => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  bool? get accountVerified => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      DisplayName firstName,
      DisplayName lastName,
      DisplayName? name,
      EmailAddress email,
      Phone phone,
      Password password,
      MediaField photo,
      bool isPrivate,
      AuthProvider provider,
      bool? active,
      bool? accountVerified,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
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
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? photo = freezed,
    Object? isPrivate = freezed,
    Object? provider = freezed,
    Object? active = freezed,
    Object? accountVerified = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as MediaField,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      accountVerified: accountVerified == freezed
          ? _value.accountVerified
          : accountVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      DisplayName firstName,
      DisplayName lastName,
      DisplayName? name,
      EmailAddress email,
      Phone phone,
      Password password,
      MediaField photo,
      bool isPrivate,
      AuthProvider provider,
      bool? active,
      bool? accountVerified,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? photo = freezed,
    Object? isPrivate = freezed,
    Object? provider = freezed,
    Object? active = freezed,
    Object? accountVerified = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as MediaField,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      accountVerified: accountVerified == freezed
          ? _value.accountVerified
          : accountVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_User extends _User with DiagnosticableTreeMixin {
  const _$_User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      this.name,
      required this.email,
      required this.phone,
      required this.password,
      required this.photo,
      this.isPrivate = false,
      this.provider = AuthProvider.regular,
      this.active = false,
      this.accountVerified = false,
      this.createdAt,
      this.updatedAt,
      this.deletedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final DisplayName firstName;
  @override
  final DisplayName lastName;
  @override
  final DisplayName? name;
  @override
  final EmailAddress email;
  @override
  final Phone phone;
  @override
  final Password password;
  @override
  final MediaField photo;
  @JsonKey()
  @override
  final bool isPrivate;
  @JsonKey()
  @override
  final AuthProvider provider;
  @JsonKey()
  @override
  final bool? active;
  @JsonKey()
  @override
  final bool? accountVerified;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, name: $name, email: $email, phone: $phone, password: $password, photo: $photo, isPrivate: $isPrivate, provider: $provider, active: $active, accountVerified: $accountVerified, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(DiagnosticsProperty('isPrivate', isPrivate))
      ..add(DiagnosticsProperty('provider', provider))
      ..add(DiagnosticsProperty('active', active))
      ..add(DiagnosticsProperty('accountVerified', accountVerified))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deletedAt', deletedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.isPrivate, isPrivate) &&
            const DeepCollectionEquality().equals(other.provider, provider) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality()
                .equals(other.accountVerified, accountVerified) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(isPrivate),
      const DeepCollectionEquality().hash(provider),
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(accountVerified),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const factory _User(
      {required UniqueId<String?> id,
      required DisplayName firstName,
      required DisplayName lastName,
      DisplayName? name,
      required EmailAddress email,
      required Phone phone,
      required Password password,
      required MediaField photo,
      bool isPrivate,
      AuthProvider provider,
      bool? active,
      bool? accountVerified,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) = _$_User;
  const _User._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  DisplayName get firstName;
  @override
  DisplayName get lastName;
  @override
  DisplayName? get name;
  @override
  EmailAddress get email;
  @override
  Phone get phone;
  @override
  Password get password;
  @override
  MediaField get photo;
  @override
  bool get isPrivate;
  @override
  AuthProvider get provider;
  @override
  bool? get active;
  @override
  bool? get accountVerified;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
