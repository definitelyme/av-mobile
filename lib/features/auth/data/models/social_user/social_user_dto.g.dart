// GENERATED CODE - DO NOT MODIFY BY HAND

part of social_user_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocialUserDTO _$$_SocialUserDTOFromJson(Map<String, dynamic> json) =>
    _$_SocialUserDTO(
      status: json['Status'] as String?,
      code: const IntegerSerializer().fromJson(json['Code']),
      message: json['Message'] as String?,
      data: json['Data'] == null
          ? null
          : UserDTO.fromJson(json['Data'] as Map<String, dynamic>),
      user: json['User'] == null
          ? null
          : UserDTO.fromJson(json['User'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SocialUserDTOToJson(_$_SocialUserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Status', instance.status);
  writeNotNull('Code', const IntegerSerializer().toJson(instance.code));
  writeNotNull('Message', instance.message);
  writeNotNull('Data', instance.data?.toJson());
  writeNotNull('User', instance.user?.toJson());
  return val;
}
