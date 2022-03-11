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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDTO _$ProductDTOFromJson(Map<String, dynamic> json) {
  return _ProductDTO.fromJson(json);
}

/// @nodoc
class _$ProductDTOTearOff {
  const _$ProductDTOTearOff();

  _ProductDTO call(
      {@JsonKey(name: '_meta') MetaDTO? meta, required ProductDTOData data}) {
    return _ProductDTO(
      meta: meta,
      data: data,
    );
  }

  ProductDTO fromJson(Map<String, Object?> json) {
    return ProductDTO.fromJson(json);
  }
}

/// @nodoc
const $ProductDTO = _$ProductDTOTearOff();

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
abstract class _$ProductDTOCopyWith<$Res> implements $ProductDTOCopyWith<$Res> {
  factory _$ProductDTOCopyWith(
          _ProductDTO value, $Res Function(_ProductDTO) then) =
      __$ProductDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, ProductDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  $ProductDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$ProductDTOCopyWithImpl<$Res> extends _$ProductDTOCopyWithImpl<$Res>
    implements _$ProductDTOCopyWith<$Res> {
  __$ProductDTOCopyWithImpl(
      _ProductDTO _value, $Res Function(_ProductDTO) _then)
      : super(_value, (v) => _then(v as _ProductDTO));

  @override
  _ProductDTO get _value => super._value as _ProductDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_ProductDTO(
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
            other is _ProductDTO &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$ProductDTOCopyWith<_ProductDTO> get copyWith =>
      __$ProductDTOCopyWithImpl<_ProductDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDTOToJson(this);
  }
}

abstract class _ProductDTO extends ProductDTO {
  const factory _ProductDTO(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      required ProductDTOData data}) = _$_ProductDTO;
  const _ProductDTO._() : super._();

  factory _ProductDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  ProductDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$ProductDTOCopyWith<_ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDTOData _$ProductDTODataFromJson(Map<String, dynamic> json) {
  return _ProductDTOData.fromJson(json);
}

/// @nodoc
class _$ProductDTODataTearOff {
  const _$ProductDTODataTearOff();

