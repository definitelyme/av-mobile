// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of brand_information_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandInformationDTO _$BrandInformationDTOFromJson(Map<String, dynamic> json) {
  return _BrandInformationDTO.fromJson(json);
}

/// @nodoc
mixin _$BrandInformationDTO {
  String? get brand => throw _privateConstructorUsedError;
  String? get brandModel => throw _privateConstructorUsedError;
  String? get transmission => throw _privateConstructorUsedError;
  int? get yearOfManufacturer => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(toJson: ItemConditionSerializer.toJsonString)
  @ItemConditionSerializer()
  ItemCondition? get condition => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandInformationDTOCopyWith<BrandInformationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandInformationDTOCopyWith<$Res> {
  factory $BrandInformationDTOCopyWith(
          BrandInformationDTO value, $Res Function(BrandInformationDTO) then) =
      _$BrandInformationDTOCopyWithImpl<$Res>;
  $Res call(
      {String? brand,
      String? brandModel,
      String? transmission,
      int? yearOfManufacturer,
      String? color,
      @JsonKey(toJson: ItemConditionSerializer.toJsonString)
      @ItemConditionSerializer()
          ItemCondition? condition,
      String? description});
}

/// @nodoc
class _$BrandInformationDTOCopyWithImpl<$Res>
    implements $BrandInformationDTOCopyWith<$Res> {
  _$BrandInformationDTOCopyWithImpl(this._value, this._then);

  final BrandInformationDTO _value;
  // ignore: unused_field
  final $Res Function(BrandInformationDTO) _then;

  @override
  $Res call({
    Object? brand = freezed,
    Object? brandModel = freezed,
    Object? transmission = freezed,
    Object? yearOfManufacturer = freezed,
    Object? color = freezed,
    Object? condition = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      brandModel: brandModel == freezed
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      transmission: transmission == freezed
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as String?,
      yearOfManufacturer: yearOfManufacturer == freezed
          ? _value.yearOfManufacturer
          : yearOfManufacturer // ignore: cast_nullable_to_non_nullable
              as int?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ItemCondition?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BrandInformationDTOCopyWith<$Res>
    implements $BrandInformationDTOCopyWith<$Res> {
  factory _$$_BrandInformationDTOCopyWith(_$_BrandInformationDTO value,
          $Res Function(_$_BrandInformationDTO) then) =
      __$$_BrandInformationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? brand,
      String? brandModel,
      String? transmission,
      int? yearOfManufacturer,
      String? color,
      @JsonKey(toJson: ItemConditionSerializer.toJsonString)
      @ItemConditionSerializer()
          ItemCondition? condition,
      String? description});
}

/// @nodoc
class __$$_BrandInformationDTOCopyWithImpl<$Res>
    extends _$BrandInformationDTOCopyWithImpl<$Res>
    implements _$$_BrandInformationDTOCopyWith<$Res> {
  __$$_BrandInformationDTOCopyWithImpl(_$_BrandInformationDTO _value,
      $Res Function(_$_BrandInformationDTO) _then)
      : super(_value, (v) => _then(v as _$_BrandInformationDTO));

  @override
  _$_BrandInformationDTO get _value => super._value as _$_BrandInformationDTO;

  @override
  $Res call({
    Object? brand = freezed,
    Object? brandModel = freezed,
    Object? transmission = freezed,
    Object? yearOfManufacturer = freezed,
    Object? color = freezed,
    Object? condition = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_BrandInformationDTO(
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      brandModel: brandModel == freezed
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      transmission: transmission == freezed
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as String?,
      yearOfManufacturer: yearOfManufacturer == freezed
          ? _value.yearOfManufacturer
          : yearOfManufacturer // ignore: cast_nullable_to_non_nullable
              as int?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ItemCondition?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandInformationDTO extends _BrandInformationDTO {
  _$_BrandInformationDTO(
      {this.brand,
      this.brandModel,
      this.transmission,
      this.yearOfManufacturer,
      this.color,
      @JsonKey(toJson: ItemConditionSerializer.toJsonString)
      @ItemConditionSerializer()
          this.condition,
      this.description})
      : super._();

  factory _$_BrandInformationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BrandInformationDTOFromJson(json);

  @override
  final String? brand;
  @override
  final String? brandModel;
  @override
  final String? transmission;
  @override
  final int? yearOfManufacturer;
  @override
  final String? color;
  @override
  @JsonKey(toJson: ItemConditionSerializer.toJsonString)
  @ItemConditionSerializer()
  final ItemCondition? condition;
  @override
  final String? description;

  @override
  String toString() {
    return 'BrandInformationDTO(brand: $brand, brandModel: $brandModel, transmission: $transmission, yearOfManufacturer: $yearOfManufacturer, color: $color, condition: $condition, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandInformationDTO &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality()
                .equals(other.brandModel, brandModel) &&
            const DeepCollectionEquality()
                .equals(other.transmission, transmission) &&
            const DeepCollectionEquality()
                .equals(other.yearOfManufacturer, yearOfManufacturer) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(brandModel),
      const DeepCollectionEquality().hash(transmission),
      const DeepCollectionEquality().hash(yearOfManufacturer),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_BrandInformationDTOCopyWith<_$_BrandInformationDTO> get copyWith =>
      __$$_BrandInformationDTOCopyWithImpl<_$_BrandInformationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandInformationDTOToJson(this);
  }
}

abstract class _BrandInformationDTO extends BrandInformationDTO {
  factory _BrandInformationDTO(
      {final String? brand,
      final String? brandModel,
      final String? transmission,
      final int? yearOfManufacturer,
      final String? color,
      @JsonKey(toJson: ItemConditionSerializer.toJsonString)
      @ItemConditionSerializer()
          final ItemCondition? condition,
      final String? description}) = _$_BrandInformationDTO;
  _BrandInformationDTO._() : super._();

  factory _BrandInformationDTO.fromJson(Map<String, dynamic> json) =
      _$_BrandInformationDTO.fromJson;

  @override
  String? get brand => throw _privateConstructorUsedError;
  @override
  String? get brandModel => throw _privateConstructorUsedError;
  @override
  String? get transmission => throw _privateConstructorUsedError;
  @override
  int? get yearOfManufacturer => throw _privateConstructorUsedError;
  @override
  String? get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: ItemConditionSerializer.toJsonString)
  @ItemConditionSerializer()
  ItemCondition? get condition => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BrandInformationDTOCopyWith<_$_BrandInformationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
