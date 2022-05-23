library user_dto.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kt_dart/kt.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';
part 'user_dto.hive.dart';

UserDTO deserializeUserDTO(Map<String, dynamic> json) => UserDTO.fromJson(json);
Map<String, dynamic> serializeUserDTO(UserDTO object) => object.toJson();

@unfreezed
class UserDTO extends HiveObject with _$UserDTO {
  @HiveType(typeId: 1, adapterName: 'UserDTOAdapter')
  factory UserDTO({
    @HiveField(1) @JsonKey(name: '_id') @StringSerializer() String? id,
    @HiveField(2) String? token,
    @HiveField(3) String? firstName,
    @HiveField(4) String? lastName,
    @HiveField(5) String? fullName,
    @HiveField(6) @BooleanSerializer() bool? isPrivate,
    @HiveField(7) String? email,
    @HiveField(8) @JsonKey(name: 'mobile') String? phone,
    @HiveField(9) String? password,
    @HiveField(10) @JsonKey(name: 'current_password') String? oldPassword,
    @HiveField(11) @JsonKey(name: 'password_confirmation') String? confirmation,
    @HiveField(12) @JsonKey(name: 'country') String? countryName,
    @HiveField(13) String? platform,
    @HiveField(14) String? avatar,
    //
    @HiveField(15) @BooleanSerializer() bool? favAthlete,
    @HiveField(16) @BooleanSerializer() bool? favPlace,
    @HiveField(17) @BooleanSerializer() bool? locality,
    //
    @HiveField(18) @BooleanSerializer() bool? active,
    @HiveField(19) @BooleanSerializer() bool? accountVerified,
    @HiveField(20) @AuthProviderSerializer() AuthProvider? provider,
    @HiveField(21) @TimestampConverter() DateTime? createdBy,
    @HiveField(22) @TimestampConverter() DateTime? updatedBy,
    @HiveField(23) @TimestampConverter() DateTime? deletedBy,
    @HiveField(24) @TimestampConverter() DateTime? createdAt,
    @HiveField(25) @TimestampConverter() DateTime? updatedAt,
    @HiveField(26) @TimestampConverter() DateTime? deletedAt,
  }) = _UserDTO;

  UserDTO._();

  factory UserDTO.fromDomain(User? instance) => UserDTO(
        firstName: instance?.firstName.valueOrNull,
        lastName: instance?.lastName.valueOrNull,
        email: instance?.email.valueOrNull,
        password: instance?.password.valueOrNull,
        phone: instance?.phone.valueOrNull?.trim().removeNewLines().trimWhiteSpaces(),
        countryName: (instance?.country?.name.valueOrNull ?? instance?.phone.country?.name.valueOrNull)?.toUpperCase(),
        platform: 'MOBILE',
        avatar: instance?.photo.image.valueOrNull,
      );

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

  SecurityQuestion? get _question {
    if (locality == true) {
      return SecurityQuestion.locality;
    } else if (favPlace == true) {
      return SecurityQuestion.favPlace;
    } else if (favAthlete == true) {
      return SecurityQuestion.favAthlete;
    }

    return null;
  }

  User get domain => User(
        id: UniqueId.fromExternal(id),
        firstName: DisplayName(firstName),
        lastName: DisplayName(lastName),
        name: DisplayName(fullName ?? '${firstName ?? ''} ${lastName ?? ''}'),
        email: EmailAddress(email),
        phone: Phone(phone),
        password: Password(password),
        photo: UploadableMedia(MediaField(avatar), id: id),
        securityQuestion: _question,
        isPrivate: isPrivate ?? false,
        provider: provider ?? AuthProvider.regular,
        active: active ?? false,
        accountVerified: accountVerified ?? false,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );

  static bool? isEmailVerifiedFromJson(dynamic dateTime) {
    if (dateTime == null) return false;
    if (dateTime is bool) return dateTime;
    return (dateTime as String?) != null && dateTime!.isNotEmpty;
  }

  static void registerAdapter() => Hive.registerAdapter(UserDTOAdapter());
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
