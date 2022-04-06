// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of app_database.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
class _$UserDTOTearOff {
  const _$UserDTOTearOff();

  _UserDTO call(
      {@primaryKey @JsonKey(name: '_id') String? id,
      String? token,
      String? firstName,
      String? lastName,
      String? fullName,
      @BooleanSerializer() bool? isPrivate,
      String? email,
      @JsonKey(name: 'mobile') String? phone,
      String? password,
      @JsonKey(name: 'current_password') String? oldPassword,
      @JsonKey(name: 'password_confirmation') String? confirmation,
      @JsonKey(name: 'country') String? countryName,
      String? platform,
      String? avatar,
      @BooleanSerializer() bool? active,
      @BooleanSerializer() bool? accountVerified,
      @AuthProviderSerializer() AuthProvider? provider,
      @TimestampConverter() DateTime? createdBy,
      @TimestampConverter() DateTime? updatedBy,
      @TimestampConverter() DateTime? deletedBy,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt}) {
    return _UserDTO(
      id: id,
      token: token,
      firstName: firstName,
      lastName: lastName,
      fullName: fullName,
      isPrivate: isPrivate,
      email: email,
      phone: phone,
      password: password,
      oldPassword: oldPassword,
      confirmation: confirmation,
      countryName: countryName,
      platform: platform,
      avatar: avatar,
      active: active,
      accountVerified: accountVerified,
      provider: provider,
      createdBy: createdBy,
      updatedBy: updatedBy,
      deletedBy: deletedBy,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

  UserDTO fromJson(Map<String, Object?> json) {
    return UserDTO.fromJson(json);
  }
}

/// @nodoc
const $UserDTO = _$UserDTOTearOff();

/// @nodoc
mixin _$UserDTO {
  @primaryKey
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get isPrivate => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile')
  String? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_password')
  String? get oldPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_confirmation')
  String? get confirmation => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get countryName => throw _privateConstructorUsedError;
  String? get platform => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get accountVerified => throw _privateConstructorUsedError;
  @AuthProviderSerializer()
  AuthProvider? get provider => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdBy => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedBy => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get deletedBy => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
  $Res call(
      {@primaryKey @JsonKey(name: '_id') String? id,
      String? token,
      String? firstName,
      String? lastName,
      String? fullName,
      @BooleanSerializer() bool? isPrivate,
      String? email,
      @JsonKey(name: 'mobile') String? phone,
      String? password,
      @JsonKey(name: 'current_password') String? oldPassword,
      @JsonKey(name: 'password_confirmation') String? confirmation,
      @JsonKey(name: 'country') String? countryName,
      String? platform,
      String? avatar,
      @BooleanSerializer() bool? active,
      @BooleanSerializer() bool? accountVerified,
      @AuthProviderSerializer() AuthProvider? provider,
      @TimestampConverter() DateTime? createdBy,
      @TimestampConverter() DateTime? updatedBy,
      @TimestampConverter() DateTime? deletedBy,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res> implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  final UserDTO _value;
  // ignore: unused_field
  final $Res Function(UserDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? isPrivate = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? oldPassword = freezed,
    Object? confirmation = freezed,
    Object? countryName = freezed,
    Object? platform = freezed,
    Object? avatar = freezed,
    Object? active = freezed,
    Object? accountVerified = freezed,
    Object? provider = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? deletedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmation: confirmation == freezed
          ? _value.confirmation
          : confirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      accountVerified: accountVerified == freezed
          ? _value.accountVerified
          : accountVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedBy: deletedBy == freezed
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$UserDTOCopyWith(_UserDTO value, $Res Function(_UserDTO) then) =
      __$UserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@primaryKey @JsonKey(name: '_id') String? id,
      String? token,
      String? firstName,
      String? lastName,
      String? fullName,
      @BooleanSerializer() bool? isPrivate,
      String? email,
      @JsonKey(name: 'mobile') String? phone,
      String? password,
      @JsonKey(name: 'current_password') String? oldPassword,
      @JsonKey(name: 'password_confirmation') String? confirmation,
      @JsonKey(name: 'country') String? countryName,
      String? platform,
      String? avatar,
      @BooleanSerializer() bool? active,
      @BooleanSerializer() bool? accountVerified,
      @AuthProviderSerializer() AuthProvider? provider,
      @TimestampConverter() DateTime? createdBy,
      @TimestampConverter() DateTime? updatedBy,
      @TimestampConverter() DateTime? deletedBy,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt});
}

/// @nodoc
class __$UserDTOCopyWithImpl<$Res> extends _$UserDTOCopyWithImpl<$Res>
    implements _$UserDTOCopyWith<$Res> {
  __$UserDTOCopyWithImpl(_UserDTO _value, $Res Function(_UserDTO) _then)
      : super(_value, (v) => _then(v as _UserDTO));

  @override
  _UserDTO get _value => super._value as _UserDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? isPrivate = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? oldPassword = freezed,
    Object? confirmation = freezed,
    Object? countryName = freezed,
    Object? platform = freezed,
    Object? avatar = freezed,
    Object? active = freezed,
    Object? accountVerified = freezed,
    Object? provider = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? deletedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_UserDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmation: confirmation == freezed
          ? _value.confirmation
          : confirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      accountVerified: accountVerified == freezed
          ? _value.accountVerified
          : accountVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedBy: deletedBy == freezed
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
@JsonSerializable()
@Entity(tableName: UserDTO.tableName)
class _$_UserDTO extends _UserDTO {
  const _$_UserDTO(
      {@primaryKey @JsonKey(name: '_id') this.id,
      this.token,
      this.firstName,
      this.lastName,
      this.fullName,
      @BooleanSerializer() this.isPrivate,
      this.email,
      @JsonKey(name: 'mobile') this.phone,
      this.password,
      @JsonKey(name: 'current_password') this.oldPassword,
      @JsonKey(name: 'password_confirmation') this.confirmation,
      @JsonKey(name: 'country') this.countryName,
      this.platform,
      this.avatar,
      @BooleanSerializer() this.active,
      @BooleanSerializer() this.accountVerified,
      @AuthProviderSerializer() this.provider,
      @TimestampConverter() this.createdBy,
      @TimestampConverter() this.updatedBy,
      @TimestampConverter() this.deletedBy,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt,
      @TimestampConverter() this.deletedAt})
      : super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserDTOFromJson(json);

  @override
  @primaryKey
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? token;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? fullName;
  @override
  @BooleanSerializer()
  final bool? isPrivate;
  @override
  final String? email;
  @override
  @JsonKey(name: 'mobile')
  final String? phone;
  @override
  final String? password;
  @override
  @JsonKey(name: 'current_password')
  final String? oldPassword;
  @override
  @JsonKey(name: 'password_confirmation')
  final String? confirmation;
  @override
  @JsonKey(name: 'country')
  final String? countryName;
  @override
  final String? platform;
  @override
  final String? avatar;
  @override
  @BooleanSerializer()
  final bool? active;
  @override
  @BooleanSerializer()
  final bool? accountVerified;
  @override
  @AuthProviderSerializer()
  final AuthProvider? provider;
  @override
  @TimestampConverter()
  final DateTime? createdBy;
  @override
  @TimestampConverter()
  final DateTime? updatedBy;
  @override
  @TimestampConverter()
  final DateTime? deletedBy;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;
  @override
  @TimestampConverter()
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'UserDTO(id: $id, token: $token, firstName: $firstName, lastName: $lastName, fullName: $fullName, isPrivate: $isPrivate, email: $email, phone: $phone, password: $password, oldPassword: $oldPassword, confirmation: $confirmation, countryName: $countryName, platform: $platform, avatar: $avatar, active: $active, accountVerified: $accountVerified, provider: $provider, createdBy: $createdBy, updatedBy: $updatedBy, deletedBy: $deletedBy, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.isPrivate, isPrivate) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.oldPassword, oldPassword) &&
            const DeepCollectionEquality()
                .equals(other.confirmation, confirmation) &&
            const DeepCollectionEquality()
                .equals(other.countryName, countryName) &&
            const DeepCollectionEquality().equals(other.platform, platform) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality()
                .equals(other.accountVerified, accountVerified) &&
            const DeepCollectionEquality().equals(other.provider, provider) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality().equals(other.updatedBy, updatedBy) &&
            const DeepCollectionEquality().equals(other.deletedBy, deletedBy) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(token),
        const DeepCollectionEquality().hash(firstName),
        const DeepCollectionEquality().hash(lastName),
        const DeepCollectionEquality().hash(fullName),
        const DeepCollectionEquality().hash(isPrivate),
        const DeepCollectionEquality().hash(email),
        const DeepCollectionEquality().hash(phone),
        const DeepCollectionEquality().hash(password),
        const DeepCollectionEquality().hash(oldPassword),
        const DeepCollectionEquality().hash(confirmation),
        const DeepCollectionEquality().hash(countryName),
        const DeepCollectionEquality().hash(platform),
        const DeepCollectionEquality().hash(avatar),
        const DeepCollectionEquality().hash(active),
        const DeepCollectionEquality().hash(accountVerified),
        const DeepCollectionEquality().hash(provider),
        const DeepCollectionEquality().hash(createdBy),
        const DeepCollectionEquality().hash(updatedBy),
        const DeepCollectionEquality().hash(deletedBy),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(deletedAt)
      ]);

  @JsonKey(ignore: true)
  @override
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      __$UserDTOCopyWithImpl<_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDTOToJson(this);
  }
}

abstract class _UserDTO extends UserDTO {
  const factory _UserDTO(
      {@primaryKey @JsonKey(name: '_id') String? id,
      String? token,
      String? firstName,
      String? lastName,
      String? fullName,
      @BooleanSerializer() bool? isPrivate,
      String? email,
      @JsonKey(name: 'mobile') String? phone,
      String? password,
      @JsonKey(name: 'current_password') String? oldPassword,
      @JsonKey(name: 'password_confirmation') String? confirmation,
      @JsonKey(name: 'country') String? countryName,
      String? platform,
      String? avatar,
      @BooleanSerializer() bool? active,
      @BooleanSerializer() bool? accountVerified,
      @AuthProviderSerializer() AuthProvider? provider,
      @TimestampConverter() DateTime? createdBy,
      @TimestampConverter() DateTime? updatedBy,
      @TimestampConverter() DateTime? deletedBy,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt}) = _$_UserDTO;
  const _UserDTO._() : super._();

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @primaryKey
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get token;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get fullName;
  @override
  @BooleanSerializer()
  bool? get isPrivate;
  @override
  String? get email;
  @override
  @JsonKey(name: 'mobile')
  String? get phone;
  @override
  String? get password;
  @override
  @JsonKey(name: 'current_password')
  String? get oldPassword;
  @override
  @JsonKey(name: 'password_confirmation')
  String? get confirmation;
  @override
  @JsonKey(name: 'country')
  String? get countryName;
  @override
  String? get platform;
  @override
  String? get avatar;
  @override
  @BooleanSerializer()
  bool? get active;
  @override
  @BooleanSerializer()
  bool? get accountVerified;
  @override
  @AuthProviderSerializer()
  AuthProvider? get provider;
  @override
  @TimestampConverter()
  DateTime? get createdBy;
  @override
  @TimestampConverter()
  DateTime? get updatedBy;
  @override
  @TimestampConverter()
  DateTime? get deletedBy;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @TimestampConverter()
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

UserListDTO _$UserListDTOFromJson(Map<String, dynamic> json) {
  return _UserListDTO.fromJson(json);
}

/// @nodoc
class _$UserListDTOTearOff {
  const _$UserListDTOTearOff();

