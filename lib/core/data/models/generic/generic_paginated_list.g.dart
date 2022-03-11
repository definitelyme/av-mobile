// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_paginated_list.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericPaginatedListDTO<T> _$GenericPaginatedListDTOFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    GenericPaginatedListDTO<T>(
      data: (json['Data'] as List<dynamic>).map(fromJsonT).toList(),
      meta: json['Meta'] == null
          ? null
          : MetaDTO.fromJson(json['Meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenericPaginatedListDTOToJson<T>(
  GenericPaginatedListDTO<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{
    'Data': instance.data.map(toJsonT).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Meta', instance.meta?.toJson());
  return val;
}
