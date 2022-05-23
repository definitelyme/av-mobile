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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DealCategory {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  MediaField get asset => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  BasicTextField<String?> get name => throw _privateConstructorUsedError;
  BasicTextField<String?> get slug => throw _privateConstructorUsedError;
  BasicTextField<String?> get description => throw _privateConstructorUsedError;
  BasicTextField<double?> get charge => throw _privateConstructorUsedError;
  BasicTextField<double?> get percentageIncrease =>
      throw _privateConstructorUsedError;
  BasicTextField<int> get productsAssigned =>
      throw _privateConstructorUsedError;
  Deal? get deal => throw _privateConstructorUsedError;
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
      BasicTextField<String?> slug,
      BasicTextField<String?> description,
      BasicTextField<double?> charge,
      BasicTextField<double?> percentageIncrease,
      BasicTextField<int> productsAssigned,
      Deal? deal,
      DateTime? createdAt,
      DateTime? updatedAt});

  $DealCopyWith<$Res>? get deal;
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
    Object? slug = freezed,
    Object? description = freezed,
    Object? charge = freezed,
    Object? percentageIncrease = freezed,
    Object? productsAssigned = freezed,
    Object? deal = freezed,
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
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
      deal: deal == freezed
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
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

  @override
  $DealCopyWith<$Res>? get deal {
    if (_value.deal == null) {
      return null;
    }

    return $DealCopyWith<$Res>(_value.deal!, (value) {
      return _then(_value.copyWith(deal: value));
    });
  }
}

/// @nodoc
abstract class _$$_DealCategoryCopyWith<$Res>
    implements $DealCategoryCopyWith<$Res> {
  factory _$$_DealCategoryCopyWith(
          _$_DealCategory value, $Res Function(_$_DealCategory) then) =
      __$$_DealCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      MediaField asset,
      bool isActive,
      BasicTextField<String?> name,
      BasicTextField<String?> slug,
      BasicTextField<String?> description,
      BasicTextField<double?> charge,
      BasicTextField<double?> percentageIncrease,
      BasicTextField<int> productsAssigned,
      Deal? deal,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $DealCopyWith<$Res>? get deal;
}

/// @nodoc
class __$$_DealCategoryCopyWithImpl<$Res>
    extends _$DealCategoryCopyWithImpl<$Res>
    implements _$$_DealCategoryCopyWith<$Res> {
  __$$_DealCategoryCopyWithImpl(
      _$_DealCategory _value, $Res Function(_$_DealCategory) _then)
      : super(_value, (v) => _then(v as _$_DealCategory));

  @override
  _$_DealCategory get _value => super._value as _$_DealCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? asset = freezed,
    Object? isActive = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? description = freezed,
    Object? charge = freezed,
    Object? percentageIncrease = freezed,
    Object? productsAssigned = freezed,
    Object? deal = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_DealCategory(
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
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
      deal: deal == freezed
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
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
      required this.slug,
      required this.description,
      required this.charge,
      required this.percentageIncrease,
      required this.productsAssigned,
      this.deal,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final MediaField asset;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final BasicTextField<String?> name;
  @override
  final BasicTextField<String?> slug;
  @override
  final BasicTextField<String?> description;
  @override
  final BasicTextField<double?> charge;
  @override
  final BasicTextField<double?> percentageIncrease;
  @override
  final BasicTextField<int> productsAssigned;
  @override
  final Deal? deal;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DealCategory(id: $id, asset: $asset, isActive: $isActive, name: $name, slug: $slug, description: $description, charge: $charge, percentageIncrease: $percentageIncrease, productsAssigned: $productsAssigned, deal: $deal, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.charge, charge) &&
            const DeepCollectionEquality()
                .equals(other.percentageIncrease, percentageIncrease) &&
            const DeepCollectionEquality()
                .equals(other.productsAssigned, productsAssigned) &&
            const DeepCollectionEquality().equals(other.deal, deal) &&
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
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(charge),
      const DeepCollectionEquality().hash(percentageIncrease),
      const DeepCollectionEquality().hash(productsAssigned),
      const DeepCollectionEquality().hash(deal),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_DealCategoryCopyWith<_$_DealCategory> get copyWith =>
      __$$_DealCategoryCopyWithImpl<_$_DealCategory>(this, _$identity);
}

abstract class _DealCategory extends DealCategory {
  const factory _DealCategory(
      {required final UniqueId<String?> id,
      required final MediaField asset,
      final bool isActive,
      required final BasicTextField<String?> name,
      required final BasicTextField<String?> slug,
      required final BasicTextField<String?> description,
      required final BasicTextField<double?> charge,
      required final BasicTextField<double?> percentageIncrease,
      required final BasicTextField<int> productsAssigned,
      final Deal? deal,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_DealCategory;
  const _DealCategory._() : super._();

  @override
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  @override
  MediaField get asset => throw _privateConstructorUsedError;
  @override
  bool get isActive => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get name => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get slug => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get description => throw _privateConstructorUsedError;
  @override
  BasicTextField<double?> get charge => throw _privateConstructorUsedError;
  @override
  BasicTextField<double?> get percentageIncrease =>
      throw _privateConstructorUsedError;
  @override
  BasicTextField<int> get productsAssigned =>
      throw _privateConstructorUsedError;
  @override
  Deal? get deal => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DealCategoryCopyWith<_$_DealCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