  _UserListDTO call({List<UserDTO> data = const [], MetaDTO? meta}) {
    return _UserListDTO(
      data: data,
      meta: meta,
    );
  }

  UserListDTO fromJson(Map<String, Object?> json) {
    return UserListDTO.fromJson(json);
  }
}

/// @nodoc
const $UserListDTO = _$UserListDTOTearOff();

/// @nodoc
mixin _$UserListDTO {
  List<UserDTO> get data => throw _privateConstructorUsedError;
  MetaDTO? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListDTOCopyWith<UserListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListDTOCopyWith<$Res> {
  factory $UserListDTOCopyWith(
          UserListDTO value, $Res Function(UserListDTO) then) =
      _$UserListDTOCopyWithImpl<$Res>;
  $Res call({List<UserDTO> data, MetaDTO? meta});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$UserListDTOCopyWithImpl<$Res> implements $UserListDTOCopyWith<$Res> {
  _$UserListDTOCopyWithImpl(this._value, this._then);

  final UserListDTO _value;
  // ignore: unused_field
  final $Res Function(UserListDTO) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserDTO>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
    ));
  }

  @override
  $MetaDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$UserListDTOCopyWith<$Res>
    implements $UserListDTOCopyWith<$Res> {
  factory _$UserListDTOCopyWith(
          _UserListDTO value, $Res Function(_UserListDTO) then) =
      __$UserListDTOCopyWithImpl<$Res>;
  @override
  $Res call({List<UserDTO> data, MetaDTO? meta});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$UserListDTOCopyWithImpl<$Res> extends _$UserListDTOCopyWithImpl<$Res>
    implements _$UserListDTOCopyWith<$Res> {
  __$UserListDTOCopyWithImpl(
      _UserListDTO _value, $Res Function(_UserListDTO) _then)
      : super(_value, (v) => _then(v as _UserListDTO));

  @override
  _UserListDTO get _value => super._value as _UserListDTO;

  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_UserListDTO(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserDTO>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserListDTO extends _UserListDTO {
  const _$_UserListDTO({this.data = const [], this.meta}) : super._();

  factory _$_UserListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserListDTOFromJson(json);

  @JsonKey()
  @override
  final List<UserDTO> data;
  @override
  final MetaDTO? meta;

  @override
  String toString() {
    return 'UserListDTO(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserListDTO &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  _$UserListDTOCopyWith<_UserListDTO> get copyWith =>
      __$UserListDTOCopyWithImpl<_UserListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserListDTOToJson(this);
  }
}

abstract class _UserListDTO extends UserListDTO {
  const factory _UserListDTO({List<UserDTO> data, MetaDTO? meta}) =
      _$_UserListDTO;
  const _UserListDTO._() : super._();

  factory _UserListDTO.fromJson(Map<String, dynamic> json) =
      _$_UserListDTO.fromJson;

  @override
  List<UserDTO> get data;
  @override
  MetaDTO? get meta;
  @override
  @JsonKey(ignore: true)
  _$UserListDTOCopyWith<_UserListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
