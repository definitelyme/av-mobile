// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FailureResponse _$$_FailureResponseFromJson(Map<String, dynamic> json) =>
    _$_FailureResponse(
      code: json['Code'] as int?,
      status: json['Status'] as bool? ?? false,
      errors: json['Errors'] == null
          ? null
          : ServerFieldErrors.fromJson(json['Errors'] as Map<String, dynamic>),
      message: json['Message'] as String? ?? '',
    );

Map<String, dynamic> _$$_FailureResponseToJson(_$_FailureResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Code', instance.code);
  writeNotNull('Status', instance.status);
  writeNotNull('Errors', instance.errors?.toJson());
  val['Message'] = instance.message;
  return val;
}