  _ProductDTOData call(
      {BrandInformationDTO? brandInformation,
      ShippingInformationDTO? shippingInformation,
      TermsInformationDTO? termsInformation,
      CategoryDTO? category,
      UserDTO? user,
      UserDTO? vendor,
      List<String> photos = const [],
      @BooleanSerializer() bool? active,
      @JsonKey(name: '_id') String? id,
      String? status,
      DealDTOData? deal,
      String? lga,
      String? name,
      String? state,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt}) {
    return _ProductDTOData(
      brandInformation: brandInformation,
      shippingInformation: shippingInformation,
      termsInformation: termsInformation,
      category: category,
      user: user,
      vendor: vendor,
      photos: photos,
      active: active,
      id: id,
      status: status,
      deal: deal,
      lga: lga,
      name: name,
      state: state,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  ProductDTOData fromJson(Map<String, Object?> json) {
    return ProductDTOData.fromJson(json);
  }
}

/// @nodoc
const $ProductDTOData = _$ProductDTODataTearOff();

/// @nodoc
mixin _$ProductDTOData {
  BrandInformationDTO? get brandInformation =>
      throw _privateConstructorUsedError;
  ShippingInformationDTO? get shippingInformation =>
      throw _privateConstructorUsedError;
  TermsInformationDTO? get termsInformation =>
      throw _privateConstructorUsedError;
  CategoryDTO? get category => throw _privateConstructorUsedError;
  UserDTO? get user => throw _privateConstructorUsedError;
  UserDTO? get vendor => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DealDTOData? get deal => throw _privateConstructorUsedError;
  String? get lga => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
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
      CategoryDTO? category,
      UserDTO? user,
      UserDTO? vendor,
      List<String> photos,
      @BooleanSerializer() bool? active,
      @JsonKey(name: '_id') String? id,
      String? status,
      DealDTOData? deal,
      String? lga,
      String? name,
      String? state,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  $BrandInformationDTOCopyWith<$Res>? get brandInformation;
  $ShippingInformationDTOCopyWith<$Res>? get shippingInformation;
  $TermsInformationDTOCopyWith<$Res>? get termsInformation;
  $CategoryDTOCopyWith<$Res>? get category;
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
    Object? photos = freezed,
    Object? active = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? deal = freezed,
    Object? lga = freezed,
    Object? name = freezed,
    Object? state = freezed,
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
              as CategoryDTO?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $CategoryDTOCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryDTOCopyWith<$Res>(_value.category!, (value) {
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
abstract class _$ProductDTODataCopyWith<$Res>
    implements $ProductDTODataCopyWith<$Res> {
  factory _$ProductDTODataCopyWith(
          _ProductDTOData value, $Res Function(_ProductDTOData) then) =
      __$ProductDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {BrandInformationDTO? brandInformation,
      ShippingInformationDTO? shippingInformation,
      TermsInformationDTO? termsInformation,
      CategoryDTO? category,
      UserDTO? user,
      UserDTO? vendor,
      List<String> photos,
      @BooleanSerializer() bool? active,
      @JsonKey(name: '_id') String? id,
      String? status,
      DealDTOData? deal,
      String? lga,
      String? name,
      String? state,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  @override
  $BrandInformationDTOCopyWith<$Res>? get brandInformation;
  @override
  $ShippingInformationDTOCopyWith<$Res>? get shippingInformation;
  @override
  $TermsInformationDTOCopyWith<$Res>? get termsInformation;
  @override
  $CategoryDTOCopyWith<$Res>? get category;
  @override
  $UserDTOCopyWith<$Res>? get user;
  @override
  $UserDTOCopyWith<$Res>? get vendor;
  @override
  $DealDTODataCopyWith<$Res>? get deal;
}

/// @nodoc
class __$ProductDTODataCopyWithImpl<$Res>
    extends _$ProductDTODataCopyWithImpl<$Res>
    implements _$ProductDTODataCopyWith<$Res> {
  __$ProductDTODataCopyWithImpl(
      _ProductDTOData _value, $Res Function(_ProductDTOData) _then)
      : super(_value, (v) => _then(v as _ProductDTOData));

  @override
  _ProductDTOData get _value => super._value as _ProductDTOData;

  @override
  $Res call({
    Object? brandInformation = freezed,
    Object? shippingInformation = freezed,
    Object? termsInformation = freezed,
    Object? category = freezed,
    Object? user = freezed,
    Object? vendor = freezed,
    Object? photos = freezed,
    Object? active = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? deal = freezed,
    Object? lga = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ProductDTOData(
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
              as CategoryDTO?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.photos = const [],
      @BooleanSerializer() this.active,
      @JsonKey(name: '_id') this.id,
      this.status,
      this.deal,
      this.lga,
      this.name,
      this.state,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : super._();

  factory _$_ProductDTOData.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDTODataFromJson(json);

  @override
  final BrandInformationDTO? brandInformation;
  @override
  final ShippingInformationDTO? shippingInformation;
  @override
  final TermsInformationDTO? termsInformation;
  @override
  final CategoryDTO? category;
  @override
  final UserDTO? user;
  @override
  final UserDTO? vendor;
  @JsonKey()
  @override
  final List<String> photos;
  @override
  @BooleanSerializer()
  final bool? active;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? status;
  @override
  final DealDTOData? deal;
  @override
  final String? lga;
  @override
  final String? name;
  @override
  final String? state;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProductDTOData(brandInformation: $brandInformation, shippingInformation: $shippingInformation, termsInformation: $termsInformation, category: $category, user: $user, vendor: $vendor, photos: $photos, active: $active, id: $id, status: $status, deal: $deal, lga: $lga, name: $name, state: $state, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDTOData &&
            const DeepCollectionEquality()
                .equals(other.brandInformation, brandInformation) &&
            const DeepCollectionEquality()
                .equals(other.shippingInformation, shippingInformation) &&
            const DeepCollectionEquality()
                .equals(other.termsInformation, termsInformation) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.vendor, vendor) &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.deal, deal) &&
            const DeepCollectionEquality().equals(other.lga, lga) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(brandInformation),
      const DeepCollectionEquality().hash(shippingInformation),
      const DeepCollectionEquality().hash(termsInformation),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(vendor),
      const DeepCollectionEquality().hash(photos),
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(deal),
      const DeepCollectionEquality().hash(lga),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$ProductDTODataCopyWith<_ProductDTOData> get copyWith =>
      __$ProductDTODataCopyWithImpl<_ProductDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDTODataToJson(this);
  }
}

abstract class _ProductDTOData extends ProductDTOData {
  factory _ProductDTOData(
      {BrandInformationDTO? brandInformation,
      ShippingInformationDTO? shippingInformation,
      TermsInformationDTO? termsInformation,
      CategoryDTO? category,
      UserDTO? user,
      UserDTO? vendor,
      List<String> photos,
      @BooleanSerializer() bool? active,
      @JsonKey(name: '_id') String? id,
      String? status,
      DealDTOData? deal,
      String? lga,
      String? name,
      String? state,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt}) = _$_ProductDTOData;
  _ProductDTOData._() : super._();

  factory _ProductDTOData.fromJson(Map<String, dynamic> json) =
      _$_ProductDTOData.fromJson;

  @override
  BrandInformationDTO? get brandInformation;
  @override
  ShippingInformationDTO? get shippingInformation;
  @override
  TermsInformationDTO? get termsInformation;
  @override
  CategoryDTO? get category;
  @override
  UserDTO? get user;
  @override
  UserDTO? get vendor;
  @override
  List<String> get photos;
  @override
  @BooleanSerializer()
  bool? get active;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get status;
  @override
  DealDTOData? get deal;
  @override
  String? get lga;
  @override
  String? get name;
  @override
  String? get state;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$ProductDTODataCopyWith<_ProductDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductListDTO _$ProductListDTOFromJson(Map<String, dynamic> json) {
  return _ProductListDTO.fromJson(json);
}

/// @nodoc
class _$ProductListDTOTearOff {
  const _$ProductListDTOTearOff();

  _ProductListDTO call(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      List<ProductDTOData> data = const []}) {
    return _ProductListDTO(
      meta: meta,
      data: data,
    );
  }

  ProductListDTO fromJson(Map<String, Object?> json) {
    return ProductListDTO.fromJson(json);
  }
}

/// @nodoc
const $ProductListDTO = _$ProductListDTOTearOff();

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
abstract class _$ProductListDTOCopyWith<$Res>
    implements $ProductListDTOCopyWith<$Res> {
  factory _$ProductListDTOCopyWith(
          _ProductListDTO value, $Res Function(_ProductListDTO) then) =
      __$ProductListDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, List<ProductDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$ProductListDTOCopyWithImpl<$Res>
    extends _$ProductListDTOCopyWithImpl<$Res>
    implements _$ProductListDTOCopyWith<$Res> {
  __$ProductListDTOCopyWithImpl(
      _ProductListDTO _value, $Res Function(_ProductListDTO) _then)
      : super(_value, (v) => _then(v as _ProductListDTO));

  @override
  _ProductListDTO get _value => super._value as _ProductListDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_ProductListDTO(
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
}

/// @nodoc
@JsonSerializable()
class _$_ProductListDTO extends _ProductListDTO {
  const _$_ProductListDTO(
      {@JsonKey(name: '_meta') this.meta, this.data = const []})
      : super._();

  factory _$_ProductListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @JsonKey()
  @override
  final List<ProductDTOData> data;

  @override
  String toString() {
    return 'ProductListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductListDTO &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$ProductListDTOCopyWith<_ProductListDTO> get copyWith =>
      __$ProductListDTOCopyWithImpl<_ProductListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductListDTOToJson(this);
  }
}

abstract class _ProductListDTO extends ProductListDTO {
  const factory _ProductListDTO(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      List<ProductDTOData> data}) = _$_ProductListDTO;
  const _ProductListDTO._() : super._();

  factory _ProductListDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  List<ProductDTOData> get data;
  @override
  @JsonKey(ignore: true)
  _$ProductListDTOCopyWith<_ProductListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
