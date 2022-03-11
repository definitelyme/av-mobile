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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandInformationDTO _$BrandInformationDTOFromJson(Map<String, dynamic> json) {
  return _BrandInformationDTO.fromJson(json);
}

/// @nodoc
class _$BrandInformationDTOTearOff {
  const _$BrandInformationDTOTearOff();

  _BrandInformationDTO call(
      {BrandDTO? brand,
      BrandModelDTO? brandModel,
      int? yearOfManufacturer,
      String? color,
      String? condition,
      String? description}) {
    return _BrandInformationDTO(
      brand: brand,
      brandModel: brandModel,
      yearOfManufacturer: yearOfManufacturer,
      color: color,
      condition: condition,
      description: description,
    );
  }

  BrandInformationDTO fromJson(Map<String, Object?> json) {
    return BrandInformationDTO.fromJson(json);
  }
}

/// @nodoc
const $BrandInformationDTO = _$BrandInformationDTOTearOff();

/// @nodoc
mixin _$BrandInformationDTO {
  BrandDTO? get brand => throw _privateConstructorUsedError;
  BrandModelDTO? get brandModel => throw _privateConstructorUsedError;
  int? get yearOfManufacturer => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
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
      {BrandDTO? brand,
      BrandModelDTO? brandModel,
      int? yearOfManufacturer,
      String? color,
      String? condition,
      String? description});

  $BrandDTOCopyWith<$Res>? get brand;
  $BrandModelDTOCopyWith<$Res>? get brandModel;
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
    Object? yearOfManufacturer = freezed,
    Object? color = freezed,
    Object? condition = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandDTO?,
      brandModel: brandModel == freezed
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as BrandModelDTO?,
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
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $BrandDTOCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandDTOCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value));
    });
  }

  @override
  $BrandModelDTOCopyWith<$Res>? get brandModel {
    if (_value.brandModel == null) {
      return null;
    }

    return $BrandModelDTOCopyWith<$Res>(_value.brandModel!, (value) {
      return _then(_value.copyWith(brandModel: value));
    });
  }
}

/// @nodoc
abstract class _$BrandInformationDTOCopyWith<$Res>
    implements $BrandInformationDTOCopyWith<$Res> {
  factory _$BrandInformationDTOCopyWith(_BrandInformationDTO value,
          $Res Function(_BrandInformationDTO) then) =
      __$BrandInformationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {BrandDTO? brand,
      BrandModelDTO? brandModel,
      int? yearOfManufacturer,
      String? color,
      String? condition,
      String? description});

  @override
  $BrandDTOCopyWith<$Res>? get brand;
  @override
  $BrandModelDTOCopyWith<$Res>? get brandModel;
}

/// @nodoc
class __$BrandInformationDTOCopyWithImpl<$Res>
    extends _$BrandInformationDTOCopyWithImpl<$Res>
    implements _$BrandInformationDTOCopyWith<$Res> {
  __$BrandInformationDTOCopyWithImpl(
      _BrandInformationDTO _value, $Res Function(_BrandInformationDTO) _then)
      : super(_value, (v) => _then(v as _BrandInformationDTO));

  @override
  _BrandInformationDTO get _value => super._value as _BrandInformationDTO;

  @override
  $Res call({
    Object? brand = freezed,
    Object? brandModel = freezed,
    Object? yearOfManufacturer = freezed,
    Object? color = freezed,
    Object? condition = freezed,
    Object? description = freezed,
  }) {
    return _then(_BrandInformationDTO(
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandDTO?,
      brandModel: brandModel == freezed
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as BrandModelDTO?,
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
              as String?,
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
      this.yearOfManufacturer,
      this.color,
      this.condition,
      this.description})
      : super._();

  factory _$_BrandInformationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BrandInformationDTOFromJson(json);

  @override
  final BrandDTO? brand;
  @override
  final BrandModelDTO? brandModel;
  @override
  final int? yearOfManufacturer;
  @override
  final String? color;
  @override
  final String? condition;
  @override
  final String? description;

  @override
  String toString() {
    return 'BrandInformationDTO(brand: $brand, brandModel: $brandModel, yearOfManufacturer: $yearOfManufacturer, color: $color, condition: $condition, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BrandInformationDTO &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality()
                .equals(other.brandModel, brandModel) &&
            const DeepCollectionEquality()
                .equals(other.yearOfManufacturer, yearOfManufacturer) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(brandModel),
      const DeepCollectionEquality().hash(yearOfManufacturer),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$BrandInformationDTOCopyWith<_BrandInformationDTO> get copyWith =>
      __$BrandInformationDTOCopyWithImpl<_BrandInformationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandInformationDTOToJson(this);
  }
}

abstract class _BrandInformationDTO extends BrandInformationDTO {
  factory _BrandInformationDTO(
      {BrandDTO? brand,
      BrandModelDTO? brandModel,
      int? yearOfManufacturer,
      String? color,
      String? condition,
      String? description}) = _$_BrandInformationDTO;
  _BrandInformationDTO._() : super._();

  factory _BrandInformationDTO.fromJson(Map<String, dynamic> json) =
      _$_BrandInformationDTO.fromJson;

  @override
  BrandDTO? get brand;
  @override
  BrandModelDTO? get brandModel;
  @override
  int? get yearOfManufacturer;
  @override
  String? get color;
  @override
  String? get condition;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$BrandInformationDTOCopyWith<_BrandInformationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
