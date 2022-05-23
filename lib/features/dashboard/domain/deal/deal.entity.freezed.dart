// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of deal.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Deal {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  AmountField<double> get basePrice => throw _privateConstructorUsedError;
  AmountField<double> get lastPriceOffered =>
      throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;
  bool get isSponsored => throw _privateConstructorUsedError;
  bool get hasWish => throw _privateConstructorUsedError;
  AmountField<double?> get admittanceFee => throw _privateConstructorUsedError;
  BasicTextField<int?> get dealPriority => throw _privateConstructorUsedError;
  BasicTextField<String?> get address => throw _privateConstructorUsedError;
  BasicTextField<int?> get clicks => throw _privateConstructorUsedError;
  BidStatus get bidStatus => throw _privateConstructorUsedError;
  bool get isClosing => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DealStatus get status => throw _privateConstructorUsedError;
  DealType get type => throw _privateConstructorUsedError;
  OfferType get offerType => throw _privateConstructorUsedError;
  DealPlanType get dealPlan => throw _privateConstructorUsedError;
  QuantityType get quantity => throw _privateConstructorUsedError;
  BiddingType get biddingType => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  User? get vendor => throw _privateConstructorUsedError;
  User? get lastBidder => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  Country? get country =>
      throw _privateConstructorUsedError; // DealCategory? category,
  DateTimeField get startDate => throw _privateConstructorUsedError;
  DateTimeField get endDate => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DealCopyWith<Deal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealCopyWith<$Res> {
  factory $DealCopyWith(Deal value, $Res Function(Deal) then) =
      _$DealCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      AmountField<double> basePrice,
      AmountField<double> lastPriceOffered,
      bool isPrivate,
      bool isSponsored,
      bool hasWish,
      AmountField<double?> admittanceFee,
      BasicTextField<int?> dealPriority,
      BasicTextField<String?> address,
      BasicTextField<int?> clicks,
      BidStatus bidStatus,
      bool isClosing,
      bool isActive,
      DealStatus status,
      DealType type,
      OfferType offerType,
      DealPlanType dealPlan,
      QuantityType quantity,
      BiddingType biddingType,
      User? user,
      User? vendor,
      User? lastBidder,
      Product? product,
      Country? country,
      DateTimeField startDate,
      DateTimeField endDate,
      DateTime? createdAt,
      DateTime? updatedAt});

  $UserCopyWith<$Res>? get user;
  $UserCopyWith<$Res>? get vendor;
  $UserCopyWith<$Res>? get lastBidder;
  $ProductCopyWith<$Res>? get product;
  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class _$DealCopyWithImpl<$Res> implements $DealCopyWith<$Res> {
  _$DealCopyWithImpl(this._value, this._then);

  final Deal _value;
  // ignore: unused_field
  final $Res Function(Deal) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? basePrice = freezed,
    Object? lastPriceOffered = freezed,
    Object? isPrivate = freezed,
    Object? isSponsored = freezed,
    Object? hasWish = freezed,
    Object? admittanceFee = freezed,
    Object? dealPriority = freezed,
    Object? address = freezed,
    Object? clicks = freezed,
    Object? bidStatus = freezed,
    Object? isClosing = freezed,
    Object? isActive = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? offerType = freezed,
    Object? dealPlan = freezed,
    Object? quantity = freezed,
    Object? biddingType = freezed,
    Object? user = freezed,
    Object? vendor = freezed,
    Object? lastBidder = freezed,
    Object? product = freezed,
    Object? country = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      basePrice: basePrice == freezed
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      lastPriceOffered: lastPriceOffered == freezed
          ? _value.lastPriceOffered
          : lastPriceOffered // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      isSponsored: isSponsored == freezed
          ? _value.isSponsored
          : isSponsored // ignore: cast_nullable_to_non_nullable
              as bool,
      hasWish: hasWish == freezed
          ? _value.hasWish
          : hasWish // ignore: cast_nullable_to_non_nullable
              as bool,
      admittanceFee: admittanceFee == freezed
          ? _value.admittanceFee
          : admittanceFee // ignore: cast_nullable_to_non_nullable
              as AmountField<double?>,
      dealPriority: dealPriority == freezed
          ? _value.dealPriority
          : dealPriority // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      clicks: clicks == freezed
          ? _value.clicks
          : clicks // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
      bidStatus: bidStatus == freezed
          ? _value.bidStatus
          : bidStatus // ignore: cast_nullable_to_non_nullable
              as BidStatus,
      isClosing: isClosing == freezed
          ? _value.isClosing
          : isClosing // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DealStatus,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DealType,
      offerType: offerType == freezed
          ? _value.offerType
          : offerType // ignore: cast_nullable_to_non_nullable
              as OfferType,
      dealPlan: dealPlan == freezed
          ? _value.dealPlan
          : dealPlan // ignore: cast_nullable_to_non_nullable
              as DealPlanType,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as QuantityType,
      biddingType: biddingType == freezed
          ? _value.biddingType
          : biddingType // ignore: cast_nullable_to_non_nullable
              as BiddingType,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as User?,
      lastBidder: lastBidder == freezed
          ? _value.lastBidder
          : lastBidder // ignore: cast_nullable_to_non_nullable
              as User?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTimeField,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTimeField,
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
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
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
  $UserCopyWith<$Res>? get lastBidder {
    if (_value.lastBidder == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.lastBidder!, (value) {
      return _then(_value.copyWith(lastBidder: value));
    });
  }

  @override
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
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
}

