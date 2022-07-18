// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of shipping_information.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShippingInformation {
  NumField<double?> get width => throw _privateConstructorUsedError;
  NumField<double?> get weight => throw _privateConstructorUsedError;
  NumField<double?> get height => throw _privateConstructorUsedError;
  NumField<double?> get length => throw _privateConstructorUsedError;
  BasicTextField get description => throw _privateConstructorUsedError;
  BasicTextField get deliveryPeriod => throw _privateConstructorUsedError;
  bool get isPickup => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShippingInformationCopyWith<ShippingInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingInformationCopyWith<$Res> {
  factory $ShippingInformationCopyWith(
          ShippingInformation value, $Res Function(ShippingInformation) then) =
      _$ShippingInformationCopyWithImpl<$Res>;
  $Res call(
      {NumField<double?> width,
      NumField<double?> weight,
      NumField<double?> height,
      NumField<double?> length,
      BasicTextField description,
      BasicTextField deliveryPeriod,
      bool isPickup});
}

/// @nodoc
class _$ShippingInformationCopyWithImpl<$Res>
    implements $ShippingInformationCopyWith<$Res> {
  _$ShippingInformationCopyWithImpl(this._value, this._then);

  final ShippingInformation _value;
  // ignore: unused_field
  final $Res Function(ShippingInformation) _then;

  @override
  $Res call({
    Object? width = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? length = freezed,
    Object? description = freezed,
    Object? deliveryPeriod = freezed,
    Object? isPickup = freezed,
  }) {
    return _then(_value.copyWith(
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      deliveryPeriod: deliveryPeriod == freezed
          ? _value.deliveryPeriod
          : deliveryPeriod // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      isPickup: isPickup == freezed
          ? _value.isPickup
          : isPickup // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ShippingInformationCopyWith<$Res>
    implements $ShippingInformationCopyWith<$Res> {
  factory _$$_ShippingInformationCopyWith(_$_ShippingInformation value,
          $Res Function(_$_ShippingInformation) then) =
      __$$_ShippingInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {NumField<double?> width,
      NumField<double?> weight,
      NumField<double?> height,
      NumField<double?> length,
      BasicTextField description,
      BasicTextField deliveryPeriod,
      bool isPickup});
}

/// @nodoc
class __$$_ShippingInformationCopyWithImpl<$Res>
    extends _$ShippingInformationCopyWithImpl<$Res>
    implements _$$_ShippingInformationCopyWith<$Res> {
  __$$_ShippingInformationCopyWithImpl(_$_ShippingInformation _value,
      $Res Function(_$_ShippingInformation) _then)
      : super(_value, (v) => _then(v as _$_ShippingInformation));

  @override
  _$_ShippingInformation get _value => super._value as _$_ShippingInformation;

  @override
  $Res call({
    Object? width = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? length = freezed,
    Object? description = freezed,
    Object? deliveryPeriod = freezed,
    Object? isPickup = freezed,
  }) {
    return _then(_$_ShippingInformation(
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as NumField<double?>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      deliveryPeriod: deliveryPeriod == freezed
          ? _value.deliveryPeriod
          : deliveryPeriod // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      isPickup: isPickup == freezed
          ? _value.isPickup
          : isPickup // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShippingInformation extends _ShippingInformation {
  const _$_ShippingInformation(
      {required this.width,
      required this.weight,
      required this.height,
      required this.length,
      required this.description,
      required this.deliveryPeriod,
      this.isPickup = false})
      : super._();

  @override
  final NumField<double?> width;
  @override
  final NumField<double?> weight;
  @override
  final NumField<double?> height;
  @override
  final NumField<double?> length;
  @override
  final BasicTextField description;
  @override
  final BasicTextField deliveryPeriod;
  @override
  @JsonKey()
  final bool isPickup;

  @override
  String toString() {
    return 'ShippingInformation(width: $width, weight: $weight, height: $height, length: $length, description: $description, deliveryPeriod: $deliveryPeriod, isPickup: $isPickup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShippingInformation &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.deliveryPeriod, deliveryPeriod) &&
            const DeepCollectionEquality().equals(other.isPickup, isPickup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(deliveryPeriod),
      const DeepCollectionEquality().hash(isPickup));

  @JsonKey(ignore: true)
  @override
  _$$_ShippingInformationCopyWith<_$_ShippingInformation> get copyWith =>
      __$$_ShippingInformationCopyWithImpl<_$_ShippingInformation>(
          this, _$identity);
}

abstract class _ShippingInformation extends ShippingInformation {
  const factory _ShippingInformation(
      {required final NumField<double?> width,
      required final NumField<double?> weight,
      required final NumField<double?> height,
      required final NumField<double?> length,
      required final BasicTextField description,
      required final BasicTextField deliveryPeriod,
      final bool isPickup}) = _$_ShippingInformation;
  const _ShippingInformation._() : super._();

  @override
  NumField<double?> get width;
  @override
  NumField<double?> get weight;
  @override
  NumField<double?> get height;
  @override
  NumField<double?> get length;
  @override
  BasicTextField get description;
  @override
  BasicTextField get deliveryPeriod;
  @override
  bool get isPickup;
  @override
  @JsonKey(ignore: true)
  _$$_ShippingInformationCopyWith<_$_ShippingInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
