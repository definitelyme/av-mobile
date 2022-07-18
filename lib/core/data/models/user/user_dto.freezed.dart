// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of user_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDTO {
  @HiveField(1)
  @JsonKey(name: '_id')
  @StringSerializer()
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: '_id')
  @StringSerializer()
  set id(String? value) => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get token => throw _privateConstructorUsedError;
  @HiveField(2)
  set token(String? value) => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get firstName => throw _privateConstructorUsedError;
  @HiveField(3)
  set firstName(String? value) => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get lastName => throw _privateConstructorUsedError;
  @HiveField(4)
  set lastName(String? value) => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get fullName => throw _privateConstructorUsedError;
  @HiveField(5)
  set fullName(String? value) => throw _privateConstructorUsedError;
  @HiveField(6)
  @BooleanSerializer()
  bool? get isPrivate => throw _privateConstructorUsedError;
  @HiveField(6)
  @BooleanSerializer()
  set isPrivate(bool? value) => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(7)
  set email(String? value) => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'mobile')
  String? get phone => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'mobile')
  set phone(String? value) => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get password => throw _privateConstructorUsedError;
  @HiveField(9)
  set password(String? value) => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'current_password')
  String? get oldPassword => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'current_password')
  set oldPassword(String? value) => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: 'password_confirmation')
  String? get confirmation => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: 'password_confirmation')
  set confirmation(String? value) => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: 'country')
  String? get countryName => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: 'country')
  set countryName(String? value) => throw _privateConstructorUsedError;
  @HiveField(13)
  String? get platform => throw _privateConstructorUsedError;
  @HiveField(13)
  set platform(String? value) => throw _privateConstructorUsedError;
  @HiveField(14)
  String? get avatar => throw _privateConstructorUsedError;
  @HiveField(14)
  set avatar(String? value) => throw _privateConstructorUsedError; //
  @HiveField(15)
  @BooleanSerializer()
  bool? get favAthlete => throw _privateConstructorUsedError; //
  @HiveField(15)
  @BooleanSerializer()
  set favAthlete(bool? value) => throw _privateConstructorUsedError;
  @HiveField(16)
  @BooleanSerializer()
  bool? get favPlace => throw _privateConstructorUsedError;
  @HiveField(16)
  @BooleanSerializer()
  set favPlace(bool? value) => throw _privateConstructorUsedError;
  @HiveField(17)
  @BooleanSerializer()
  bool? get locality => throw _privateConstructorUsedError;
  @HiveField(17)
  @BooleanSerializer()
  set locality(bool? value) => throw _privateConstructorUsedError; //
  @HiveField(18)
  @BooleanSerializer()
  bool? get forceUpdate => throw _privateConstructorUsedError; //
  @HiveField(18)
  @BooleanSerializer()
  set forceUpdate(bool? value) => throw _privateConstructorUsedError;
  @HiveField(19)
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @HiveField(19)
  @BooleanSerializer()
  set active(bool? value) => throw _privateConstructorUsedError;
  @HiveField(20)
  @BooleanSerializer()
  bool? get accountVerified => throw _privateConstructorUsedError;
  @HiveField(20)
  @BooleanSerializer()
  set accountVerified(bool? value) => throw _privateConstructorUsedError;
  @HiveField(21)
  @AuthProviderSerializer()
  AuthProvider? get provider => throw _privateConstructorUsedError;
  @HiveField(21)
  @AuthProviderSerializer()
  set provider(AuthProvider? value) => throw _privateConstructorUsedError;
  @HiveField(22)
  @TimestampConverter()
  DateTime? get createdBy => throw _privateConstructorUsedError;
  @HiveField(22)
  @TimestampConverter()
  set createdBy(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(23)
  @TimestampConverter()
  DateTime? get updatedBy => throw _privateConstructorUsedError;
  @HiveField(23)
  @TimestampConverter()
  set updatedBy(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(24)
  @TimestampConverter()
  DateTime? get deletedBy => throw _privateConstructorUsedError;
  @HiveField(24)
  @TimestampConverter()
  set deletedBy(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(25)
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(25)
  @TimestampConverter()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(26)
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(26)
  @TimestampConverter()
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(27)
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @HiveField(27)
  @TimestampConverter()
  set deletedAt(DateTime? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(1)
      @JsonKey(name: '_id')
      @StringSerializer()
          String? id,
      @HiveField(2)
          String? token,
      @HiveField(3)
          String? firstName,
      @HiveField(4)
          String? lastName,
      @HiveField(5)
          String? fullName,
      @HiveField(6)
      @BooleanSerializer()
          bool? isPrivate,
      @HiveField(7)
          String? email,
      @HiveField(8)
      @JsonKey(name: 'mobile')
          String? phone,
      @HiveField(9)
          String? password,
      @HiveField(10)
      @JsonKey(name: 'current_password')
          String? oldPassword,
      @HiveField(11)
      @JsonKey(name: 'password_confirmation')
          String? confirmation,
      @HiveField(12)
      @JsonKey(name: 'country')
          String? countryName,
      @HiveField(13)
          String? platform,
      @HiveField(14)
          String? avatar,
      @HiveField(15)
      @BooleanSerializer()
          bool? favAthlete,
      @HiveField(16)
      @BooleanSerializer()
          bool? favPlace,
      @HiveField(17)
      @BooleanSerializer()
          bool? locality,
      @HiveField(18)
      @BooleanSerializer()
          bool? forceUpdate,
      @HiveField(19)
      @BooleanSerializer()
          bool? active,
      @HiveField(20)
      @BooleanSerializer()
          bool? accountVerified,
      @HiveField(21)
      @AuthProviderSerializer()
          AuthProvider? provider,
      @HiveField(22)
      @TimestampConverter()
          DateTime? createdBy,
      @HiveField(23)
      @TimestampConverter()
          DateTime? updatedBy,
      @HiveField(24)
      @TimestampConverter()
          DateTime? deletedBy,
      @HiveField(25)
      @TimestampConverter()
          DateTime? createdAt,
      @HiveField(26)
      @TimestampConverter()
          DateTime? updatedAt,
      @HiveField(27)
      @TimestampConverter()
          DateTime? deletedAt});
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
    Object? favAthlete = freezed,
    Object? favPlace = freezed,
    Object? locality = freezed,
    Object? forceUpdate = freezed,
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
      favAthlete: favAthlete == freezed
          ? _value.favAthlete
          : favAthlete // ignore: cast_nullable_to_non_nullable
              as bool?,
      favPlace: favPlace == freezed
          ? _value.favPlace
          : favPlace // ignore: cast_nullable_to_non_nullable
              as bool?,
      locality: locality == freezed
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as bool?,
      forceUpdate: forceUpdate == freezed
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$_UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$_UserDTOCopyWith(
          _$_UserDTO value, $Res Function(_$_UserDTO) then) =
      __$$_UserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(1)
      @JsonKey(name: '_id')
      @StringSerializer()
          String? id,
      @HiveField(2)
          String? token,
      @HiveField(3)
          String? firstName,
      @HiveField(4)
          String? lastName,
      @HiveField(5)
          String? fullName,
      @HiveField(6)
      @BooleanSerializer()
          bool? isPrivate,
      @HiveField(7)
          String? email,
      @HiveField(8)
      @JsonKey(name: 'mobile')
          String? phone,
      @HiveField(9)
          String? password,
      @HiveField(10)
      @JsonKey(name: 'current_password')
          String? oldPassword,
      @HiveField(11)
      @JsonKey(name: 'password_confirmation')
          String? confirmation,
      @HiveField(12)
      @JsonKey(name: 'country')
          String? countryName,
      @HiveField(13)
          String? platform,
      @HiveField(14)
          String? avatar,
      @HiveField(15)
      @BooleanSerializer()
          bool? favAthlete,
      @HiveField(16)
      @BooleanSerializer()
          bool? favPlace,
      @HiveField(17)
      @BooleanSerializer()
          bool? locality,
      @HiveField(18)
      @BooleanSerializer()
          bool? forceUpdate,
      @HiveField(19)
      @BooleanSerializer()
          bool? active,
      @HiveField(20)
      @BooleanSerializer()
          bool? accountVerified,
      @HiveField(21)
      @AuthProviderSerializer()
          AuthProvider? provider,
      @HiveField(22)
      @TimestampConverter()
          DateTime? createdBy,
      @HiveField(23)
      @TimestampConverter()
          DateTime? updatedBy,
      @HiveField(24)
      @TimestampConverter()
          DateTime? deletedBy,
      @HiveField(25)
      @TimestampConverter()
          DateTime? createdAt,
      @HiveField(26)
      @TimestampConverter()
          DateTime? updatedAt,
      @HiveField(27)
      @TimestampConverter()
          DateTime? deletedAt});
}

