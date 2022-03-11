// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_object.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericObjectDTO<T> _$GenericObjectDTOFromJson<T extends Object?>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    GenericObjectDTO<T>(
      data: _$nullableGenericFromJson(json['Data'], fromJsonT),
      meta: json['Meta'] == null
          ? null
          : MetaDTO.fromJson(json['Meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenericObjectDTOToJson<T extends Object?>(
  GenericObjectDTO<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Data', _$nullableGenericToJson(instance.data, toJsonT));
  writeNotNull('Meta', instance.meta?.toJson());
  return val;
}

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
