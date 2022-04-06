// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of shipping_information_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShippingInformationDTO _$ShippingInformationDTOFromJson(
    Map<String, dynamic> json) {
  return _ShippingInformationDTO.fromJson(json);
}

/// @nodoc
class _$ShippingInformationDTOTearOff {
  const _$ShippingInformationDTOTearOff();

  _ShippingInformationDTO call(
      {@DoubleSerializer()
          double? width,
      @DoubleSerializer()
          double? weight,
      @DoubleSerializer()
          double? height,
      @DoubleSerializer()
          double? length,
      String? deliveryPeriod,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          bool? pickUpAvailable,
      String? description}) {
    return _ShippingInformationDTO(
      width: width,
      weight: weight,
      height: height,
      length: length,
      deliveryPeriod: deliveryPeriod,
      pickUpAvailable: pickUpAvailable,
      description: description,
    );
  }

  ShippingInformationDTO fromJson(Map<String, Object?> json) {
    return ShippingInformationDTO.fromJson(json);
  }
}

/// @nodoc
const $ShippingInformationDTO = _$ShippingInformationDTOTearOff();

/// @nodoc
mixin _$ShippingInformationDTO {
  @DoubleSerializer()
  double? get width => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get weight => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get height => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get length => throw _privateConstructorUsedError;
  String? get deliveryPeriod => throw _privateConstructorUsedError;
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  bool? get pickUpAvailable => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingInformationDTOCopyWith<ShippingInformationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingInformationDTOCopyWith<$Res> {
  factory $ShippingInformationDTOCopyWith(ShippingInformationDTO value,
          $Res Function(ShippingInformationDTO) then) =
      _$ShippingInformationDTOCopyWithImpl<$Res>;
  $Res call(
      {@DoubleSerializer()
          double? width,
      @DoubleSerializer()
          double? weight,
      @DoubleSerializer()
          double? height,
      @DoubleSerializer()
          double? length,
      String? deliveryPeriod,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          bool? pickUpAvailable,
      String? description});
}

/// @nodoc
class _$ShippingInformationDTOCopyWithImpl<$Res>
    implements $ShippingInformationDTOCopyWith<$Res> {
  _$ShippingInformationDTOCopyWithImpl(this._value, this._then);

  final ShippingInformationDTO _value;
  // ignore: unused_field
  final $Res Function(ShippingInformationDTO) _then;

  @override
  $Res call({
    Object? width = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? length = freezed,
    Object? deliveryPeriod = freezed,
    Object? pickUpAvailable = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryPeriod: deliveryPeriod == freezed
          ? _value.deliveryPeriod
          : deliveryPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      pickUpAvailable: pickUpAvailable == freezed
          ? _value.pickUpAvailable
          : pickUpAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ShippingInformationDTOCopyWith<$Res>
    implements $ShippingInformationDTOCopyWith<$Res> {
  factory _$ShippingInformationDTOCopyWith(_ShippingInformationDTO value,
          $Res Function(_ShippingInformationDTO) then) =
      __$ShippingInformationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@DoubleSerializer()
          double? width,
      @DoubleSerializer()
          double? weight,
      @DoubleSerializer()
          double? height,
      @DoubleSerializer()
          double? length,
      String? deliveryPeriod,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          bool? pickUpAvailable,
      String? description});
}

/// @nodoc
class __$ShippingInformationDTOCopyWithImpl<$Res>
    extends _$ShippingInformationDTOCopyWithImpl<$Res>
    implements _$ShippingInformationDTOCopyWith<$Res> {
  __$ShippingInformationDTOCopyWithImpl(_ShippingInformationDTO _value,
      $Res Function(_ShippingInformationDTO) _then)
      : super(_value, (v) => _then(v as _ShippingInformationDTO));

  @override
  _ShippingInformationDTO get _value => super._value as _ShippingInformationDTO;

  @override
  $Res call({
    Object? width = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? length = freezed,
    Object? deliveryPeriod = freezed,
    Object? pickUpAvailable = freezed,
    Object? description = freezed,
  }) {
    return _then(_ShippingInformationDTO(
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryPeriod: deliveryPeriod == freezed
          ? _value.deliveryPeriod
          : deliveryPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      pickUpAvailable: pickUpAvailable == freezed
          ? _value.pickUpAvailable
          : pickUpAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShippingInformationDTO extends _ShippingInformationDTO {
  _$_ShippingInformationDTO(
      {@DoubleSerializer()
          this.width,
      @DoubleSerializer()
          this.weight,
      @DoubleSerializer()
          this.height,
      @DoubleSerializer()
          this.length,
      this.deliveryPeriod,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          this.pickUpAvailable,
      this.description})
      : super._();

  factory _$_ShippingInformationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingInformationDTOFromJson(json);

  @override
  @DoubleSerializer()
  final double? width;
  @override
  @DoubleSerializer()
  final double? weight;
  @override
  @DoubleSerializer()
  final double? height;
  @override
  @DoubleSerializer()
  final double? length;
  @override
  final String? deliveryPeriod;
  @override
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  final bool? pickUpAvailable;
  @override
  final String? description;

  @override
  String toString() {
    return 'ShippingInformationDTO(width: $width, weight: $weight, height: $height, length: $length, deliveryPeriod: $deliveryPeriod, pickUpAvailable: $pickUpAvailable, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShippingInformationDTO &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality()
                .equals(other.deliveryPeriod, deliveryPeriod) &&
            const DeepCollectionEquality()
                .equals(other.pickUpAvailable, pickUpAvailable) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(deliveryPeriod),
      const DeepCollectionEquality().hash(pickUpAvailable),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$ShippingInformationDTOCopyWith<_ShippingInformationDTO> get copyWith =>
      __$ShippingInformationDTOCopyWithImpl<_ShippingInformationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingInformationDTOToJson(this);
  }
}

abstract class _ShippingInformationDTO extends ShippingInformationDTO {
  factory _ShippingInformationDTO(
      {@DoubleSerializer()
          double? width,
      @DoubleSerializer()
          double? weight,
      @DoubleSerializer()
          double? height,
      @DoubleSerializer()
          double? length,
      String? deliveryPeriod,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          bool? pickUpAvailable,
      String? description}) = _$_ShippingInformationDTO;
  _ShippingInformationDTO._() : super._();

  factory _ShippingInformationDTO.fromJson(Map<String, dynamic> json) =
      _$_ShippingInformationDTO.fromJson;

  @override
  @DoubleSerializer()
  double? get width;
  @override
  @DoubleSerializer()
  double? get weight;
  @override
  @DoubleSerializer()
  double? get height;
  @override
  @DoubleSerializer()
  double? get length;
  @override
  String? get deliveryPeriod;
  @override
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  bool? get pickUpAvailable;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$ShippingInformationDTOCopyWith<_ShippingInformationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
