// GENERATED CODE - DO NOT MODIFY BY HAND

part of terms_information_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TermsInformationDTO _$$_TermsInformationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_TermsInformationDTO(
      yearOfPurchase: json['YearOfPurchase'] as int?,
      repairHistory: const BooleanSerializer().fromJson(json['RepairHistory']),
      refundPolicy: const BooleanSerializer().fromJson(json['RefundPolicy']),
      warranty: const BooleanSerializer().fromJson(json['Warranty']),
    );

Map<String, dynamic> _$$_TermsInformationDTOToJson(
    _$_TermsInformationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('YearOfPurchase', instance.yearOfPurchase);
  writeNotNull('RepairHistory',
      const BooleanSerializer().toJson(instance.repairHistory));
  writeNotNull(
      'RefundPolicy', const BooleanSerializer().toJson(instance.refundPolicy));
  writeNotNull('Warranty', const BooleanSerializer().toJson(instance.warranty));
  return val;
}
