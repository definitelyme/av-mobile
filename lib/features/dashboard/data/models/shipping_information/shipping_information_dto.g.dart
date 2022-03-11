// GENERATED CODE - DO NOT MODIFY BY HAND

part of shipping_information_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingInformationDTO _$$_ShippingInformationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ShippingInformationDTO(
      width: const DoubleSerializer().fromJson(json['Width']),
      weight: const DoubleSerializer().fromJson(json['Weight']),
      height: const DoubleSerializer().fromJson(json['Height']),
      length: const DoubleSerializer().fromJson(json['Length']),
      deliveryPeriod: json['DeliveryPeriod'] as String?,
      pickUpAvailable:
          const BooleanSerializer().fromJson(json['PickUpAvailable']),
      description: json['Description'] as String?,
    );

Map<String, dynamic> _$$_ShippingInformationDTOToJson(
    _$_ShippingInformationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Width', const DoubleSerializer().toJson(instance.width));
  writeNotNull('Weight', const DoubleSerializer().toJson(instance.weight));
  writeNotNull('Height', const DoubleSerializer().toJson(instance.height));
  writeNotNull('Length', const DoubleSerializer().toJson(instance.length));
  writeNotNull('DeliveryPeriod', instance.deliveryPeriod);
  writeNotNull('PickUpAvailable',
      const BooleanSerializer().toJson(instance.pickUpAvailable));
  writeNotNull('Description', instance.description);
  return val;
}