/// @nodoc
class __$$_UserDTOCopyWithImpl<$Res> extends _$UserDTOCopyWithImpl<$Res>
    implements _$$_UserDTOCopyWith<$Res> {
  __$$_UserDTOCopyWithImpl(_$_UserDTO _value, $Res Function(_$_UserDTO) _then)
      : super(_value, (v) => _then(v as _$_UserDTO));

  @override
  _$_UserDTO get _value => super._value as _$_UserDTO;

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
    Object? favAthlete = freezed,
    Object? favPlace = freezed,
    Object? locality = freezed,
    Object? forceUpdate = freezed,
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
    return _then(_$_UserDTO(
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
      favAthlete: favAthlete == freezed
          ? _value.favAthlete
          : favAthlete // ignore: cast_nullable_to_non_nullable
              as bool?,
      favPlace: favPlace == freezed
          ? _value.favPlace
          : favPlace // ignore: cast_nullable_to_non_nullable
              as bool?,
      locality: locality == freezed
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as bool?,
      forceUpdate: forceUpdate == freezed
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
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
@HiveType(typeId: 1, adapterName: 'UserDTOAdapter')
class _$_UserDTO extends _UserDTO {
  _$_UserDTO(
      {@HiveField(1) @JsonKey(name: '_id') @StringSerializer() this.id,
      @HiveField(2) this.token,
      @HiveField(3) this.firstName,
      @HiveField(4) this.lastName,
      @HiveField(5) this.fullName,
      @HiveField(6) @BooleanSerializer() this.isPrivate,
      @HiveField(7) this.email,
      @HiveField(8) @JsonKey(name: 'mobile') this.phone,
      @HiveField(9) this.password,
      @HiveField(10) @JsonKey(name: 'current_password') this.oldPassword,
      @HiveField(11) @JsonKey(name: 'password_confirmation') this.confirmation,
      @HiveField(12) @JsonKey(name: 'country') this.countryName,
      @HiveField(13) this.platform,
      @HiveField(14) this.avatar,
      @HiveField(15) @BooleanSerializer() this.favAthlete,
      @HiveField(16) @BooleanSerializer() this.favPlace,
      @HiveField(17) @BooleanSerializer() this.locality,
      @HiveField(18) @BooleanSerializer() this.forceUpdate,
      @HiveField(19) @BooleanSerializer() this.active,
      @HiveField(20) @BooleanSerializer() this.accountVerified,
      @HiveField(21) @AuthProviderSerializer() this.provider,
      @HiveField(22) @TimestampConverter() this.createdBy,
      @HiveField(23) @TimestampConverter() this.updatedBy,
      @HiveField(24) @TimestampConverter() this.deletedBy,
      @HiveField(25) @TimestampConverter() this.createdAt,
      @HiveField(26) @TimestampConverter() this.updatedAt,
      @HiveField(27) @TimestampConverter() this.deletedAt})
      : super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserDTOFromJson(json);

  @override
  @HiveField(1)
  @JsonKey(name: '_id')
  @StringSerializer()
  String? id;
  @override
  @HiveField(2)
  String? token;
  @override
  @HiveField(3)
  String? firstName;
  @override
  @HiveField(4)
  String? lastName;
  @override
  @HiveField(5)
  String? fullName;
  @override
  @HiveField(6)
  @BooleanSerializer()
  bool? isPrivate;
  @override
  @HiveField(7)
  String? email;
  @override
  @HiveField(8)
  @JsonKey(name: 'mobile')
  String? phone;
  @override
  @HiveField(9)
  String? password;
  @override
  @HiveField(10)
  @JsonKey(name: 'current_password')
  String? oldPassword;
  @override
  @HiveField(11)
  @JsonKey(name: 'password_confirmation')
  String? confirmation;
  @override
  @HiveField(12)
  @JsonKey(name: 'country')
  String? countryName;
  @override
  @HiveField(13)
  String? platform;
  @override
  @HiveField(14)
  String? avatar;
//
  @override
  @HiveField(15)
  @BooleanSerializer()
  bool? favAthlete;
  @override
  @HiveField(16)
  @BooleanSerializer()
  bool? favPlace;
  @override
  @HiveField(17)
  @BooleanSerializer()
  bool? locality;
//
  @override
  @HiveField(18)
  @BooleanSerializer()
  bool? forceUpdate;
  @override
  @HiveField(19)
  @BooleanSerializer()
  bool? active;
  @override
  @HiveField(20)
  @BooleanSerializer()
  bool? accountVerified;
  @override
  @HiveField(21)
  @AuthProviderSerializer()
  AuthProvider? provider;
  @override
  @HiveField(22)
  @TimestampConverter()
  DateTime? createdBy;
  @override
  @HiveField(23)
  @TimestampConverter()
  DateTime? updatedBy;
  @override
  @HiveField(24)
  @TimestampConverter()
  DateTime? deletedBy;
  @override
  @HiveField(25)
  @TimestampConverter()
  DateTime? createdAt;
  @override
  @HiveField(26)
  @TimestampConverter()
  DateTime? updatedAt;
  @override
  @HiveField(27)
  @TimestampConverter()
  DateTime? deletedAt;

  @override
  String toString() {
    return 'UserDTO(id: $id, token: $token, firstName: $firstName, lastName: $lastName, fullName: $fullName, isPrivate: $isPrivate, email: $email, phone: $phone, password: $password, oldPassword: $oldPassword, confirmation: $confirmation, countryName: $countryName, platform: $platform, avatar: $avatar, favAthlete: $favAthlete, favPlace: $favPlace, locality: $locality, forceUpdate: $forceUpdate, active: $active, accountVerified: $accountVerified, provider: $provider, createdBy: $createdBy, updatedBy: $updatedBy, deletedBy: $deletedBy, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      __$$_UserDTOCopyWithImpl<_$_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDTOToJson(
      this,
    );
  }
}

abstract class _UserDTO extends UserDTO {
  factory _UserDTO(
      {@HiveField(1)
      @JsonKey(name: '_id')
      @StringSerializer()
          String? id,
      @HiveField(2)
          String? token,
      @HiveField(3)
          String? firstName,
      @HiveField(4)
          String? lastName,
      @HiveField(5)
          String? fullName,
      @HiveField(6)
      @BooleanSerializer()
          bool? isPrivate,
      @HiveField(7)
          String? email,
      @HiveField(8)
      @JsonKey(name: 'mobile')
          String? phone,
      @HiveField(9)
          String? password,
      @HiveField(10)
      @JsonKey(name: 'current_password')
          String? oldPassword,
      @HiveField(11)
      @JsonKey(name: 'password_confirmation')
          String? confirmation,
      @HiveField(12)
      @JsonKey(name: 'country')
          String? countryName,
      @HiveField(13)
          String? platform,
      @HiveField(14)
          String? avatar,
      @HiveField(15)
      @BooleanSerializer()
          bool? favAthlete,
      @HiveField(16)
      @BooleanSerializer()
          bool? favPlace,
      @HiveField(17)
      @BooleanSerializer()
          bool? locality,
      @HiveField(18)
      @BooleanSerializer()
          bool? forceUpdate,
      @HiveField(19)
      @BooleanSerializer()
          bool? active,
      @HiveField(20)
      @BooleanSerializer()
          bool? accountVerified,
      @HiveField(21)
      @AuthProviderSerializer()
          AuthProvider? provider,
      @HiveField(22)
      @TimestampConverter()
          DateTime? createdBy,
      @HiveField(23)
      @TimestampConverter()
          DateTime? updatedBy,
      @HiveField(24)
      @TimestampConverter()
          DateTime? deletedBy,
      @HiveField(25)
      @TimestampConverter()
          DateTime? createdAt,
      @HiveField(26)
      @TimestampConverter()
          DateTime? updatedAt,
      @HiveField(27)
      @TimestampConverter()
          DateTime? deletedAt}) = _$_UserDTO;
  _UserDTO._() : super._();

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @HiveField(1)
  @JsonKey(name: '_id')
  @StringSerializer()
  String? get id;
  @HiveField(1)
  @JsonKey(name: '_id')
  @StringSerializer()
  set id(String? value);
  @override
  @HiveField(2)
  String? get token;
  @HiveField(2)
  set token(String? value);
  @override
  @HiveField(3)
  String? get firstName;
  @HiveField(3)
  set firstName(String? value);
  @override
  @HiveField(4)
  String? get lastName;
  @HiveField(4)
  set lastName(String? value);
  @override
  @HiveField(5)
  String? get fullName;
  @HiveField(5)
  set fullName(String? value);
  @override
  @HiveField(6)
  @BooleanSerializer()
  bool? get isPrivate;
  @HiveField(6)
  @BooleanSerializer()
  set isPrivate(bool? value);
  @override
  @HiveField(7)
  String? get email;
  @HiveField(7)
  set email(String? value);
  @override
  @HiveField(8)
  @JsonKey(name: 'mobile')
  String? get phone;
  @HiveField(8)
  @JsonKey(name: 'mobile')
  set phone(String? value);
  @override
  @HiveField(9)
  String? get password;
  @HiveField(9)
  set password(String? value);
  @override
  @HiveField(10)
  @JsonKey(name: 'current_password')
  String? get oldPassword;
  @HiveField(10)
  @JsonKey(name: 'current_password')
  set oldPassword(String? value);
  @override
  @HiveField(11)
  @JsonKey(name: 'password_confirmation')
  String? get confirmation;
  @HiveField(11)
  @JsonKey(name: 'password_confirmation')
  set confirmation(String? value);
  @override
  @HiveField(12)
  @JsonKey(name: 'country')
  String? get countryName;
  @HiveField(12)
  @JsonKey(name: 'country')
  set countryName(String? value);
  @override
  @HiveField(13)
  String? get platform;
  @HiveField(13)
  set platform(String? value);
  @override
  @HiveField(14)
  String? get avatar;
  @HiveField(14)
  set avatar(String? value);
  @override //
  @HiveField(15)
  @BooleanSerializer()
  bool? get favAthlete; //
  @HiveField(15)
  @BooleanSerializer()
  set favAthlete(bool? value);
  @override
  @HiveField(16)
  @BooleanSerializer()
  bool? get favPlace;
  @HiveField(16)
  @BooleanSerializer()
  set favPlace(bool? value);
  @override
  @HiveField(17)
  @BooleanSerializer()
  bool? get locality;
  @HiveField(17)
  @BooleanSerializer()
  set locality(bool? value);
  @override //
  @HiveField(18)
  @BooleanSerializer()
  bool? get forceUpdate; //
  @HiveField(18)
  @BooleanSerializer()
  set forceUpdate(bool? value);
  @override
  @HiveField(19)
  @BooleanSerializer()
  bool? get active;
  @HiveField(19)
  @BooleanSerializer()
  set active(bool? value);
  @override
  @HiveField(20)
  @BooleanSerializer()
  bool? get accountVerified;
  @HiveField(20)
  @BooleanSerializer()
  set accountVerified(bool? value);
  @override
  @HiveField(21)
  @AuthProviderSerializer()
  AuthProvider? get provider;
  @HiveField(21)
  @AuthProviderSerializer()
  set provider(AuthProvider? value);
  @override
  @HiveField(22)
  @TimestampConverter()
  DateTime? get createdBy;
  @HiveField(22)
  @TimestampConverter()
  set createdBy(DateTime? value);
  @override
  @HiveField(23)
  @TimestampConverter()
  DateTime? get updatedBy;
  @HiveField(23)
  @TimestampConverter()
  set updatedBy(DateTime? value);
  @override
  @HiveField(24)
  @TimestampConverter()
  DateTime? get deletedBy;
  @HiveField(24)
  @TimestampConverter()
  set deletedBy(DateTime? value);
  @override
  @HiveField(25)
  @TimestampConverter()
  DateTime? get createdAt;
  @HiveField(25)
  @TimestampConverter()
  set createdAt(DateTime? value);
  @override
  @HiveField(26)
  @TimestampConverter()
  DateTime? get updatedAt;
  @HiveField(26)
  @TimestampConverter()
  set updatedAt(DateTime? value);
  @override
  @HiveField(27)
  @TimestampConverter()
  DateTime? get deletedAt;
  @HiveField(27)
  @TimestampConverter()
  set deletedAt(DateTime? value);
  @override
  @JsonKey(ignore: true)
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

UserListDTO _$UserListDTOFromJson(Map<String, dynamic> json) {
  return _UserListDTO.fromJson(json);
}

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
abstract class _$$_UserListDTOCopyWith<$Res>
    implements $UserListDTOCopyWith<$Res> {
  factory _$$_UserListDTOCopyWith(
          _$_UserListDTO value, $Res Function(_$_UserListDTO) then) =
      __$$_UserListDTOCopyWithImpl<$Res>;
  @override
  $Res call({List<UserDTO> data, MetaDTO? meta});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_UserListDTOCopyWithImpl<$Res> extends _$UserListDTOCopyWithImpl<$Res>
    implements _$$_UserListDTOCopyWith<$Res> {
  __$$_UserListDTOCopyWithImpl(
      _$_UserListDTO _value, $Res Function(_$_UserListDTO) _then)
      : super(_value, (v) => _then(v as _$_UserListDTO));

  @override
  _$_UserListDTO get _value => super._value as _$_UserListDTO;

  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_UserListDTO(
      data: data == freezed
          ? _value._data
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
  const _$_UserListDTO({final List<UserDTO> data = const [], this.meta})
      : _data = data,
        super._();

  factory _$_UserListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserListDTOFromJson(json);

  final List<UserDTO> _data;
  @override
  @JsonKey()
  List<UserDTO> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

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
            other is _$_UserListDTO &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  _$$_UserListDTOCopyWith<_$_UserListDTO> get copyWith =>
      __$$_UserListDTOCopyWithImpl<_$_UserListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserListDTOToJson(
      this,
    );
  }
}

abstract class _UserListDTO extends UserListDTO {
  const factory _UserListDTO({final List<UserDTO> data, final MetaDTO? meta}) =
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
  _$$_UserListDTOCopyWith<_$_UserListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
