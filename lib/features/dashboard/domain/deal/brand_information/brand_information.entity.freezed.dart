// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of brand_information.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BrandInformation {
  BasicTextField get brand => throw _privateConstructorUsedError;
  BasicTextField get brandModel => throw _privateConstructorUsedError;
  BasicTextField get transmission => throw _privateConstructorUsedError;
  ItemCondition get condition => throw _privateConstructorUsedError;
  BasicTextField get description => throw _privateConstructorUsedError;
  ColorField? get color => throw _privateConstructorUsedError;
  BasicTextField get yearOfManufacture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrandInformationCopyWith<BrandInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandInformationCopyWith<$Res> {
  factory $BrandInformationCopyWith(
          BrandInformation value, $Res Function(BrandInformation) then) =
      _$BrandInformationCopyWithImpl<$Res>;
  $Res call(
      {BasicTextField brand,
      BasicTextField brandModel,
      BasicTextField transmission,
      ItemCondition condition,
      BasicTextField description,
      ColorField? color,
      BasicTextField yearOfManufacture});
}

/// @nodoc
class _$BrandInformationCopyWithImpl<$Res>
    implements $BrandInformationCopyWith<$Res> {
  _$BrandInformationCopyWithImpl(this._value, this._then);

  final BrandInformation _value;
  // ignore: unused_field
  final $Res Function(BrandInformation) _then;

  @override
  $Res call({
    Object? brand = freezed,
    Object? brandModel = freezed,
    Object? transmission = freezed,
    Object? condition = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? yearOfManufacture = freezed,
  }) {
    return _then(_value.copyWith(
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      brandModel: brandModel == freezed
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      transmission: transmission == freezed
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ItemCondition,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorField?,
      yearOfManufacture: yearOfManufacture == freezed
          ? _value.yearOfManufacture
          : yearOfManufacture // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
    ));
  }
}

/// @nodoc
abstract class _$$_BrandInformationCopyWith<$Res>
    implements $BrandInformationCopyWith<$Res> {
  factory _$$_BrandInformationCopyWith(
          _$_BrandInformation value, $Res Function(_$_BrandInformation) then) =
      __$$_BrandInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {BasicTextField brand,
      BasicTextField brandModel,
      BasicTextField transmission,
      ItemCondition condition,
      BasicTextField description,
      ColorField? color,
      BasicTextField yearOfManufacture});
}

/// @nodoc
class __$$_BrandInformationCopyWithImpl<$Res>
    extends _$BrandInformationCopyWithImpl<$Res>
    implements _$$_BrandInformationCopyWith<$Res> {
  __$$_BrandInformationCopyWithImpl(
      _$_BrandInformation _value, $Res Function(_$_BrandInformation) _then)
      : super(_value, (v) => _then(v as _$_BrandInformation));

  @override
  _$_BrandInformation get _value => super._value as _$_BrandInformation;

  @override
  $Res call({
    Object? brand = freezed,
    Object? brandModel = freezed,
    Object? transmission = freezed,
    Object? condition = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? yearOfManufacture = freezed,
  }) {
    return _then(_$_BrandInformation(
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      brandModel: brandModel == freezed
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      transmission: transmission == freezed
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ItemCondition,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorField?,
      yearOfManufacture: yearOfManufacture == freezed
          ? _value.yearOfManufacture
          : yearOfManufacture // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
    ));
  }
}

/// @nodoc

class _$_BrandInformation extends _BrandInformation {
  const _$_BrandInformation(
      {required this.brand,
      required this.brandModel,
      required this.transmission,
      this.condition = ItemCondition.brand_new,
      required this.description,
      this.color,
      required this.yearOfManufacture})
      : super._();

  @override
  final BasicTextField brand;
  @override
  final BasicTextField brandModel;
  @override
  final BasicTextField transmission;
  @override
  @JsonKey()
  final ItemCondition condition;
  @override
  final BasicTextField description;
  @override
  final ColorField? color;
  @override
  final BasicTextField yearOfManufacture;

  @override
  String toString() {
    return 'BrandInformation(brand: $brand, brandModel: $brandModel, transmission: $transmission, condition: $condition, description: $description, color: $color, yearOfManufacture: $yearOfManufacture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandInformation &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality()
                .equals(other.brandModel, brandModel) &&
            const DeepCollectionEquality()
                .equals(other.transmission, transmission) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.yearOfManufacture, yearOfManufacture));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(brandModel),
      const DeepCollectionEquality().hash(transmission),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(yearOfManufacture));

  @JsonKey(ignore: true)
  @override
  _$$_BrandInformationCopyWith<_$_BrandInformation> get copyWith =>
      __$$_BrandInformationCopyWithImpl<_$_BrandInformation>(this, _$identity);
}

abstract class _BrandInformation extends BrandInformation {
  const factory _BrandInformation(
      {required final BasicTextField brand,
      required final BasicTextField brandModel,
      required final BasicTextField transmission,
      final ItemCondition condition,
      required final BasicTextField description,
      final ColorField? color,
      required final BasicTextField yearOfManufacture}) = _$_BrandInformation;
  const _BrandInformation._() : super._();

  @override
  BasicTextField get brand;
  @override
  BasicTextField get brandModel;
  @override
  BasicTextField get transmission;
  @override
  ItemCondition get condition;
  @override
  BasicTextField get description;
  @override
  ColorField? get color;
  @override
  BasicTextField get yearOfManufacture;
  @override
  @JsonKey(ignore: true)
  _$$_BrandInformationCopyWith<_$_BrandInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
