// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of product_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDTO _$ProductDTOFromJson(Map<String, dynamic> json) {
  return _ProductDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  ProductDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDTOCopyWith<ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDTOCopyWith<$Res> {
  factory $ProductDTOCopyWith(
          ProductDTO value, $Res Function(ProductDTO) then) =
      _$ProductDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, ProductDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  $ProductDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$ProductDTOCopyWithImpl<$Res> implements $ProductDTOCopyWith<$Res> {
  _$ProductDTOCopyWithImpl(this._value, this._then);

  final ProductDTO _value;
  // ignore: unused_field
  final $Res Function(ProductDTO) _then;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductDTOData,
    ));
  }

  @override
  $MetaDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }

  @override
  $ProductDTODataCopyWith<$Res> get data {
    return $ProductDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductDTOCopyWith<$Res>
    implements $ProductDTOCopyWith<$Res> {
  factory _$$_ProductDTOCopyWith(
          _$_ProductDTO value, $Res Function(_$_ProductDTO) then) =
      __$$_ProductDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, ProductDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  $ProductDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ProductDTOCopyWithImpl<$Res> extends _$ProductDTOCopyWithImpl<$Res>
    implements _$$_ProductDTOCopyWith<$Res> {
  __$$_ProductDTOCopyWithImpl(
      _$_ProductDTO _value, $Res Function(_$_ProductDTO) _then)
      : super(_value, (v) => _then(v as _$_ProductDTO));

  @override
  _$_ProductDTO get _value => super._value as _$_ProductDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ProductDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDTO extends _ProductDTO {
  const _$_ProductDTO({@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final ProductDTOData data;

  @override
  String toString() {
    return 'ProductDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDTO &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_ProductDTOCopyWith<_$_ProductDTO> get copyWith =>
      __$$_ProductDTOCopyWithImpl<_$_ProductDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDTOToJson(this);
  }
}

abstract class _ProductDTO extends ProductDTO {
  const factory _ProductDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      required final ProductDTOData data}) = _$_ProductDTO;
  const _ProductDTO._() : super._();

  factory _ProductDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  @override
  ProductDTOData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDTOCopyWith<_$_ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDTOData _$ProductDTODataFromJson(Map<String, dynamic> json) {
  return _ProductDTOData.fromJson(json);
}

/// @nodoc
mixin _$ProductDTOData {
  BrandInformationDTO? get brandInformation =>
      throw _privateConstructorUsedError;
  ShippingInformationDTO? get shippingInformation =>
      throw _privateConstructorUsedError;
  TermsInformationDTO? get termsInformation =>
      throw _privateConstructorUsedError;
  CategoryDTOData? get category => throw _privateConstructorUsedError;
  UserDTO? get user => throw _privateConstructorUsedError;
  UserDTO? get vendor => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get isFavorite => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(toJson: DealStatusSerializer.toJsonString)
  @DealStatusSerializer()
  DealStatus? get status => throw _privateConstructorUsedError;
  DealDTOData? get deal => throw _privateConstructorUsedError;
  String? get lga => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDTODataCopyWith<ProductDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDTODataCopyWith<$Res> {
  factory $ProductDTODataCopyWith(
          ProductDTOData value, $Res Function(ProductDTOData) then) =
      _$ProductDTODataCopyWithImpl<$Res>;
  $Res call(
      {BrandInformationDTO? brandInformation,
      ShippingInformationDTO? shippingInformation,
      TermsInformationDTO? termsInformation,
      CategoryDTOData? category,
      UserDTO? user,
      UserDTO? vendor,
      @BooleanSerializer()
          bool? isFavorite,
      List<String> photos,
      @BooleanSerializer()
          bool? active,
      @JsonKey(name: '_id')
          String? id,
      String? description,
      @JsonKey(toJson: DealStatusSerializer.toJsonString)
      @DealStatusSerializer()
          DealStatus? status,
      DealDTOData? deal,
      String? lga,
      String? name,
      String? state,
      String? country,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt});

  $BrandInformationDTOCopyWith<$Res>? get brandInformation;
  $ShippingInformationDTOCopyWith<$Res>? get shippingInformation;
  $TermsInformationDTOCopyWith<$Res>? get termsInformation;
  $CategoryDTODataCopyWith<$Res>? get category;
  $UserDTOCopyWith<$Res>? get user;
  $UserDTOCopyWith<$Res>? get vendor;
  $DealDTODataCopyWith<$Res>? get deal;
}

/// @nodoc
class _$ProductDTODataCopyWithImpl<$Res>
    implements $ProductDTODataCopyWith<$Res> {
  _$ProductDTODataCopyWithImpl(this._value, this._then);

  final ProductDTOData _value;
  // ignore: unused_field
  final $Res Function(ProductDTOData) _then;

  @override
  $Res call({
    Object? brandInformation = freezed,
    Object? shippingInformation = freezed,
    Object? termsInformation = freezed,
    Object? category = freezed,
    Object? user = freezed,
    Object? vendor = freezed,
    Object? isFavorite = freezed,
    Object? photos = freezed,
    Object? active = freezed,
    Object? id = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? deal = freezed,
    Object? lga = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      brandInformation: brandInformation == freezed
          ? _value.brandInformation
          : brandInformation // ignore: cast_nullable_to_non_nullable
              as BrandInformationDTO?,
      shippingInformation: shippingInformation == freezed
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as ShippingInformationDTO?,
      termsInformation: termsInformation == freezed
          ? _value.termsInformation
          : termsInformation // ignore: cast_nullable_to_non_nullable
              as TermsInformationDTO?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDTOData?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DealStatus?,
      deal: deal == freezed
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as DealDTOData?,
      lga: lga == freezed
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $BrandInformationDTOCopyWith<$Res>? get brandInformation {
    if (_value.brandInformation == null) {
      return null;
    }

    return $BrandInformationDTOCopyWith<$Res>(_value.brandInformation!,
        (value) {
      return _then(_value.copyWith(brandInformation: value));
    });
  }

  @override
  $ShippingInformationDTOCopyWith<$Res>? get shippingInformation {
    if (_value.shippingInformation == null) {
      return null;
    }

    return $ShippingInformationDTOCopyWith<$Res>(_value.shippingInformation!,
        (value) {
      return _then(_value.copyWith(shippingInformation: value));
    });
  }

  @override
  $TermsInformationDTOCopyWith<$Res>? get termsInformation {
    if (_value.termsInformation == null) {
      return null;
    }

    return $TermsInformationDTOCopyWith<$Res>(_value.termsInformation!,
        (value) {
      return _then(_value.copyWith(termsInformation: value));
    });
  }

  @override
  $CategoryDTODataCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryDTODataCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }

  @override
  $UserDTOCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $UserDTOCopyWith<$Res>? get vendor {
    if (_value.vendor == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.vendor!, (value) {
      return _then(_value.copyWith(vendor: value));
    });
  }

  @override
  $DealDTODataCopyWith<$Res>? get deal {
    if (_value.deal == null) {
      return null;
    }

    return $DealDTODataCopyWith<$Res>(_value.deal!, (value) {
      return _then(_value.copyWith(deal: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductDTODataCopyWith<$Res>
    implements $ProductDTODataCopyWith<$Res> {
  factory _$$_ProductDTODataCopyWith(
          _$_ProductDTOData value, $Res Function(_$_ProductDTOData) then) =
      __$$_ProductDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {BrandInformationDTO? brandInformation,
      ShippingInformationDTO? shippingInformation,
      TermsInformationDTO? termsInformation,
      CategoryDTOData? category,
      UserDTO? user,
      UserDTO? vendor,
      @BooleanSerializer()
          bool? isFavorite,
      List<String> photos,
      @BooleanSerializer()
          bool? active,
      @JsonKey(name: '_id')
          String? id,
      String? description,
      @JsonKey(toJson: DealStatusSerializer.toJsonString)
      @DealStatusSerializer()
          DealStatus? status,
      DealDTOData? deal,
      String? lga,
      String? name,
      String? state,
      String? country,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt});

  @override
  $BrandInformationDTOCopyWith<$Res>? get brandInformation;
  @override
  $ShippingInformationDTOCopyWith<$Res>? get shippingInformation;
  @override
  $TermsInformationDTOCopyWith<$Res>? get termsInformation;
  @override
  $CategoryDTODataCopyWith<$Res>? get category;
  @override
  $UserDTOCopyWith<$Res>? get user;
  @override
  $UserDTOCopyWith<$Res>? get vendor;
  @override
  $DealDTODataCopyWith<$Res>? get deal;
}

/// @nodoc
class __$$_ProductDTODataCopyWithImpl<$Res>
    extends _$ProductDTODataCopyWithImpl<$Res>
    implements _$$_ProductDTODataCopyWith<$Res> {
  __$$_ProductDTODataCopyWithImpl(
      _$_ProductDTOData _value, $Res Function(_$_ProductDTOData) _then)
      : super(_value, (v) => _then(v as _$_ProductDTOData));

  @override
  _$_ProductDTOData get _value => super._value as _$_ProductDTOData;

  @override
  $Res call({
    Object? brandInformation = freezed,
    Object? shippingInformation = freezed,
    Object? termsInformation = freezed,
    Object? category = freezed,
    Object? user = freezed,
    Object? vendor = freezed,
    Object? isFavorite = freezed,
    Object? photos = freezed,
    Object? active = freezed,
    Object? id = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? deal = freezed,
    Object? lga = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ProductDTOData(
      brandInformation: brandInformation == freezed
          ? _value.brandInformation
          : brandInformation // ignore: cast_nullable_to_non_nullable
              as BrandInformationDTO?,
      shippingInformation: shippingInformation == freezed
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as ShippingInformationDTO?,
      termsInformation: termsInformation == freezed
          ? _value.termsInformation
          : termsInformation // ignore: cast_nullable_to_non_nullable
              as TermsInformationDTO?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDTOData?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      photos: photos == freezed
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DealStatus?,
      deal: deal == freezed
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as DealDTOData?,
      lga: lga == freezed
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
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
@JsonSerializable()
class _$_ProductDTOData extends _ProductDTOData {
  _$_ProductDTOData(
      {this.brandInformation,
      this.shippingInformation,
      this.termsInformation,
      this.category,
      this.user,
      this.vendor,
      @BooleanSerializer()
          this.isFavorite,
      final List<String> photos = const [],
      @BooleanSerializer()
          this.active,
      @JsonKey(name: '_id')
          this.id,
      this.description,
      @JsonKey(toJson: DealStatusSerializer.toJsonString)
      @DealStatusSerializer()
          this.status,
      this.deal,
      this.lga,
      this.name,
      this.state,
      this.country,
      @TimestampConverter()
          this.createdAt,
      @TimestampConverter()
          this.updatedAt})
      : _photos = photos,
        super._();

  factory _$_ProductDTOData.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDTODataFromJson(json);

  @override
  final BrandInformationDTO? brandInformation;
  @override
  final ShippingInformationDTO? shippingInformation;
  @override
  final TermsInformationDTO? termsInformation;
  @override
  final CategoryDTOData? category;
  @override
  final UserDTO? user;
  @override
  final UserDTO? vendor;
  @override
  @BooleanSerializer()
  final bool? isFavorite;
  final List<String> _photos;
  @override
  @JsonKey()
  List<String> get photos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  @BooleanSerializer()
  final bool? active;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? description;
  @override
  @JsonKey(toJson: DealStatusSerializer.toJsonString)
  @DealStatusSerializer()
  final DealStatus? status;
  @override
  final DealDTOData? deal;
  @override
  final String? lga;
  @override
  final String? name;
  @override
  final String? state;
  @override
  final String? country;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProductDTOData(brandInformation: $brandInformation, shippingInformation: $shippingInformation, termsInformation: $termsInformation, category: $category, user: $user, vendor: $vendor, isFavorite: $isFavorite, photos: $photos, active: $active, id: $id, description: $description, status: $status, deal: $deal, lga: $lga, name: $name, state: $state, country: $country, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDTOData &&
            const DeepCollectionEquality()
                .equals(other.brandInformation, brandInformation) &&
            const DeepCollectionEquality()
                .equals(other.shippingInformation, shippingInformation) &&
            const DeepCollectionEquality()
                .equals(other.termsInformation, termsInformation) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.vendor, vendor) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.deal, deal) &&
            const DeepCollectionEquality().equals(other.lga, lga) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(brandInformation),
        const DeepCollectionEquality().hash(shippingInformation),
        const DeepCollectionEquality().hash(termsInformation),
        const DeepCollectionEquality().hash(category),
        const DeepCollectionEquality().hash(user),
        const DeepCollectionEquality().hash(vendor),
        const DeepCollectionEquality().hash(isFavorite),
        const DeepCollectionEquality().hash(_photos),
        const DeepCollectionEquality().hash(active),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(deal),
        const DeepCollectionEquality().hash(lga),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(state),
        const DeepCollectionEquality().hash(country),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_ProductDTODataCopyWith<_$_ProductDTOData> get copyWith =>
      __$$_ProductDTODataCopyWithImpl<_$_ProductDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDTODataToJson(this);
  }
}

abstract class _ProductDTOData extends ProductDTOData {
  factory _ProductDTOData(
      {final BrandInformationDTO? brandInformation,
      final ShippingInformationDTO? shippingInformation,
      final TermsInformationDTO? termsInformation,
      final CategoryDTOData? category,
      final UserDTO? user,
      final UserDTO? vendor,
      @BooleanSerializer()
          final bool? isFavorite,
      final List<String> photos,
      @BooleanSerializer()
          final bool? active,
      @JsonKey(name: '_id')
          final String? id,
      final String? description,
      @JsonKey(toJson: DealStatusSerializer.toJsonString)
      @DealStatusSerializer()
          final DealStatus? status,
      final DealDTOData? deal,
      final String? lga,
      final String? name,
      final String? state,
      final String? country,
      @TimestampConverter()
          final DateTime? createdAt,
      @TimestampConverter()
          final DateTime? updatedAt}) = _$_ProductDTOData;
  _ProductDTOData._() : super._();

  factory _ProductDTOData.fromJson(Map<String, dynamic> json) =
      _$_ProductDTOData.fromJson;

  @override
  BrandInformationDTO? get brandInformation =>
      throw _privateConstructorUsedError;
  @override
  ShippingInformationDTO? get shippingInformation =>
      throw _privateConstructorUsedError;
  @override
  TermsInformationDTO? get termsInformation =>
      throw _privateConstructorUsedError;
  @override
  CategoryDTOData? get category => throw _privateConstructorUsedError;
  @override
  UserDTO? get user => throw _privateConstructorUsedError;
  @override
  UserDTO? get vendor => throw _privateConstructorUsedError;
  @override
  @BooleanSerializer()
  bool? get isFavorite => throw _privateConstructorUsedError;
  @override
  List<String> get photos => throw _privateConstructorUsedError;
  @override
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: DealStatusSerializer.toJsonString)
  @DealStatusSerializer()
  DealStatus? get status => throw _privateConstructorUsedError;
  @override
  DealDTOData? get deal => throw _privateConstructorUsedError;
  @override
  String? get lga => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get state => throw _privateConstructorUsedError;
  @override
  String? get country => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDTODataCopyWith<_$_ProductDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductListDTO _$ProductListDTOFromJson(Map<String, dynamic> json) {
  return _ProductListDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<ProductDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductListDTOCopyWith<ProductListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListDTOCopyWith<$Res> {
  factory $ProductListDTOCopyWith(
          ProductListDTO value, $Res Function(ProductListDTO) then) =
      _$ProductListDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, List<ProductDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ProductListDTOCopyWithImpl<$Res>
    implements $ProductListDTOCopyWith<$Res> {
  _$ProductListDTOCopyWithImpl(this._value, this._then);

  final ProductListDTO _value;
  // ignore: unused_field
  final $Res Function(ProductListDTO) _then;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductDTOData>,
    ));
  }

  @override
  $MetaDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductListDTOCopyWith<$Res>
    implements $ProductListDTOCopyWith<$Res> {
  factory _$$_ProductListDTOCopyWith(
          _$_ProductListDTO value, $Res Function(_$_ProductListDTO) then) =
      __$$_ProductListDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, List<ProductDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_ProductListDTOCopyWithImpl<$Res>
    extends _$ProductListDTOCopyWithImpl<$Res>
    implements _$$_ProductListDTOCopyWith<$Res> {
  __$$_ProductListDTOCopyWithImpl(
      _$_ProductListDTO _value, $Res Function(_$_ProductListDTO) _then)
      : super(_value, (v) => _then(v as _$_ProductListDTO));

  @override
  _$_ProductListDTO get _value => super._value as _$_ProductListDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ProductListDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductListDTO extends _ProductListDTO {
  const _$_ProductListDTO(
      {@JsonKey(name: '_meta') this.meta,
      final List<ProductDTOData> data = const []})
      : _data = data,
        super._();

  factory _$_ProductListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  final List<ProductDTOData> _data;
  @override
  @JsonKey()
  List<ProductDTOData> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ProductListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductListDTO &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_ProductListDTOCopyWith<_$_ProductListDTO> get copyWith =>
      __$$_ProductListDTOCopyWithImpl<_$_ProductListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductListDTOToJson(this);
  }
}

abstract class _ProductListDTO extends ProductListDTO {
  const factory _ProductListDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      final List<ProductDTOData> data}) = _$_ProductListDTO;
  const _ProductListDTO._() : super._();

  factory _ProductListDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  @override
  List<ProductDTOData> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductListDTOCopyWith<_$_ProductListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
