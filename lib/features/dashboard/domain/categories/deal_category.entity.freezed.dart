// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of deal_category.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DealCategoryTearOff {
  const _$DealCategoryTearOff();

  _DealCategory call(
      {required UniqueId<String?> id,
      required MediaField asset,
      bool isActive = false,
      required BasicTextField<String?> name,
      required BasicTextField<String?> description,
      required BasicTextField<double?> charge,
      required BasicTextField<double?> percentageIncrease,
      required BasicTextField<int> productsAssigned,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _DealCategory(
      id: id,
      asset: asset,
      isActive: isActive,
      name: name,
      description: description,
      charge: charge,
      percentageIncrease: percentageIncrease,
      productsAssigned: productsAssigned,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $DealCategory = _$DealCategoryTearOff();

/// @nodoc
mixin _$DealCategory {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  MediaField get asset => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  BasicTextField<String?> get name => throw _privateConstructorUsedError;
  BasicTextField<String?> get description => throw _privateConstructorUsedError;
  BasicTextField<double?> get charge => throw _privateConstructorUsedError;
  BasicTextField<double?> get percentageIncrease =>
      throw _privateConstructorUsedError;
  BasicTextField<int> get productsAssigned =>
      throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DealCategoryCopyWith<DealCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealCategoryCopyWith<$Res> {
  factory $DealCategoryCopyWith(
          DealCategory value, $Res Function(DealCategory) then) =
      _$DealCategoryCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      MediaField asset,
      bool isActive,
      BasicTextField<String?> name,
      BasicTextField<String?> description,
      BasicTextField<double?> charge,
      BasicTextField<double?> percentageIncrease,
      BasicTextField<int> productsAssigned,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$DealCategoryCopyWithImpl<$Res> implements $DealCategoryCopyWith<$Res> {
  _$DealCategoryCopyWithImpl(this._value, this._then);

  final DealCategory _value;
  // ignore: unused_field
  final $Res Function(DealCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? asset = freezed,
    Object? isActive = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? charge = freezed,
    Object? percentageIncrease = freezed,
    Object? productsAssigned = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as MediaField,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      charge: charge == freezed
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      percentageIncrease: percentageIncrease == freezed
          ? _value.percentageIncrease
          : percentageIncrease // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      productsAssigned: productsAssigned == freezed
          ? _value.productsAssigned
          : productsAssigned // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$DealCategoryCopyWith<$Res>
    implements $DealCategoryCopyWith<$Res> {
  factory _$DealCategoryCopyWith(
          _DealCategory value, $Res Function(_DealCategory) then) =
      __$DealCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      MediaField asset,
      bool isActive,
      BasicTextField<String?> name,
      BasicTextField<String?> description,
      BasicTextField<double?> charge,
      BasicTextField<double?> percentageIncrease,
      BasicTextField<int> productsAssigned,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$DealCategoryCopyWithImpl<$Res> extends _$DealCategoryCopyWithImpl<$Res>
    implements _$DealCategoryCopyWith<$Res> {
  __$DealCategoryCopyWithImpl(
      _DealCategory _value, $Res Function(_DealCategory) _then)
      : super(_value, (v) => _then(v as _DealCategory));

  @override
  _DealCategory get _value => super._value as _DealCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? asset = freezed,
    Object? isActive = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? charge = freezed,
    Object? percentageIncrease = freezed,
    Object? productsAssigned = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_DealCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as MediaField,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      charge: charge == freezed
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      percentageIncrease: percentageIncrease == freezed
          ? _value.percentageIncrease
          : percentageIncrease // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      productsAssigned: productsAssigned == freezed
          ? _value.productsAssigned
          : productsAssigned // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_DealCategory extends _DealCategory {
  const _$_DealCategory(
      {required this.id,
      required this.asset,
      this.isActive = false,
      required this.name,
      required this.description,
      required this.charge,
      required this.percentageIncrease,
      required this.productsAssigned,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final MediaField asset;
  @JsonKey()
  @override
  final bool isActive;
  @override
  final BasicTextField<String?> name;
  @override
  final BasicTextField<String?> description;
  @override
  final BasicTextField<double?> charge;
  @override
  final BasicTextField<double?> percentageIncrease;
  @override
  final BasicTextField<int> productsAssigned;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DealCategory(id: $id, asset: $asset, isActive: $isActive, name: $name, description: $description, charge: $charge, percentageIncrease: $percentageIncrease, productsAssigned: $productsAssigned, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.charge, charge) &&
            const DeepCollectionEquality()
                .equals(other.percentageIncrease, percentageIncrease) &&
            const DeepCollectionEquality()
                .equals(other.productsAssigned, productsAssigned) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(asset),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(charge),
      const DeepCollectionEquality().hash(percentageIncrease),
      const DeepCollectionEquality().hash(productsAssigned),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$DealCategoryCopyWith<_DealCategory> get copyWith =>
      __$DealCategoryCopyWithImpl<_DealCategory>(this, _$identity);
}

abstract class _DealCategory extends DealCategory {
  const factory _DealCategory(
      {required UniqueId<String?> id,
      required MediaField asset,
      bool isActive,
      required BasicTextField<String?> name,
      required BasicTextField<String?> description,
      required BasicTextField<double?> charge,
      required BasicTextField<double?> percentageIncrease,
      required BasicTextField<int> productsAssigned,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_DealCategory;
  const _DealCategory._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  MediaField get asset;
  @override
  bool get isActive;
  @override
  BasicTextField<String?> get name;
  @override
  BasicTextField<String?> get description;
  @override
  BasicTextField<double?> get charge;
  @override
  BasicTextField<double?> get percentageIncrease;
  @override
  BasicTextField<int> get productsAssigned;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$DealCategoryCopyWith<_DealCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
