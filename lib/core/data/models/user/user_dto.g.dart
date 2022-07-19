// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      id: const StringSerializer().fromJson(json['_id']),
      token: json['token'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      fullName: json['fullName'] as String?,
      isPrivate: const BooleanSerializer().fromJson(json['isPrivate']),
      email: json['email'] as String?,
      phone: json['mobile'] as String?,
      password: json['password'] as String?,
      oldPassword: json['current_password'] as String?,
      confirmation: json['password_confirmation'] as String?,
      countryName: json['country'] as String?,
      platform: json['platform'] as String?,
      avatar: json['avatar'] as String?,
      favAthlete: const BooleanSerializer().fromJson(json['favAthlete']),
      favPlace: const BooleanSerializer().fromJson(json['favPlace']),
      locality: const BooleanSerializer().fromJson(json['locality']),
      forceUpdate: const BooleanSerializer().fromJson(json['forceUpdate']),
      active: const BooleanSerializer().fromJson(json['active']),
      accountVerified:
          const BooleanSerializer().fromJson(json['accountVerified']),
      provider:
          const AuthProviderSerializer().fromJson(json['provider'] as String?),
      createdBy:
          const TimestampConverter().fromJson(json['createdBy'] as String?),
      updatedBy:
          const TimestampConverter().fromJson(json['updatedBy'] as String?),
      deletedBy:
          const TimestampConverter().fromJson(json['deletedBy'] as String?),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as String?),
      deletedAt:
          const TimestampConverter().fromJson(json['deletedAt'] as String?),
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', const StringSerializer().toJson(instance.id));
  writeNotNull('token', instance.token);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('fullName', instance.fullName);
  writeNotNull(
      'isPrivate', const BooleanSerializer().toJson(instance.isPrivate));
  writeNotNull('email', instance.email);
  writeNotNull('mobile', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('current_password', instance.oldPassword);
  writeNotNull('password_confirmation', instance.confirmation);
  writeNotNull('country', instance.countryName);
  writeNotNull('platform', instance.platform);
  writeNotNull('avatar', instance.avatar);
  writeNotNull(
      'favAthlete', const BooleanSerializer().toJson(instance.favAthlete));
  writeNotNull('favPlace', const BooleanSerializer().toJson(instance.favPlace));
  writeNotNull('locality', const BooleanSerializer().toJson(instance.locality));
  writeNotNull(
      'forceUpdate', const BooleanSerializer().toJson(instance.forceUpdate));
  writeNotNull('active', const BooleanSerializer().toJson(instance.active));
  writeNotNull('accountVerified',
      const BooleanSerializer().toJson(instance.accountVerified));
  writeNotNull(
      'provider', const AuthProviderSerializer().toJson(instance.provider));
  writeNotNull(
      'createdBy', const TimestampConverter().toJson(instance.createdBy));
  writeNotNull(
      'updatedBy', const TimestampConverter().toJson(instance.updatedBy));
  writeNotNull(
      'deletedBy', const TimestampConverter().toJson(instance.deletedBy));
  writeNotNull(
      'createdAt', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updatedAt', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deletedAt', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}

_$_UserListDTO _$$_UserListDTOFromJson(Map<String, dynamic> json) =>
    _$_UserListDTO(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => UserDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? null
          : MetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserListDTOToJson(_$_UserListDTO instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('meta', instance.meta?.toJson());
  return val;
}
