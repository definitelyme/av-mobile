part of app_database.dart;

UserDTO deserializeUserDTO(Map<String, dynamic> json) => UserDTO.fromJson(json);
Map<String, dynamic> serializeUserDTO(UserDTO object) => object.toJson();

@freezed
@immutable
class UserDTO with _$UserDTO {
  static const String tableName = 'users';

  @Entity(tableName: UserDTO.tableName)
  const factory UserDTO({
    @primaryKey @JsonKey(name: '_id') String? id,
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
    @TimestampConverter() DateTime? deletedAt,
  }) = _UserDTO;

  const UserDTO._();

  factory UserDTO.fromDomain(User? instance) => UserDTO(
        firstName: instance?.firstName.getOrNull,
        lastName: instance?.lastName.getOrNull,
        email: instance?.email.getOrNull,
        password: instance?.password.getOrNull,
        phone: instance?.phone.getOrNull?.trim().removeNewLines().trimWhiteSpaces(),
        countryName: (instance?.country?.name.getOrNull ?? instance?.phone.country?.name.getOrNull)?.toUpperCase(),
        platform: 'MOBILE',
      );

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

  User get domain => User(
        id: UniqueId.fromExternal(id),
        firstName: DisplayName(firstName),
        lastName: DisplayName(lastName),
        name: DisplayName(fullName ?? '${firstName ?? ''} ${lastName ?? ''}'),
        email: EmailAddress(email),
        phone: Phone(phone),
        password: Password(password),
        photo: MediaField(avatar),
        isPrivate: isPrivate ?? false,
        provider: provider ?? AuthProvider.regular,
        active: active ?? false,
        accountVerified: accountVerified ?? false,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );

  _$_UserDTO get floor => _$_UserDTO(
        id: id,
        token: token,
        fullName: fullName,
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        oldPassword: oldPassword,
        confirmation: confirmation,
        phone: phone,
        avatar: avatar,
        provider: provider,
        isPrivate: isPrivate,
        active: active,
        platform: platform,
        countryName: countryName,
        accountVerified: accountVerified,
        createdBy: createdBy,
        updatedBy: updatedBy,
        deletedBy: deletedBy,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );

  static bool? isEmailVerifiedFromJson(dynamic dateTime) {
    if (dateTime == null) return false;
    if (dateTime is bool) return dateTime;
    return (dateTime as String?) != null && dateTime!.isNotEmpty;
  }
}

UserListDTO deserializeUserListDTO(Map<String, dynamic> json) => UserListDTO.fromJson(json);
Map<String, dynamic> serializeUserListDTO(UserListDTO object) => object.toJson();

@freezed
@immutable
class UserListDTO with _$UserListDTO {
  const UserListDTO._();

  const factory UserListDTO({
    @Default([]) List<UserDTO> data,
    MetaDTO? meta,
  }) = _UserListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory UserListDTO.fromJson(Map<String, dynamic> json) => _$UserListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<DomainEntity> Object.
  KtList<User> get domain => KtList.from(data.map((e) => e.domain));
}

@dao
abstract class UserDAO extends BaseDAO<_$_UserDTO> {
  @Query('SELECT * FROM ${UserDTO.tableName}')
  Stream<List<_$_UserDTO?>> watchUsers();

  @Query('SELECT * FROM ${UserDTO.tableName}')
  Future<List<_$_UserDTO?>> allUsers();

  @Query('SELECT * FROM ${UserDTO.tableName} WHERE id = :id')
  Future<_$_UserDTO?> findUser(int id);

  @Query('DELETE FROM ${UserDTO.tableName}')
  Future<void> removeUsers();

  @Query('SELECT * FROM ${UserDTO.tableName} ORDER BY ID DESC LIMIT 1')
  Future<_$_UserDTO?> lastUser();
}
