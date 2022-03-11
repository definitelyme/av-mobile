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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DealTearOff {
  const _$DealTearOff();

  _Deal call(
      {required UniqueId<String?> id,
      required AmountField<double> basePrice,
      required AmountField<double> lastPriceOffered,
      bool isPrivate = false,
      bool isSponsored = false,
      required AmountField<double?> admittanceFee,
      required BasicTextField<int> dealPriority,
      required BasicTextField<int> clicks,
      BidStatus bidStatus = BidStatus.closed,
      bool isClosing = false,
      bool isActive = false,
      DealStatus status = DealStatus.pending,
      DealType type = DealType.buyNow,
      OfferType offerType = OfferType.nonNegotiable,
      DealPlan dealPlan = DealPlan.free,
      User? user,
      User? vendor,
      Product? product,
      DealCategory? category,
      required DateTimeField startDate,
      required DateTimeField endDate,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _Deal(
      id: id,
      basePrice: basePrice,
      lastPriceOffered: lastPriceOffered,
      isPrivate: isPrivate,
      isSponsored: isSponsored,
      admittanceFee: admittanceFee,
      dealPriority: dealPriority,
      clicks: clicks,
      bidStatus: bidStatus,
      isClosing: isClosing,
      isActive: isActive,
      status: status,
      type: type,
      offerType: offerType,
      dealPlan: dealPlan,
      user: user,
      vendor: vendor,
      product: product,
      category: category,
      startDate: startDate,
      endDate: endDate,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $Deal = _$DealTearOff();

/// @nodoc
mixin _$Deal {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  AmountField<double> get basePrice => throw _privateConstructorUsedError;
  AmountField<double> get lastPriceOffered =>
      throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;
  bool get isSponsored => throw _privateConstructorUsedError;
  AmountField<double?> get admittanceFee => throw _privateConstructorUsedError;
  BasicTextField<int> get dealPriority => throw _privateConstructorUsedError;
  BasicTextField<int> get clicks => throw _privateConstructorUsedError;
  BidStatus get bidStatus => throw _privateConstructorUsedError;
  bool get isClosing => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DealStatus get status => throw _privateConstructorUsedError;
  DealType get type => throw _privateConstructorUsedError;
  OfferType get offerType => throw _privateConstructorUsedError;
  DealPlan get dealPlan => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  User? get vendor => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  DealCategory? get category => throw _privateConstructorUsedError;
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
      AmountField<double?> admittanceFee,
      BasicTextField<int> dealPriority,
      BasicTextField<int> clicks,
      BidStatus bidStatus,
      bool isClosing,
      bool isActive,
      DealStatus status,
      DealType type,
      OfferType offerType,
      DealPlan dealPlan,
      User? user,
      User? vendor,
      Product? product,
      DealCategory? category,
      DateTimeField startDate,
      DateTimeField endDate,
      DateTime? createdAt,
      DateTime? updatedAt});

  $UserCopyWith<$Res>? get user;
  $UserCopyWith<$Res>? get vendor;
  $ProductCopyWith<$Res>? get product;
  $DealCategoryCopyWith<$Res>? get category;
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
    Object? admittanceFee = freezed,
    Object? dealPriority = freezed,
    Object? clicks = freezed,
    Object? bidStatus = freezed,
    Object? isClosing = freezed,
    Object? isActive = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? offerType = freezed,
    Object? dealPlan = freezed,
    Object? user = freezed,
    Object? vendor = freezed,
    Object? product = freezed,
    Object? category = freezed,
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
      admittanceFee: admittanceFee == freezed
          ? _value.admittanceFee
          : admittanceFee // ignore: cast_nullable_to_non_nullable
              as AmountField<double?>,
      dealPriority: dealPriority == freezed
          ? _value.dealPriority
          : dealPriority // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int>,
      clicks: clicks == freezed
          ? _value.clicks
          : clicks // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int>,
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
              as DealPlan,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as User?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DealCategory?,
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
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
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
}

/// @nodoc
abstract class _$DealCopyWith<$Res> implements $DealCopyWith<$Res> {
  factory _$DealCopyWith(_Deal value, $Res Function(_Deal) then) =
      __$DealCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      AmountField<double> basePrice,
      AmountField<double> lastPriceOffered,
      bool isPrivate,
      bool isSponsored,
      AmountField<double?> admittanceFee,
      BasicTextField<int> dealPriority,
      BasicTextField<int> clicks,
      BidStatus bidStatus,
      bool isClosing,
      bool isActive,
      DealStatus status,
      DealType type,
      OfferType offerType,
      DealPlan dealPlan,
      User? user,
      User? vendor,
      Product? product,
      DealCategory? category,
      DateTimeField startDate,
      DateTimeField endDate,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $UserCopyWith<$Res>? get vendor;
  @override
  $ProductCopyWith<$Res>? get product;
  @override
  $DealCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$DealCopyWithImpl<$Res> extends _$DealCopyWithImpl<$Res>
    implements _$DealCopyWith<$Res> {
  __$DealCopyWithImpl(_Deal _value, $Res Function(_Deal) _then)
      : super(_value, (v) => _then(v as _Deal));

  @override
  _Deal get _value => super._value as _Deal;

  @override
  $Res call({
    Object? id = freezed,
    Object? basePrice = freezed,
    Object? lastPriceOffered = freezed,
    Object? isPrivate = freezed,
    Object? isSponsored = freezed,
    Object? admittanceFee = freezed,
    Object? dealPriority = freezed,
    Object? clicks = freezed,
    Object? bidStatus = freezed,
    Object? isClosing = freezed,
    Object? isActive = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? offerType = freezed,
    Object? dealPlan = freezed,
    Object? user = freezed,
    Object? vendor = freezed,
    Object? product = freezed,
    Object? category = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Deal(
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
      admittanceFee: admittanceFee == freezed
          ? _value.admittanceFee
          : admittanceFee // ignore: cast_nullable_to_non_nullable
              as AmountField<double?>,
      dealPriority: dealPriority == freezed
          ? _value.dealPriority
          : dealPriority // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int>,
      clicks: clicks == freezed
          ? _value.clicks
          : clicks // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int>,
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
              as DealPlan,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as User?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DealCategory?,
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
      required this.admittanceFee,
      required this.dealPriority,
      required this.clicks,
      this.bidStatus = BidStatus.closed,
      this.isClosing = false,
      this.isActive = false,
      this.status = DealStatus.pending,
      this.type = DealType.buyNow,
      this.offerType = OfferType.nonNegotiable,
      this.dealPlan = DealPlan.free,
      this.user,
      this.vendor,
      this.product,
      this.category,
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
  @JsonKey()
  @override
  final bool isPrivate;
  @JsonKey()
  @override
  final bool isSponsored;
  @override
  final AmountField<double?> admittanceFee;
  @override
  final BasicTextField<int> dealPriority;
  @override
  final BasicTextField<int> clicks;
  @JsonKey()
  @override
  final BidStatus bidStatus;
  @JsonKey()
  @override
  final bool isClosing;
  @JsonKey()
  @override
  final bool isActive;
  @JsonKey()
  @override
  final DealStatus status;
  @JsonKey()
  @override
  final DealType type;
  @JsonKey()
  @override
  final OfferType offerType;
  @JsonKey()
  @override
  final DealPlan dealPlan;
  @override
  final User? user;
  @override
  final User? vendor;
  @override
  final Product? product;
  @override
  final DealCategory? category;
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
    return 'Deal(id: $id, basePrice: $basePrice, lastPriceOffered: $lastPriceOffered, isPrivate: $isPrivate, isSponsored: $isSponsored, admittanceFee: $admittanceFee, dealPriority: $dealPriority, clicks: $clicks, bidStatus: $bidStatus, isClosing: $isClosing, isActive: $isActive, status: $status, type: $type, offerType: $offerType, dealPlan: $dealPlan, user: $user, vendor: $vendor, product: $product, category: $category, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Deal &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.basePrice, basePrice) &&
            const DeepCollectionEquality()
                .equals(other.lastPriceOffered, lastPriceOffered) &&
            const DeepCollectionEquality().equals(other.isPrivate, isPrivate) &&
            const DeepCollectionEquality()
                .equals(other.isSponsored, isSponsored) &&
            const DeepCollectionEquality()
                .equals(other.admittanceFee, admittanceFee) &&
            const DeepCollectionEquality()
                .equals(other.dealPriority, dealPriority) &&
            const DeepCollectionEquality().equals(other.clicks, clicks) &&
            const DeepCollectionEquality().equals(other.bidStatus, bidStatus) &&
            const DeepCollectionEquality().equals(other.isClosing, isClosing) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.offerType, offerType) &&
            const DeepCollectionEquality().equals(other.dealPlan, dealPlan) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.vendor, vendor) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.category, category) &&
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
        const DeepCollectionEquality().hash(admittanceFee),
        const DeepCollectionEquality().hash(dealPriority),
        const DeepCollectionEquality().hash(clicks),
        const DeepCollectionEquality().hash(bidStatus),
        const DeepCollectionEquality().hash(isClosing),
        const DeepCollectionEquality().hash(isActive),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(offerType),
        const DeepCollectionEquality().hash(dealPlan),
        const DeepCollectionEquality().hash(user),
        const DeepCollectionEquality().hash(vendor),
        const DeepCollectionEquality().hash(product),
        const DeepCollectionEquality().hash(category),
        const DeepCollectionEquality().hash(startDate),
        const DeepCollectionEquality().hash(endDate),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt)
      ]);

  @JsonKey(ignore: true)
  @override
  _$DealCopyWith<_Deal> get copyWith =>
      __$DealCopyWithImpl<_Deal>(this, _$identity);
}

