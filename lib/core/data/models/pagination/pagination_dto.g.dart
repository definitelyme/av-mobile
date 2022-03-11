// GENERATED CODE - DO NOT MODIFY BY HAND

part of meta_field;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationDTO _$$_PaginationDTOFromJson(Map<String, dynamic> json) =>
    _$_PaginationDTO(
      currentPage: json['current'] as int?,
      from: json['From'] as int?,
      lastPage: json['last'] as int?,
      next: json['next'] as int?,
      nextPage: json['next_page'] as String?,
      path: json['Path'] as String?,
      perPage: json['per_page'] as int?,
      to: json['To'] as int?,
      total: json['total_count'] as int?,
    );

Map<String, dynamic> _$$_PaginationDTOToJson(_$_PaginationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('current', instance.currentPage);
  writeNotNull('From', instance.from);
  writeNotNull('last', instance.lastPage);
  writeNotNull('next', instance.next);
  writeNotNull('next_page', instance.nextPage);
  writeNotNull('Path', instance.path);
  writeNotNull('per_page', instance.perPage);
  writeNotNull('To', instance.to);
  writeNotNull('total_count', instance.total);
  return val;
}
