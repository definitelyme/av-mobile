// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SuccessResponse _$$_SuccessResponseFromJson(Map<String, dynamic> json) =>
    _$_SuccessResponse(
      status: json['Status'] as bool? ?? true,
      message: json['Message'] as String? ?? '',
    );

Map<String, dynamic> _$$_SuccessResponseToJson(_$_SuccessResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Status', instance.status);
  val['Message'] = instance.message;
  return val;
}
