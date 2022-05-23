// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of deal_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DealDTO _$DealDTOFromJson(Map<String, dynamic> json) {
  return _DealDTO.fromJson(json);
}

/// @nodoc
mixin _$DealDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  DealDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealDTOCopyWith<DealDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealDTOCopyWith<$Res> {
  factory $DealDTOCopyWith(DealDTO value, $Res Function(DealDTO) then) =
      _$DealDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, DealDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  $DealDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$DealDTOCopyWithImpl<$Res> implements $DealDTOCopyWith<$Res> {
  _$DealDTOCopyWithImpl(this._value, this._then);

  final DealDTO _value;
  // ignore: unused_field
  final $Res Function(DealDTO) _then;

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
              as DealDTOData,
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
  $DealDTODataCopyWith<$Res> get data {
    return $DealDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_DealDTOCopyWith<$Res> implements $DealDTOCopyWith<$Res> {
  factory _$$_DealDTOCopyWith(
          _$_DealDTO value, $Res Function(_$_DealDTO) then) =
      __$$_DealDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, DealDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  $DealDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DealDTOCopyWithImpl<$Res> extends _$DealDTOCopyWithImpl<$Res>
    implements _$$_DealDTOCopyWith<$Res> {
  __$$_DealDTOCopyWithImpl(_$_DealDTO _value, $Res Function(_$_DealDTO) _then)
      : super(_value, (v) => _then(v as _$_DealDTO));

  @override
  _$_DealDTO get _value => super._value as _$_DealDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DealDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DealDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DealDTO extends _DealDTO {
  const _$_DealDTO({@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_DealDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DealDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final DealDTOData data;

  @override
  String toString() {
    return 'DealDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealDTO &&
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
  _$$_DealDTOCopyWith<_$_DealDTO> get copyWith =>
      __$$_DealDTOCopyWithImpl<_$_DealDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealDTOToJson(this);
  }
}

abstract class _DealDTO extends DealDTO {
  const factory _DealDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      required final DealDTOData data}) = _$_DealDTO;
  const _DealDTO._() : super._();

  factory _DealDTO.fromJson(Map<String, dynamic> json) = _$_DealDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  @override
  DealDTOData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DealDTOCopyWith<_$_DealDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

DealDTOData _$DealDTODataFromJson(Map<String, dynamic> json) {
  return _DealDTOData.fromJson(json);
}

/// @nodoc
mixin _$DealDTOData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get basePrice => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get amount => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get country => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get isPrivate => throw _privateConstructorUsedError;
  @JsonKey(name: 'isFavorite')
  @BooleanSerializer()
  bool? get isFavorite => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', toJson: DealStatusSerializer.toJsonString)
  @DealStatusSerializer()
  DealStatus? get dealStatus => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get sponsored => throw _privateConstructorUsedError;
  @JsonKey(name: 'plan', toJson: DealPlanTypeSerializer.toJsonString)
  @DealPlanTypeSerializer()
  DealPlanType? get dealPlan => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get admittanceFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @IntegerSerializer()
  int? get clicks => throw _privateConstructorUsedError;
  @IntegerSerializer()
  int? get dealPriority => throw _privateConstructorUsedError;
  @JsonKey(toJson: BidStatusSerializer.toJsonString)
  @BidStatusSerializer()
  BidStatus? get bidStatus => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get isClosing => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get lastPriceOffered => throw _privateConstructorUsedError;
  @JsonKey(toJson: OfferTypeSerializer.toJsonString)
  @OfferTypeSerializer()
  OfferType? get offerType => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get endDate => throw _privateConstructorUsedError;
  @JsonKey(toJson: DealTypeSerializer.toJsonString)
  @DealTypeSerializer()
  DealType? get type => throw _privateConstructorUsedError;
  @JsonKey(toJson: QuantityTypeSerializer.toJsonString)
  @QuantityTypeSerializer()
  QuantityType? get quantity => throw _privateConstructorUsedError;
  @JsonKey(toJson: BiddingTypeSerializer.toJsonString)
  @BiddingTypeSerializer()
  BiddingType? get biddingType => throw _privateConstructorUsedError;
  UserDTO? get user => throw _privateConstructorUsedError;
  UserDTO? get vendor =>
      throw _privateConstructorUsedError; // UserDTO? lastBidder,
  ProductDTOData? get product =>
      throw _privateConstructorUsedError; // CategoryDTOData? category,
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealDTODataCopyWith<DealDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealDTODataCopyWith<$Res> {
  factory $DealDTODataCopyWith(
          DealDTOData value, $Res Function(DealDTOData) then) =
      _$DealDTODataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id')
          String? id,
      @StringSerializer()
          String? basePrice,
      @StringSerializer()
          String? amount,
      @StringSerializer()
          String? country,
      @BooleanSerializer()
          bool? isPrivate,
      @JsonKey(name: 'isFavorite')
      @BooleanSerializer()
          bool? isFavorite,
      @JsonKey(name: 'status', toJson: DealStatusSerializer.toJsonString)
      @DealStatusSerializer()
          DealStatus? dealStatus,
      @BooleanSerializer()
          bool? sponsored,
      @JsonKey(name: 'plan', toJson: DealPlanTypeSerializer.toJsonString)
      @DealPlanTypeSerializer()
          DealPlanType? dealPlan,
      @DoubleSerializer()
          double? admittanceFee,
      @JsonKey(name: 'address')
          String? address,
      @IntegerSerializer()
          int? clicks,
      @IntegerSerializer()
          int? dealPriority,
      @JsonKey(toJson: BidStatusSerializer.toJsonString)
      @BidStatusSerializer()
          BidStatus? bidStatus,
      @BooleanSerializer()
          bool? isClosing,
      @BooleanSerializer()
          bool? active,
      @DoubleSerializer()
          double? lastPriceOffered,
      @JsonKey(toJson: OfferTypeSerializer.toJsonString)
      @OfferTypeSerializer()
          OfferType? offerType,
      @TimestampConverter()
          DateTime? startDate,
      @TimestampConverter()
          DateTime? endDate,
      @JsonKey(toJson: DealTypeSerializer.toJsonString)
      @DealTypeSerializer()
          DealType? type,
      @JsonKey(toJson: QuantityTypeSerializer.toJsonString)
      @QuantityTypeSerializer()
          QuantityType? quantity,
      @JsonKey(toJson: BiddingTypeSerializer.toJsonString)
      @BiddingTypeSerializer()
          BiddingType? biddingType,
      UserDTO? user,
      UserDTO? vendor,
      ProductDTOData? product,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt});

  $UserDTOCopyWith<$Res>? get user;
  $UserDTOCopyWith<$Res>? get vendor;
  $ProductDTODataCopyWith<$Res>? get product;
}

/// @nodoc
class _$DealDTODataCopyWithImpl<$Res> implements $DealDTODataCopyWith<$Res> {
  _$DealDTODataCopyWithImpl(this._value, this._then);

  final DealDTOData _value;
  // ignore: unused_field
  final $Res Function(DealDTOData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? basePrice = freezed,
    Object? amount = freezed,
    Object? country = freezed,
    Object? isPrivate = freezed,
    Object? isFavorite = freezed,
    Object? dealStatus = freezed,
    Object? sponsored = freezed,
    Object? dealPlan = freezed,
    Object? admittanceFee = freezed,
    Object? address = freezed,
    Object? clicks = freezed,
    Object? dealPriority = freezed,
    Object? bidStatus = freezed,
    Object? isClosing = freezed,
    Object? active = freezed,
    Object? lastPriceOffered = freezed,
    Object? offerType = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? type = freezed,
    Object? quantity = freezed,
    Object? biddingType = freezed,
    Object? user = freezed,
    Object? vendor = freezed,
    Object? product = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: basePrice == freezed
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      dealStatus: dealStatus == freezed
          ? _value.dealStatus
          : dealStatus // ignore: cast_nullable_to_non_nullable
              as DealStatus?,
      sponsored: sponsored == freezed
          ? _value.sponsored
          : sponsored // ignore: cast_nullable_to_non_nullable
              as bool?,
      dealPlan: dealPlan == freezed
          ? _value.dealPlan
          : dealPlan // ignore: cast_nullable_to_non_nullable
              as DealPlanType?,
      admittanceFee: admittanceFee == freezed
          ? _value.admittanceFee
          : admittanceFee // ignore: cast_nullable_to_non_nullable
              as double?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      clicks: clicks == freezed
          ? _value.clicks
          : clicks // ignore: cast_nullable_to_non_nullable
              as int?,
      dealPriority: dealPriority == freezed
          ? _value.dealPriority
          : dealPriority // ignore: cast_nullable_to_non_nullable
              as int?,
      bidStatus: bidStatus == freezed
          ? _value.bidStatus
          : bidStatus // ignore: cast_nullable_to_non_nullable
              as BidStatus?,
      isClosing: isClosing == freezed
          ? _value.isClosing
          : isClosing // ignore: cast_nullable_to_non_nullable
              as bool?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastPriceOffered: lastPriceOffered == freezed
          ? _value.lastPriceOffered
          : lastPriceOffered // ignore: cast_nullable_to_non_nullable
              as double?,
      offerType: offerType == freezed
          ? _value.offerType
          : offerType // ignore: cast_nullable_to_non_nullable
              as OfferType?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DealType?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as QuantityType?,
      biddingType: biddingType == freezed
          ? _value.biddingType
          : biddingType // ignore: cast_nullable_to_non_nullable
              as BiddingType?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDTOData?,
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
  $ProductDTODataCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductDTODataCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$$_DealDTODataCopyWith<$Res>
    implements $DealDTODataCopyWith<$Res> {
  factory _$$_DealDTODataCopyWith(
          _$_DealDTOData value, $Res Function(_$_DealDTOData) then) =
      __$$_DealDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id')
          String? id,
      @StringSerializer()
          String? basePrice,
      @StringSerializer()
          String? amount,
      @StringSerializer()
          String? country,
      @BooleanSerializer()
          bool? isPrivate,
      @JsonKey(name: 'isFavorite')
      @BooleanSerializer()
          bool? isFavorite,
      @JsonKey(name: 'status', toJson: DealStatusSerializer.toJsonString)
      @DealStatusSerializer()
          DealStatus? dealStatus,
      @BooleanSerializer()
          bool? sponsored,
      @JsonKey(name: 'plan', toJson: DealPlanTypeSerializer.toJsonString)
      @DealPlanTypeSerializer()
          DealPlanType? dealPlan,
      @DoubleSerializer()
          double? admittanceFee,
      @JsonKey(name: 'address')
          String? address,
      @IntegerSerializer()
          int? clicks,
      @IntegerSerializer()
          int? dealPriority,
      @JsonKey(toJson: BidStatusSerializer.toJsonString)
      @BidStatusSerializer()
          BidStatus? bidStatus,
      @BooleanSerializer()
          bool? isClosing,
      @BooleanSerializer()
          bool? active,
      @DoubleSerializer()
          double? lastPriceOffered,
      @JsonKey(toJson: OfferTypeSerializer.toJsonString)
      @OfferTypeSerializer()
          OfferType? offerType,
      @TimestampConverter()
          DateTime? startDate,
      @TimestampConverter()
          DateTime? endDate,
      @JsonKey(toJson: DealTypeSerializer.toJsonString)
      @DealTypeSerializer()
          DealType? type,
      @JsonKey(toJson: QuantityTypeSerializer.toJsonString)
      @QuantityTypeSerializer()
          QuantityType? quantity,
      @JsonKey(toJson: BiddingTypeSerializer.toJsonString)
      @BiddingTypeSerializer()
          BiddingType? biddingType,
      UserDTO? user,
      UserDTO? vendor,
      ProductDTOData? product,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt});

  @override
  $UserDTOCopyWith<$Res>? get user;
  @override
  $UserDTOCopyWith<$Res>? get vendor;
  @override
  $ProductDTODataCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_DealDTODataCopyWithImpl<$Res> extends _$DealDTODataCopyWithImpl<$Res>
    implements _$$_DealDTODataCopyWith<$Res> {
  __$$_DealDTODataCopyWithImpl(
      _$_DealDTOData _value, $Res Function(_$_DealDTOData) _then)
      : super(_value, (v) => _then(v as _$_DealDTOData));

  @override
  _$_DealDTOData get _value => super._value as _$_DealDTOData;

  @override
  $Res call({
    Object? id = freezed,
    Object? basePrice = freezed,
    Object? amount = freezed,
    Object? country = freezed,
    Object? isPrivate = freezed,
    Object? isFavorite = freezed,
    Object? dealStatus = freezed,
    Object? sponsored = freezed,
    Object? dealPlan = freezed,
    Object? admittanceFee = freezed,
    Object? address = freezed,
    Object? clicks = freezed,
    Object? dealPriority = freezed,
    Object? bidStatus = freezed,
    Object? isClosing = freezed,
    Object? active = freezed,
    Object? lastPriceOffered = freezed,
    Object? offerType = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? type = freezed,
    Object? quantity = freezed,
    Object? biddingType = freezed,
    Object? user = freezed,
    Object? vendor = freezed,
    Object? product = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_DealDTOData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: basePrice == freezed
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      dealStatus: dealStatus == freezed
          ? _value.dealStatus
          : dealStatus // ignore: cast_nullable_to_non_nullable
              as DealStatus?,
      sponsored: sponsored == freezed
          ? _value.sponsored
          : sponsored // ignore: cast_nullable_to_non_nullable
              as bool?,
      dealPlan: dealPlan == freezed
          ? _value.dealPlan
          : dealPlan // ignore: cast_nullable_to_non_nullable
              as DealPlanType?,
      admittanceFee: admittanceFee == freezed
          ? _value.admittanceFee
          : admittanceFee // ignore: cast_nullable_to_non_nullable
              as double?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      clicks: clicks == freezed
          ? _value.clicks
          : clicks // ignore: cast_nullable_to_non_nullable
              as int?,
      dealPriority: dealPriority == freezed
          ? _value.dealPriority
          : dealPriority // ignore: cast_nullable_to_non_nullable
              as int?,
      bidStatus: bidStatus == freezed
          ? _value.bidStatus
          : bidStatus // ignore: cast_nullable_to_non_nullable
              as BidStatus?,
      isClosing: isClosing == freezed
          ? _value.isClosing
          : isClosing // ignore: cast_nullable_to_non_nullable
              as bool?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastPriceOffered: lastPriceOffered == freezed
          ? _value.lastPriceOffered
          : lastPriceOffered // ignore: cast_nullable_to_non_nullable
              as double?,
      offerType: offerType == freezed
          ? _value.offerType
          : offerType // ignore: cast_nullable_to_non_nullable
              as OfferType?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DealType?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as QuantityType?,
      biddingType: biddingType == freezed
          ? _value.biddingType
          : biddingType // ignore: cast_nullable_to_non_nullable
              as BiddingType?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDTOData?,
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
class _$_DealDTOData extends _DealDTOData {
  const _$_DealDTOData(
      {@JsonKey(name: '_id')
          this.id,
      @StringSerializer()
          this.basePrice,
      @StringSerializer()
          this.amount,
      @StringSerializer()
          this.country,
      @BooleanSerializer()
          this.isPrivate,
      @JsonKey(name: 'isFavorite')
      @BooleanSerializer()
          this.isFavorite,
      @JsonKey(name: 'status', toJson: DealStatusSerializer.toJsonString)
      @DealStatusSerializer()
          this.dealStatus,
      @BooleanSerializer()
          this.sponsored,
      @JsonKey(name: 'plan', toJson: DealPlanTypeSerializer.toJsonString)
      @DealPlanTypeSerializer()
          this.dealPlan,
      @DoubleSerializer()
          this.admittanceFee,
      @JsonKey(name: 'address')
          this.address,
      @IntegerSerializer()
          this.clicks,
      @IntegerSerializer()
          this.dealPriority,
      @JsonKey(toJson: BidStatusSerializer.toJsonString)
      @BidStatusSerializer()
          this.bidStatus,
      @BooleanSerializer()
          this.isClosing,
      @BooleanSerializer()
          this.active,
      @DoubleSerializer()
          this.lastPriceOffered,
      @JsonKey(toJson: OfferTypeSerializer.toJsonString)
      @OfferTypeSerializer()
          this.offerType,
      @TimestampConverter()
          this.startDate,
      @TimestampConverter()
          this.endDate,
      @JsonKey(toJson: DealTypeSerializer.toJsonString)
      @DealTypeSerializer()
          this.type,
      @JsonKey(toJson: QuantityTypeSerializer.toJsonString)
      @QuantityTypeSerializer()
          this.quantity,
      @JsonKey(toJson: BiddingTypeSerializer.toJsonString)
      @BiddingTypeSerializer()
          this.biddingType,
      this.user,
      this.vendor,
      this.product,
      @TimestampConverter()
          this.createdAt,
      @TimestampConverter()
          this.updatedAt})
      : super._();

  factory _$_DealDTOData.fromJson(Map<String, dynamic> json) =>
      _$$_DealDTODataFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @StringSerializer()
  final String? basePrice;
  @override
  @StringSerializer()
  final String? amount;
  @override
  @StringSerializer()
  final String? country;
  @override
  @BooleanSerializer()
  final bool? isPrivate;
  @override
  @JsonKey(name: 'isFavorite')
  @BooleanSerializer()
  final bool? isFavorite;
  @override
  @JsonKey(name: 'status', toJson: DealStatusSerializer.toJsonString)
  @DealStatusSerializer()
  final DealStatus? dealStatus;
  @override
  @BooleanSerializer()
  final bool? sponsored;
  @override
  @JsonKey(name: 'plan', toJson: DealPlanTypeSerializer.toJsonString)
  @DealPlanTypeSerializer()
  final DealPlanType? dealPlan;
  @override
  @DoubleSerializer()
  final double? admittanceFee;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @IntegerSerializer()
  final int? clicks;
  @override
  @IntegerSerializer()
  final int? dealPriority;
  @override
  @JsonKey(toJson: BidStatusSerializer.toJsonString)
  @BidStatusSerializer()
  final BidStatus? bidStatus;
  @override
  @BooleanSerializer()
  final bool? isClosing;
  @override
  @BooleanSerializer()
  final bool? active;
  @override
  @DoubleSerializer()
  final double? lastPriceOffered;
  @override
  @JsonKey(toJson: OfferTypeSerializer.toJsonString)
  @OfferTypeSerializer()
  final OfferType? offerType;
  @override
  @TimestampConverter()
  final DateTime? startDate;
  @override
  @TimestampConverter()
  final DateTime? endDate;
  @override
  @JsonKey(toJson: DealTypeSerializer.toJsonString)
  @DealTypeSerializer()
  final DealType? type;
  @override
  @JsonKey(toJson: QuantityTypeSerializer.toJsonString)
  @QuantityTypeSerializer()
  final QuantityType? quantity;
  @override
  @JsonKey(toJson: BiddingTypeSerializer.toJsonString)
  @BiddingTypeSerializer()
  final BiddingType? biddingType;
  @override
  final UserDTO? user;
  @override
  final UserDTO? vendor;
// UserDTO? lastBidder,
  @override
  final ProductDTOData? product;
// CategoryDTOData? category,
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DealDTOData(id: $id, basePrice: $basePrice, amount: $amount, country: $country, isPrivate: $isPrivate, isFavorite: $isFavorite, dealStatus: $dealStatus, sponsored: $sponsored, dealPlan: $dealPlan, admittanceFee: $admittanceFee, address: $address, clicks: $clicks, dealPriority: $dealPriority, bidStatus: $bidStatus, isClosing: $isClosing, active: $active, lastPriceOffered: $lastPriceOffered, offerType: $offerType, startDate: $startDate, endDate: $endDate, type: $type, quantity: $quantity, biddingType: $biddingType, user: $user, vendor: $vendor, product: $product, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealDTOData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.basePrice, basePrice) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.isPrivate, isPrivate) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality()
                .equals(other.dealStatus, dealStatus) &&
            const DeepCollectionEquality().equals(other.sponsored, sponsored) &&
            const DeepCollectionEquality().equals(other.dealPlan, dealPlan) &&
            const DeepCollectionEquality()
                .equals(other.admittanceFee, admittanceFee) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.clicks, clicks) &&
            const DeepCollectionEquality()
                .equals(other.dealPriority, dealPriority) &&
            const DeepCollectionEquality().equals(other.bidStatus, bidStatus) &&
            const DeepCollectionEquality().equals(other.isClosing, isClosing) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality()
                .equals(other.lastPriceOffered, lastPriceOffered) &&
            const DeepCollectionEquality().equals(other.offerType, offerType) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.biddingType, biddingType) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.vendor, vendor) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(basePrice),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(country),
        const DeepCollectionEquality().hash(isPrivate),
        const DeepCollectionEquality().hash(isFavorite),
        const DeepCollectionEquality().hash(dealStatus),
        const DeepCollectionEquality().hash(sponsored),
        const DeepCollectionEquality().hash(dealPlan),
        const DeepCollectionEquality().hash(admittanceFee),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(clicks),
        const DeepCollectionEquality().hash(dealPriority),
        const DeepCollectionEquality().hash(bidStatus),
        const DeepCollectionEquality().hash(isClosing),
        const DeepCollectionEquality().hash(active),
        const DeepCollectionEquality().hash(lastPriceOffered),
        const DeepCollectionEquality().hash(offerType),
        const DeepCollectionEquality().hash(startDate),
        const DeepCollectionEquality().hash(endDate),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(quantity),
        const DeepCollectionEquality().hash(biddingType),
        const DeepCollectionEquality().hash(user),
        const DeepCollectionEquality().hash(vendor),
        const DeepCollectionEquality().hash(product),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_DealDTODataCopyWith<_$_DealDTOData> get copyWith =>
      __$$_DealDTODataCopyWithImpl<_$_DealDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealDTODataToJson(this);
  }
}

abstract class _DealDTOData extends DealDTOData {
  const factory _DealDTOData(
      {@JsonKey(name: '_id')
          final String? id,
      @StringSerializer()
          final String? basePrice,
      @StringSerializer()
          final String? amount,
      @StringSerializer()
          final String? country,
      @BooleanSerializer()
          final bool? isPrivate,
      @JsonKey(name: 'isFavorite')
      @BooleanSerializer()
          final bool? isFavorite,
      @JsonKey(name: 'status', toJson: DealStatusSerializer.toJsonString)
      @DealStatusSerializer()
          final DealStatus? dealStatus,
      @BooleanSerializer()
          final bool? sponsored,
      @JsonKey(name: 'plan', toJson: DealPlanTypeSerializer.toJsonString)
      @DealPlanTypeSerializer()
          final DealPlanType? dealPlan,
      @DoubleSerializer()
          final double? admittanceFee,
      @JsonKey(name: 'address')
          final String? address,
      @IntegerSerializer()
          final int? clicks,
      @IntegerSerializer()
          final int? dealPriority,
      @JsonKey(toJson: BidStatusSerializer.toJsonString)
      @BidStatusSerializer()
          final BidStatus? bidStatus,
      @BooleanSerializer()
          final bool? isClosing,
      @BooleanSerializer()
          final bool? active,
      @DoubleSerializer()
          final double? lastPriceOffered,
      @JsonKey(toJson: OfferTypeSerializer.toJsonString)
      @OfferTypeSerializer()
          final OfferType? offerType,
      @TimestampConverter()
          final DateTime? startDate,
      @TimestampConverter()
          final DateTime? endDate,
      @JsonKey(toJson: DealTypeSerializer.toJsonString)
      @DealTypeSerializer()
          final DealType? type,
      @JsonKey(toJson: QuantityTypeSerializer.toJsonString)
      @QuantityTypeSerializer()
          final QuantityType? quantity,
      @JsonKey(toJson: BiddingTypeSerializer.toJsonString)
      @BiddingTypeSerializer()
          final BiddingType? biddingType,
      final UserDTO? user,
      final UserDTO? vendor,
      final ProductDTOData? product,
      @TimestampConverter()
          final DateTime? createdAt,
      @TimestampConverter()
          final DateTime? updatedAt}) = _$_DealDTOData;
  const _DealDTOData._() : super._();

  factory _DealDTOData.fromJson(Map<String, dynamic> json) =
      _$_DealDTOData.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @override
  @StringSerializer()
  String? get basePrice => throw _privateConstructorUsedError;
  @override
  @StringSerializer()
  String? get amount => throw _privateConstructorUsedError;
  @override
  @StringSerializer()
  String? get country => throw _privateConstructorUsedError;
  @override
  @BooleanSerializer()
  bool? get isPrivate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'isFavorite')
  @BooleanSerializer()
  bool? get isFavorite => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status', toJson: DealStatusSerializer.toJsonString)
  @DealStatusSerializer()
  DealStatus? get dealStatus => throw _privateConstructorUsedError;
  @override
  @BooleanSerializer()
  bool? get sponsored => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'plan', toJson: DealPlanTypeSerializer.toJsonString)
  @DealPlanTypeSerializer()
  DealPlanType? get dealPlan => throw _privateConstructorUsedError;
  @override
  @DoubleSerializer()
  double? get admittanceFee => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @override
  @IntegerSerializer()
  int? get clicks => throw _privateConstructorUsedError;
  @override
  @IntegerSerializer()
  int? get dealPriority => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: BidStatusSerializer.toJsonString)
  @BidStatusSerializer()
  BidStatus? get bidStatus => throw _privateConstructorUsedError;
  @override
  @BooleanSerializer()
  bool? get isClosing => throw _privateConstructorUsedError;
  @override
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @override
  @DoubleSerializer()
  double? get lastPriceOffered => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: OfferTypeSerializer.toJsonString)
  @OfferTypeSerializer()
  OfferType? get offerType => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: DealTypeSerializer.toJsonString)
  @DealTypeSerializer()
  DealType? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: QuantityTypeSerializer.toJsonString)
  @QuantityTypeSerializer()
  QuantityType? get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: BiddingTypeSerializer.toJsonString)
  @BiddingTypeSerializer()
  BiddingType? get biddingType => throw _privateConstructorUsedError;
  @override
  UserDTO? get user => throw _privateConstructorUsedError;
  @override
  UserDTO? get vendor => throw _privateConstructorUsedError;
  @override // UserDTO? lastBidder,
  ProductDTOData? get product => throw _privateConstructorUsedError;
  @override // CategoryDTOData? category,
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DealDTODataCopyWith<_$_DealDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

