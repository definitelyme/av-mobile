// GENERATED CODE - DO NOT MODIFY BY HAND

part of terms_information_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TermsInformationDTO _$$_TermsInformationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_TermsInformationDTO(
      yearOfPurchase: json['yearOfPurchase'] as int?,
      repairHistory: const BooleanSerializer().fromJson(json['repairHistory']),
      refundPolicy: const BooleanSerializer().fromJson(json['refundPolicy']),
      warranty: json['warranty'] as String?,
      otherInfo: json['otherInfo'] as String?,
    );

Map<String, dynamic> _$$_TermsInformationDTOToJson(
    _$_TermsInformationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('yearOfPurchase', instance.yearOfPurchase);
  writeNotNull(
      'repairHistory', BooleanSerializer.toJsonString(instance.repairHistory));
  writeNotNull(
      'refundPolicy', BooleanSerializer.toJsonString(instance.refundPolicy));
  writeNotNull('warranty', instance.warranty);
  writeNotNull('otherInfo', instance.otherInfo);
  return val;
}
