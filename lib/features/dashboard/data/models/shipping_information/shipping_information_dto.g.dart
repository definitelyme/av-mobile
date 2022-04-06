// GENERATED CODE - DO NOT MODIFY BY HAND

part of shipping_information_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingInformationDTO _$$_ShippingInformationDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ShippingInformationDTO(
      width: const DoubleSerializer().fromJson(json['width']),
      weight: const DoubleSerializer().fromJson(json['weight']),
      height: const DoubleSerializer().fromJson(json['height']),
      length: const DoubleSerializer().fromJson(json['length']),
      deliveryPeriod: json['deliveryPeriod'] as String?,
      pickUpAvailable:
          const BooleanSerializer().fromJson(json['pickUpAvailable']),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ShippingInformationDTOToJson(
    _$_ShippingInformationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('width', const DoubleSerializer().toJson(instance.width));
  writeNotNull('weight', const DoubleSerializer().toJson(instance.weight));
  writeNotNull('height', const DoubleSerializer().toJson(instance.height));
  writeNotNull('length', const DoubleSerializer().toJson(instance.length));
  writeNotNull('deliveryPeriod', instance.deliveryPeriod);
  writeNotNull('pickUpAvailable',
      BooleanSerializer.toJsonString(instance.pickUpAvailable));
  writeNotNull('description', instance.description);
  return val;
}
