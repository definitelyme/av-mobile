// GENERATED CODE - DO NOT MODIFY BY HAND

part of meta.dataclass.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetaDTO _$$_MetaDTOFromJson(Map<String, dynamic> json) => _$_MetaDTO(
      statusCode: json['StatusCode'] as int?,
      status: json['Status'] as bool?,
      pagination: json['Pagination'] == null
          ? null
          : PaginationDTO.fromJson(json['Pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MetaDTOToJson(_$_MetaDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('StatusCode', instance.statusCode);
  writeNotNull('Status', instance.status);
  writeNotNull('Pagination', instance.pagination?.toJson());
  return val;
}