DealListDTO _$DealListDTOFromJson(Map<String, dynamic> json) {
  return _DealListDTO.fromJson(json);
}

/// @nodoc
mixin _$DealListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<DealDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealListDTOCopyWith<DealListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealListDTOCopyWith<$Res> {
  factory $DealListDTOCopyWith(
          DealListDTO value, $Res Function(DealListDTO) then) =
      _$DealListDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, List<DealDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DealListDTOCopyWithImpl<$Res> implements $DealListDTOCopyWith<$Res> {
  _$DealListDTOCopyWithImpl(this._value, this._then);

  final DealListDTO _value;
  // ignore: unused_field
  final $Res Function(DealListDTO) _then;

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
              as List<DealDTOData>,
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
abstract class _$$_DealListDTOCopyWith<$Res>
    implements $DealListDTOCopyWith<$Res> {
  factory _$$_DealListDTOCopyWith(
          _$_DealListDTO value, $Res Function(_$_DealListDTO) then) =
      __$$_DealListDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, List<DealDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_DealListDTOCopyWithImpl<$Res> extends _$DealListDTOCopyWithImpl<$Res>
    implements _$$_DealListDTOCopyWith<$Res> {
  __$$_DealListDTOCopyWithImpl(
      _$_DealListDTO _value, $Res Function(_$_DealListDTO) _then)
      : super(_value, (v) => _then(v as _$_DealListDTO));

  @override
  _$_DealListDTO get _value => super._value as _$_DealListDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DealListDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DealDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DealListDTO extends _DealListDTO {
  const _$_DealListDTO(
      {@JsonKey(name: '_meta') this.meta,
      final List<DealDTOData> data = const []})
      : _data = data,
        super._();

  factory _$_DealListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DealListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  final List<DealDTOData> _data;
  @override
  @JsonKey()
  List<DealDTOData> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DealListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealListDTO &&
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
  _$$_DealListDTOCopyWith<_$_DealListDTO> get copyWith =>
      __$$_DealListDTOCopyWithImpl<_$_DealListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealListDTOToJson(this);
  }
}

abstract class _DealListDTO extends DealListDTO {
  const factory _DealListDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      final List<DealDTOData> data}) = _$_DealListDTO;
  const _DealListDTO._() : super._();

  factory _DealListDTO.fromJson(Map<String, dynamic> json) =
      _$_DealListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  @override
  List<DealDTOData> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DealListDTOCopyWith<_$_DealListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
