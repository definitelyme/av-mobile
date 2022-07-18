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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Product {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  BasicTextField get name => throw _privateConstructorUsedError;
  BasicTextField get description => throw _privateConstructorUsedError;
  KtList<UploadableMedia> get photos => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  DealStatus get dealStatus => throw _privateConstructorUsedError;
  BasicTextField get lga => throw _privateConstructorUsedError;
  BasicTextField get state => throw _privateConstructorUsedError;
  User? get vendor => throw _privateConstructorUsedError;
  Deal? get deal => throw _privateConstructorUsedError;
  Country? get country => throw _privateConstructorUsedError;
  DealCategory? get category => throw _privateConstructorUsedError;
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
      BasicTextField name,
      BasicTextField description,
      KtList<UploadableMedia> photos,
      bool isActive,
      bool isFavorite,
      DealStatus dealStatus,
      BasicTextField lga,
      BasicTextField state,
      User? vendor,
      Deal? deal,
      Country? country,
      DealCategory? category,
      BrandInformation? brandInformation,
      ShippingInformation? shippingInformation,
      TermsInformation? termsInformation,
      DateTime? createdAt,
      DateTime? updatedAt});

  $UserCopyWith<$Res>? get vendor;
  $DealCopyWith<$Res>? get deal;
  $CountryCopyWith<$Res>? get country;
  $DealCategoryCopyWith<$Res>? get category;
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
    Object? name = freezed,
    Object? description = freezed,
    Object? photos = freezed,
    Object? isActive = freezed,
    Object? isFavorite = freezed,
    Object? dealStatus = freezed,
    Object? lga = freezed,
    Object? state = freezed,
    Object? vendor = freezed,
    Object? deal = freezed,
    Object? country = freezed,
    Object? category = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as KtList<UploadableMedia>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      dealStatus: dealStatus == freezed
          ? _value.dealStatus
          : dealStatus // ignore: cast_nullable_to_non_nullable
              as DealStatus,
      lga: lga == freezed
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as User?,
      deal: deal == freezed
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DealCategory?,
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
  $CountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value));
    });
  }

  @override
  $DealCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $DealCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
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
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      BasicTextField name,
      BasicTextField description,
      KtList<UploadableMedia> photos,
      bool isActive,
      bool isFavorite,
      DealStatus dealStatus,
      BasicTextField lga,
      BasicTextField state,
      User? vendor,
      Deal? deal,
      Country? country,
      DealCategory? category,
      BrandInformation? brandInformation,
      ShippingInformation? shippingInformation,
      TermsInformation? termsInformation,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $UserCopyWith<$Res>? get vendor;
  @override
  $DealCopyWith<$Res>? get deal;
  @override
  $CountryCopyWith<$Res>? get country;
  @override
  $DealCategoryCopyWith<$Res>? get category;
  @override
  $BrandInformationCopyWith<$Res>? get brandInformation;
  @override
  $ShippingInformationCopyWith<$Res>? get shippingInformation;
  @override
  $TermsInformationCopyWith<$Res>? get termsInformation;
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, (v) => _then(v as _$_Product));

  @override
  _$_Product get _value => super._value as _$_Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? photos = freezed,
    Object? isActive = freezed,
    Object? isFavorite = freezed,
    Object? dealStatus = freezed,
    Object? lga = freezed,
    Object? state = freezed,
    Object? vendor = freezed,
    Object? deal = freezed,
    Object? country = freezed,
    Object? category = freezed,
    Object? brandInformation = freezed,
    Object? shippingInformation = freezed,
    Object? termsInformation = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as KtList<UploadableMedia>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      dealStatus: dealStatus == freezed
          ? _value.dealStatus
          : dealStatus // ignore: cast_nullable_to_non_nullable
              as DealStatus,
      lga: lga == freezed
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as User?,
      deal: deal == freezed
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as Deal?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DealCategory?,
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
      required this.name,
      required this.description,
      this.photos = const KtList.empty(),
      this.isActive = false,
      this.isFavorite = false,
      this.dealStatus = DealStatus.pending,
      required this.lga,
      required this.state,
      this.vendor,
      this.deal,
      this.country,
      this.category,
      this.brandInformation,
      this.shippingInformation,
      this.termsInformation,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final BasicTextField name;
  @override
  final BasicTextField description;
  @override
  @JsonKey()
  final KtList<UploadableMedia> photos;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final bool isFavorite;
  @override
  @JsonKey()
  final DealStatus dealStatus;
  @override
  final BasicTextField lga;
  @override
  final BasicTextField state;
  @override
  final User? vendor;
  @override
  final Deal? deal;
  @override
  final Country? country;
  @override
  final DealCategory? category;
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
    return 'Product(id: $id, name: $name, description: $description, photos: $photos, isActive: $isActive, isFavorite: $isFavorite, dealStatus: $dealStatus, lga: $lga, state: $state, vendor: $vendor, deal: $deal, country: $country, category: $category, brandInformation: $brandInformation, shippingInformation: $shippingInformation, termsInformation: $termsInformation, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality()
                .equals(other.dealStatus, dealStatus) &&
            const DeepCollectionEquality().equals(other.lga, lga) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.vendor, vendor) &&
            const DeepCollectionEquality().equals(other.deal, deal) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.category, category) &&
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
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(photos),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(isFavorite),
      const DeepCollectionEquality().hash(dealStatus),
      const DeepCollectionEquality().hash(lga),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(vendor),
      const DeepCollectionEquality().hash(deal),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(brandInformation),
      const DeepCollectionEquality().hash(shippingInformation),
      const DeepCollectionEquality().hash(termsInformation),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product(
      {required final UniqueId<String?> id,
      required final BasicTextField name,
      required final BasicTextField description,
      final KtList<UploadableMedia> photos,
      final bool isActive,
      final bool isFavorite,
      final DealStatus dealStatus,
      required final BasicTextField lga,
      required final BasicTextField state,
      final User? vendor,
      final Deal? deal,
      final Country? country,
      final DealCategory? category,
      final BrandInformation? brandInformation,
      final ShippingInformation? shippingInformation,
      final TermsInformation? termsInformation,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Product;
  const _Product._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  BasicTextField get name;
  @override
  BasicTextField get description;
  @override
  KtList<UploadableMedia> get photos;
  @override
  bool get isActive;
  @override
  bool get isFavorite;
  @override
  DealStatus get dealStatus;
  @override
  BasicTextField get lga;
  @override
  BasicTextField get state;
  @override
  User? get vendor;
  @override
  Deal? get deal;
  @override
  Country? get country;
  @override
  DealCategory? get category;
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
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
