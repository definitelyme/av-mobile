// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of product.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {required UniqueId<String?> id,
      required DealCategory category,
      required BasicTextField<String?> name,
      KtList<MediaField> photos = const KtList.empty(),
      bool isActive = false,
      DealStatus dealStatus = DealStatus.pending,
      required BasicTextField<String?> lga,
      required BasicTextField<String?> state,
      User? vendor,
      Deal? deal,
      BrandInformation? brandInformation,
      ShippingInformation? shippingInformation,
      TermsInformation? termsInformation,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _Product(
      id: id,
      category: category,
      name: name,
      photos: photos,
      isActive: isActive,
      dealStatus: dealStatus,
      lga: lga,
      state: state,
      vendor: vendor,
      deal: deal,
      brandInformation: brandInformation,
      shippingInformation: shippingInformation,
      termsInformation: termsInformation,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  DealCategory get category => throw _privateConstructorUsedError;
  BasicTextField<String?> get name => throw _privateConstructorUsedError;
  KtList<MediaField> get photos => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DealStatus get dealStatus => throw _privateConstructorUsedError;
  BasicTextField<String?> get lga => throw _privateConstructorUsedError;
  BasicTextField<String?> get state => throw _privateConstructorUsedError;
  User? get vendor => throw _privateConstructorUsedError;
  Deal? get deal => throw _privateConstructorUsedError;
  BrandInformation? get brandInformation => throw _privateConstructorUsedError;
  ShippingInformation? get shippingInformation =>
      throw _privateConstructorUsedError;
  TermsInformation? get termsInformation => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      DealCategory category,
      BasicTextField<String?> name,
      KtList<MediaField> photos,
      bool isActive,
      DealStatus dealStatus,
      BasicTextField<String?> lga,
      BasicTextField<String?> state,
      User? vendor,
      Deal? deal,
      BrandInformation? brandInformation,
      ShippingInformation? shippingInformation,
      TermsInformation? termsInformation,
      DateTime? createdAt,
      DateTime? updatedAt});

  $DealCategoryCopyWith<$Res> get category;
  $UserCopyWith<$Res>? get vendor;
  $DealCopyWith<$Res>? get deal;
  $BrandInformationCopyWith<$Res>? get brandInformation;
  $ShippingInformationCopyWith<$Res>? get shippingInformation;
  $TermsInformationCopyWith<$Res>? get termsInformation;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? photos = freezed,
    Object? isActive = freezed,
    Object? dealStatus = freezed,
    Object? lga = freezed,
    Object? state = freezed,
    Object? vendor = freezed,
    Object? deal = freezed,
    Object? brandInformation = freezed,
    Object? shippingInformation = freezed,
    Object? termsInformation = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DealCategory,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as KtList<MediaField>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      dealStatus: dealStatus == freezed
          ? _value.dealStatus
          : dealStatus // ignore: cast_nullable_to_non_nullable
              as DealStatus,
      lga: lga == freezed
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as User?,
      deal: deal == freezed
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      brandInformation: brandInformation == freezed
          ? _value.brandInformation
          : brandInformation // ignore: cast_nullable_to_non_nullable
              as BrandInformation?,
      shippingInformation: shippingInformation == freezed
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as ShippingInformation?,
      termsInformation: termsInformation == freezed
          ? _value.termsInformation
          : termsInformation // ignore: cast_nullable_to_non_nullable
              as TermsInformation?,
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
  $DealCategoryCopyWith<$Res> get category {
    return $DealCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get vendor {
    if (_value.vendor == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.vendor!, (value) {
      return _then(_value.copyWith(vendor: value));
    });
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

  @override
  $BrandInformationCopyWith<$Res>? get brandInformation {
    if (_value.brandInformation == null) {
      return null;
    }

    return $BrandInformationCopyWith<$Res>(_value.brandInformation!, (value) {
      return _then(_value.copyWith(brandInformation: value));
    });
  }

  @override
  $ShippingInformationCopyWith<$Res>? get shippingInformation {
    if (_value.shippingInformation == null) {
      return null;
    }

    return $ShippingInformationCopyWith<$Res>(_value.shippingInformation!,
        (value) {
      return _then(_value.copyWith(shippingInformation: value));
    });
  }

  @override
  $TermsInformationCopyWith<$Res>? get termsInformation {
    if (_value.termsInformation == null) {
      return null;
    }

    return $TermsInformationCopyWith<$Res>(_value.termsInformation!, (value) {
      return _then(_value.copyWith(termsInformation: value));
    });
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      DealCategory category,
      BasicTextField<String?> name,
      KtList<MediaField> photos,
      bool isActive,
      DealStatus dealStatus,
      BasicTextField<String?> lga,
      BasicTextField<String?> state,
      User? vendor,
      Deal? deal,
      BrandInformation? brandInformation,
      ShippingInformation? shippingInformation,
      TermsInformation? termsInformation,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $DealCategoryCopyWith<$Res> get category;
  @override
  $UserCopyWith<$Res>? get vendor;
  @override
  $DealCopyWith<$Res>? get deal;
  @override
  $BrandInformationCopyWith<$Res>? get brandInformation;
  @override
  $ShippingInformationCopyWith<$Res>? get shippingInformation;
  @override
  $TermsInformationCopyWith<$Res>? get termsInformation;
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? photos = freezed,
    Object? isActive = freezed,
    Object? dealStatus = freezed,
    Object? lga = freezed,
    Object? state = freezed,
    Object? vendor = freezed,
    Object? deal = freezed,
    Object? brandInformation = freezed,
    Object? shippingInformation = freezed,
    Object? termsInformation = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DealCategory,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as KtList<MediaField>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      dealStatus: dealStatus == freezed
          ? _value.dealStatus
          : dealStatus // ignore: cast_nullable_to_non_nullable
              as DealStatus,
      lga: lga == freezed
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as User?,
      deal: deal == freezed
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      brandInformation: brandInformation == freezed
          ? _value.brandInformation
          : brandInformation // ignore: cast_nullable_to_non_nullable
              as BrandInformation?,
      shippingInformation: shippingInformation == freezed
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as ShippingInformation?,
      termsInformation: termsInformation == freezed
          ? _value.termsInformation
          : termsInformation // ignore: cast_nullable_to_non_nullable
              as TermsInformation?,
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

class _$_Product extends _Product {
  const _$_Product(
      {required this.id,
      required this.category,
      required this.name,
      this.photos = const KtList.empty(),
      this.isActive = false,
      this.dealStatus = DealStatus.pending,
      required this.lga,
      required this.state,
      this.vendor,
      this.deal,
      this.brandInformation,
      this.shippingInformation,
      this.termsInformation,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final DealCategory category;
  @override
  final BasicTextField<String?> name;
  @JsonKey()
  @override
  final KtList<MediaField> photos;
  @JsonKey()
  @override
  final bool isActive;
  @JsonKey()
  @override
  final DealStatus dealStatus;
  @override
  final BasicTextField<String?> lga;
  @override
  final BasicTextField<String?> state;
  @override
  final User? vendor;
  @override
  final Deal? deal;
  @override
  final BrandInformation? brandInformation;
  @override
  final ShippingInformation? shippingInformation;
  @override
  final TermsInformation? termsInformation;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Product(id: $id, category: $category, name: $name, photos: $photos, isActive: $isActive, dealStatus: $dealStatus, lga: $lga, state: $state, vendor: $vendor, deal: $deal, brandInformation: $brandInformation, shippingInformation: $shippingInformation, termsInformation: $termsInformation, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality()
                .equals(other.dealStatus, dealStatus) &&
            const DeepCollectionEquality().equals(other.lga, lga) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.vendor, vendor) &&
            const DeepCollectionEquality().equals(other.deal, deal) &&
            const DeepCollectionEquality()
                .equals(other.brandInformation, brandInformation) &&
            const DeepCollectionEquality()
                .equals(other.shippingInformation, shippingInformation) &&
            const DeepCollectionEquality()
                .equals(other.termsInformation, termsInformation) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(photos),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(dealStatus),
      const DeepCollectionEquality().hash(lga),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(vendor),
      const DeepCollectionEquality().hash(deal),
      const DeepCollectionEquality().hash(brandInformation),
      const DeepCollectionEquality().hash(shippingInformation),
      const DeepCollectionEquality().hash(termsInformation),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product(
      {required UniqueId<String?> id,
      required DealCategory category,
      required BasicTextField<String?> name,
      KtList<MediaField> photos,
      bool isActive,
      DealStatus dealStatus,
      required BasicTextField<String?> lga,
      required BasicTextField<String?> state,
      User? vendor,
      Deal? deal,
      BrandInformation? brandInformation,
      ShippingInformation? shippingInformation,
      TermsInformation? termsInformation,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_Product;
  const _Product._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  DealCategory get category;
  @override
  BasicTextField<String?> get name;
  @override
  KtList<MediaField> get photos;
  @override
  bool get isActive;
  @override
  DealStatus get dealStatus;
  @override
  BasicTextField<String?> get lga;
  @override
  BasicTextField<String?> get state;
  @override
  User? get vendor;
  @override
  Deal? get deal;
  @override
  BrandInformation? get brandInformation;
  @override
  ShippingInformation? get shippingInformation;
  @override
  TermsInformation? get termsInformation;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
