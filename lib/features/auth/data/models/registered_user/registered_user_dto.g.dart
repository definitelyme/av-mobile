// GENERATED CODE - DO NOT MODIFY BY HAND

part of registered_user_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisteredUserDTO _$$_RegisteredUserDTOFromJson(Map<String, dynamic> json) =>
    _$_RegisteredUserDTO(
      status: json['Status'] as String?,
      data: json['Data'] == null
          ? null
          : UserDTO.fromJson(json['Data'] as Map<String, dynamic>),
      user: json['User'] == null
          ? null
          : UserDTO.fromJson(json['User'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisteredUserDTOToJson(
    _$_RegisteredUserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Status', instance.status);
  writeNotNull('Data', instance.data?.toJson());
  writeNotNull('User', instance.user?.toJson());
  return val;
}