abstract class _Deal extends Deal {
  const factory _Deal(
      {required UniqueId<String?> id,
      required AmountField<double> basePrice,
      required AmountField<double> lastPriceOffered,
      bool isPrivate,
      bool isSponsored,
      required AmountField<double?> admittanceFee,
      required BasicTextField<int> dealPriority,
      required BasicTextField<int> clicks,
      BidStatus bidStatus,
      bool isClosing,
      bool isActive,
      DealStatus status,
      DealType type,
      OfferType offerType,
      DealPlan dealPlan,
      User? user,
      User? vendor,
      Product? product,
      DealCategory? category,
      required DateTimeField startDate,
      required DateTimeField endDate,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_Deal;
  const _Deal._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  AmountField<double> get basePrice;
  @override
  AmountField<double> get lastPriceOffered;
  @override
  bool get isPrivate;
  @override
  bool get isSponsored;
  @override
  AmountField<double?> get admittanceFee;
  @override
  BasicTextField<int> get dealPriority;
  @override
  BasicTextField<int> get clicks;
  @override
  BidStatus get bidStatus;
  @override
  bool get isClosing;
  @override
  bool get isActive;
  @override
  DealStatus get status;
  @override
  DealType get type;
  @override
  OfferType get offerType;
  @override
  DealPlan get dealPlan;
  @override
  User? get user;
  @override
  User? get vendor;
  @override
  Product? get product;
  @override
  DealCategory? get category;
  @override
  DateTimeField get startDate;
  @override
  DateTimeField get endDate;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$DealCopyWith<_Deal> get copyWith => throw _privateConstructorUsedError;
}
