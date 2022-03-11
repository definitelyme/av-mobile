// GENERATED CODE - DO NOT MODIFY BY HAND

part of any_response.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponse _$$ErrorResponseFromJson(Map<String, dynamic> json) =>
    _$ErrorResponse(
      code: json['statusCode'] as int?,
      status: json['Status'] as bool?,
      messageTxt: json['message'] as String?,
      errors: json['Errors'] == null
          ? null
          : ServerFieldErrors.fromJson(json['Errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ErrorResponseToJson(_$ErrorResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('statusCode', instance.code);
  writeNotNull('Status', instance.status);
  writeNotNull('message', instance.messageTxt);
  writeNotNull('Errors', instance.errors?.toJson());
  return val;
}

_$InfoResponseType _$$InfoResponseTypeFromJson(Map<String, dynamic> json) =>
    _$InfoResponseType(
      status: json['Status'] as bool?,
      messageTxt: json['message'] as String?,
    );

Map<String, dynamic> _$$InfoResponseTypeToJson(_$InfoResponseType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Status', instance.status);
  writeNotNull('message', instance.messageTxt);
  return val;
}

_$SuccessfulResponse _$$SuccessfulResponseFromJson(Map<String, dynamic> json) =>
    _$SuccessfulResponse(
      status: json['Status'] as bool?,
      messageTxt: json['message'] as String?,
    );

Map<String, dynamic> _$$SuccessfulResponseToJson(
    _$SuccessfulResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Status', instance.status);
  writeNotNull('message', instance.messageTxt);
  return val;
}