/// @nodoc
abstract class _$$_DealCopyWith<$Res> implements $DealCopyWith<$Res> {
  factory _$$_DealCopyWith(_$_Deal value, $Res Function(_$_Deal) then) =
      __$$_DealCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      AmountField<double> basePrice,
      AmountField<double> lastPriceOffered,
      bool isPrivate,
      bool isSponsored,
      bool hasWish,
      AmountField<double?> admittanceFee,
      BasicTextField<int?> dealPriority,
      BasicTextField<String?> address,
      BasicTextField<int?> clicks,
      BidStatus bidStatus,
      bool isClosing,
      bool isActive,
      DealStatus status,
      DealType type,
      OfferType offerType,
      DealPlanType dealPlan,
      QuantityType quantity,
      BiddingType biddingType,
      User? user,
      User? vendor,
      User? lastBidder,
      Product? product,
      Country? country,
      DateTimeField startDate,
      DateTimeField endDate,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $UserCopyWith<$Res>? get vendor;
  @override
  $UserCopyWith<$Res>? get lastBidder;
  @override
  $ProductCopyWith<$Res>? get product;
  @override
  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class __$$_DealCopyWithImpl<$Res> extends _$DealCopyWithImpl<$Res>
    implements _$$_DealCopyWith<$Res> {
  __$$_DealCopyWithImpl(_$_Deal _value, $Res Function(_$_Deal) _then)
      : super(_value, (v) => _then(v as _$_Deal));

  @override
  _$_Deal get _value => super._value as _$_Deal;

  @override
  $Res call({
    Object? id = freezed,
    Object? basePrice = freezed,
    Object? lastPriceOffered = freezed,
    Object? isPrivate = freezed,
    Object? isSponsored = freezed,
    Object? hasWish = freezed,
    Object? admittanceFee = freezed,
    Object? dealPriority = freezed,
    Object? address = freezed,
    Object? clicks = freezed,
    Object? bidStatus = freezed,
    Object? isClosing = freezed,
    Object? isActive = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? offerType = freezed,
    Object? dealPlan = freezed,
    Object? quantity = freezed,
    Object? biddingType = freezed,
    Object? user = freezed,
    Object? vendor = freezed,
    Object? lastBidder = freezed,
    Object? product = freezed,
    Object? country = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Deal(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      basePrice: basePrice == freezed
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      lastPriceOffered: lastPriceOffered == freezed
          ? _value.lastPriceOffered
          : lastPriceOffered // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      isSponsored: isSponsored == freezed
          ? _value.isSponsored
          : isSponsored // ignore: cast_nullable_to_non_nullable
              as bool,
      hasWish: hasWish == freezed
          ? _value.hasWish
          : hasWish // ignore: cast_nullable_to_non_nullable
              as bool,
      admittanceFee: admittanceFee == freezed
          ? _value.admittanceFee
          : admittanceFee // ignore: cast_nullable_to_non_nullable
              as AmountField<double?>,
      dealPriority: dealPriority == freezed
          ? _value.dealPriority
          : dealPriority // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      clicks: clicks == freezed
          ? _value.clicks
          : clicks // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
      bidStatus: bidStatus == freezed
          ? _value.bidStatus
          : bidStatus // ignore: cast_nullable_to_non_nullable
              as BidStatus,
      isClosing: isClosing == freezed
          ? _value.isClosing
          : isClosing // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DealStatus,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DealType,
      offerType: offerType == freezed
          ? _value.offerType
          : offerType // ignore: cast_nullable_to_non_nullable
              as OfferType,
      dealPlan: dealPlan == freezed
          ? _value.dealPlan
          : dealPlan // ignore: cast_nullable_to_non_nullable
              as DealPlanType,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as QuantityType,
      biddingType: biddingType == freezed
          ? _value.biddingType
          : biddingType // ignore: cast_nullable_to_non_nullable
              as BiddingType,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as User?,
      lastBidder: lastBidder == freezed
          ? _value.lastBidder
          : lastBidder // ignore: cast_nullable_to_non_nullable
              as User?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTimeField,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTimeField,
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

class _$_Deal extends _Deal {
  const _$_Deal(
      {required this.id,
      required this.basePrice,
      required this.lastPriceOffered,
      this.isPrivate = false,
      this.isSponsored = false,
      this.hasWish = false,
      required this.admittanceFee,
      required this.dealPriority,
      required this.address,
      required this.clicks,
      this.bidStatus = defaultBidStatus,
      this.isClosing = false,
      this.isActive = false,
      this.status = defaultDealStatus,
      this.type = defaultDealType,
      this.offerType = defaultOfferType,
      this.dealPlan = defaultDealPlanType,
      this.quantity = defaultQuantityType,
      this.biddingType = defaultBiddingType,
      this.user,
      this.vendor,
      this.lastBidder,
      this.product,
      this.country,
      required this.startDate,
      required this.endDate,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final AmountField<double> basePrice;
  @override
  final AmountField<double> lastPriceOffered;
  @override
  @JsonKey()
  final bool isPrivate;
  @override
  @JsonKey()
  final bool isSponsored;
  @override
  @JsonKey()
  final bool hasWish;
  @override
  final AmountField<double?> admittanceFee;
  @override
  final BasicTextField<int?> dealPriority;
  @override
  final BasicTextField<String?> address;
  @override
  final BasicTextField<int?> clicks;
  @override
  @JsonKey()
  final BidStatus bidStatus;
  @override
  @JsonKey()
  final bool isClosing;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final DealStatus status;
  @override
  @JsonKey()
  final DealType type;
  @override
  @JsonKey()
  final OfferType offerType;
  @override
  @JsonKey()
  final DealPlanType dealPlan;
  @override
  @JsonKey()
  final QuantityType quantity;
  @override
  @JsonKey()
  final BiddingType biddingType;
  @override
  final User? user;
  @override
  final User? vendor;
  @override
  final User? lastBidder;
  @override
  final Product? product;
  @override
  final Country? country;
// DealCategory? category,
  @override
  final DateTimeField startDate;
  @override
  final DateTimeField endDate;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Deal(id: $id, basePrice: $basePrice, lastPriceOffered: $lastPriceOffered, isPrivate: $isPrivate, isSponsored: $isSponsored, hasWish: $hasWish, admittanceFee: $admittanceFee, dealPriority: $dealPriority, address: $address, clicks: $clicks, bidStatus: $bidStatus, isClosing: $isClosing, isActive: $isActive, status: $status, type: $type, offerType: $offerType, dealPlan: $dealPlan, quantity: $quantity, biddingType: $biddingType, user: $user, vendor: $vendor, lastBidder: $lastBidder, product: $product, country: $country, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Deal &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.basePrice, basePrice) &&
            const DeepCollectionEquality()
                .equals(other.lastPriceOffered, lastPriceOffered) &&
            const DeepCollectionEquality().equals(other.isPrivate, isPrivate) &&
            const DeepCollectionEquality()
                .equals(other.isSponsored, isSponsored) &&
            const DeepCollectionEquality().equals(other.hasWish, hasWish) &&
            const DeepCollectionEquality()
                .equals(other.admittanceFee, admittanceFee) &&
            const DeepCollectionEquality()
                .equals(other.dealPriority, dealPriority) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.clicks, clicks) &&
            const DeepCollectionEquality().equals(other.bidStatus, bidStatus) &&
            const DeepCollectionEquality().equals(other.isClosing, isClosing) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.offerType, offerType) &&
            const DeepCollectionEquality().equals(other.dealPlan, dealPlan) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.biddingType, biddingType) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.vendor, vendor) &&
            const DeepCollectionEquality()
                .equals(other.lastBidder, lastBidder) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(basePrice),
        const DeepCollectionEquality().hash(lastPriceOffered),
        const DeepCollectionEquality().hash(isPrivate),
        const DeepCollectionEquality().hash(isSponsored),
        const DeepCollectionEquality().hash(hasWish),
        const DeepCollectionEquality().hash(admittanceFee),
        const DeepCollectionEquality().hash(dealPriority),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(clicks),
        const DeepCollectionEquality().hash(bidStatus),
        const DeepCollectionEquality().hash(isClosing),
        const DeepCollectionEquality().hash(isActive),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(offerType),
        const DeepCollectionEquality().hash(dealPlan),
        const DeepCollectionEquality().hash(quantity),
        const DeepCollectionEquality().hash(biddingType),
        const DeepCollectionEquality().hash(user),
        const DeepCollectionEquality().hash(vendor),
        const DeepCollectionEquality().hash(lastBidder),
        const DeepCollectionEquality().hash(product),
        const DeepCollectionEquality().hash(country),
        const DeepCollectionEquality().hash(startDate),
        const DeepCollectionEquality().hash(endDate),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_DealCopyWith<_$_Deal> get copyWith =>
      __$$_DealCopyWithImpl<_$_Deal>(this, _$identity);
}

abstract class _Deal extends Deal {
  const factory _Deal(
      {required final UniqueId<String?> id,
      required final AmountField<double> basePrice,
      required final AmountField<double> lastPriceOffered,
      final bool isPrivate,
      final bool isSponsored,
      final bool hasWish,
      required final AmountField<double?> admittanceFee,
      required final BasicTextField<int?> dealPriority,
      required final BasicTextField<String?> address,
      required final BasicTextField<int?> clicks,
      final BidStatus bidStatus,
      final bool isClosing,
      final bool isActive,
      final DealStatus status,
      final DealType type,
      final OfferType offerType,
      final DealPlanType dealPlan,
      final QuantityType quantity,
      final BiddingType biddingType,
      final User? user,
      final User? vendor,
      final User? lastBidder,
      final Product? product,
      final Country? country,
      required final DateTimeField startDate,
      required final DateTimeField endDate,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Deal;
  const _Deal._() : super._();

  @override
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  @override
  AmountField<double> get basePrice => throw _privateConstructorUsedError;
  @override
  AmountField<double> get lastPriceOffered =>
      throw _privateConstructorUsedError;
  @override
  bool get isPrivate => throw _privateConstructorUsedError;
  @override
  bool get isSponsored => throw _privateConstructorUsedError;
  @override
  bool get hasWish => throw _privateConstructorUsedError;
  @override
  AmountField<double?> get admittanceFee => throw _privateConstructorUsedError;
  @override
  BasicTextField<int?> get dealPriority => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get address => throw _privateConstructorUsedError;
  @override
  BasicTextField<int?> get clicks => throw _privateConstructorUsedError;
  @override
  BidStatus get bidStatus => throw _privateConstructorUsedError;
  @override
  bool get isClosing => throw _privateConstructorUsedError;
  @override
  bool get isActive => throw _privateConstructorUsedError;
  @override
  DealStatus get status => throw _privateConstructorUsedError;
  @override
  DealType get type => throw _privateConstructorUsedError;
  @override
  OfferType get offerType => throw _privateConstructorUsedError;
  @override
  DealPlanType get dealPlan => throw _privateConstructorUsedError;
  @override
  QuantityType get quantity => throw _privateConstructorUsedError;
  @override
  BiddingType get biddingType => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  User? get vendor => throw _privateConstructorUsedError;
  @override
  User? get lastBidder => throw _privateConstructorUsedError;
  @override
  Product? get product => throw _privateConstructorUsedError;
  @override
  Country? get country => throw _privateConstructorUsedError;
  @override // DealCategory? category,
  DateTimeField get startDate => throw _privateConstructorUsedError;
  @override
  DateTimeField get endDate => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DealCopyWith<_$_Deal> get copyWith => throw _privateConstructorUsedError;
}
