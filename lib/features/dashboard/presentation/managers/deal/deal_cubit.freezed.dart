// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of deal_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DealStateTearOff {
  const _$DealStateTearOff();

  _DealState call(
      {bool isLoading = false,
      bool isBidding = false,
      bool validate = false,
      required Deal currentDeal,
      required DealCategory currentCategory,
      SellHistory? sellHistory,
      BidHistory? bidHistory,
      Rating? rating,
      DealPlan? selectedPlan,
      required Product currentProduct,
      required AmountField<double> bidAmount,
      KtList<DealCategory> categories = const KtList.empty(),
      KtList<Deal> homeDeals = const KtList.empty(),
      KtList<Deal> liveDeals = const KtList.empty(),
      KtList<Deal> deals = const KtList.empty(),
      KtList<MyWish> wishlist = const KtList.empty(),
      KtList<DealPlan> dealPlans = const KtList.empty(),
      Option<AppHttpResponse?> status = const None()}) {
    return _DealState(
      isLoading: isLoading,
      isBidding: isBidding,
      validate: validate,
      currentDeal: currentDeal,
      currentCategory: currentCategory,
      sellHistory: sellHistory,
      bidHistory: bidHistory,
      rating: rating,
      selectedPlan: selectedPlan,
      currentProduct: currentProduct,
      bidAmount: bidAmount,
      categories: categories,
      homeDeals: homeDeals,
      liveDeals: liveDeals,
      deals: deals,
      wishlist: wishlist,
      dealPlans: dealPlans,
      status: status,
    );
  }
}

/// @nodoc
const $DealState = _$DealStateTearOff();

/// @nodoc
mixin _$DealState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isBidding => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  Deal get currentDeal => throw _privateConstructorUsedError;
  DealCategory get currentCategory => throw _privateConstructorUsedError;
  SellHistory? get sellHistory => throw _privateConstructorUsedError;
  BidHistory? get bidHistory => throw _privateConstructorUsedError;
  Rating? get rating => throw _privateConstructorUsedError;
  DealPlan? get selectedPlan => throw _privateConstructorUsedError;
  Product get currentProduct => throw _privateConstructorUsedError;
  AmountField<double> get bidAmount => throw _privateConstructorUsedError;
  KtList<DealCategory> get categories => throw _privateConstructorUsedError;
  KtList<Deal> get homeDeals => throw _privateConstructorUsedError;
  KtList<Deal> get liveDeals => throw _privateConstructorUsedError;
  KtList<Deal> get deals => throw _privateConstructorUsedError;
  KtList<MyWish> get wishlist => throw _privateConstructorUsedError;
  KtList<DealPlan> get dealPlans => throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DealStateCopyWith<DealState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealStateCopyWith<$Res> {
  factory $DealStateCopyWith(DealState value, $Res Function(DealState) then) =
      _$DealStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isBidding,
      bool validate,
      Deal currentDeal,
      DealCategory currentCategory,
      SellHistory? sellHistory,
      BidHistory? bidHistory,
      Rating? rating,
      DealPlan? selectedPlan,
      Product currentProduct,
      AmountField<double> bidAmount,
      KtList<DealCategory> categories,
      KtList<Deal> homeDeals,
      KtList<Deal> liveDeals,
      KtList<Deal> deals,
      KtList<MyWish> wishlist,
      KtList<DealPlan> dealPlans,
      Option<AppHttpResponse?> status});

  $DealCopyWith<$Res> get currentDeal;
  $DealCategoryCopyWith<$Res> get currentCategory;
  $SellHistoryCopyWith<$Res>? get sellHistory;
  $BidHistoryCopyWith<$Res>? get bidHistory;
  $RatingCopyWith<$Res>? get rating;
  $DealPlanCopyWith<$Res>? get selectedPlan;
  $ProductCopyWith<$Res> get currentProduct;
}

/// @nodoc
class _$DealStateCopyWithImpl<$Res> implements $DealStateCopyWith<$Res> {
  _$DealStateCopyWithImpl(this._value, this._then);

  final DealState _value;
  // ignore: unused_field
  final $Res Function(DealState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isBidding = freezed,
    Object? validate = freezed,
    Object? currentDeal = freezed,
    Object? currentCategory = freezed,
    Object? sellHistory = freezed,
    Object? bidHistory = freezed,
    Object? rating = freezed,
    Object? selectedPlan = freezed,
    Object? currentProduct = freezed,
    Object? bidAmount = freezed,
    Object? categories = freezed,
    Object? homeDeals = freezed,
    Object? liveDeals = freezed,
    Object? deals = freezed,
    Object? wishlist = freezed,
    Object? dealPlans = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isBidding: isBidding == freezed
          ? _value.isBidding
          : isBidding // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      currentDeal: currentDeal == freezed
          ? _value.currentDeal
          : currentDeal // ignore: cast_nullable_to_non_nullable
              as Deal,
      currentCategory: currentCategory == freezed
          ? _value.currentCategory
          : currentCategory // ignore: cast_nullable_to_non_nullable
              as DealCategory,
      sellHistory: sellHistory == freezed
          ? _value.sellHistory
          : sellHistory // ignore: cast_nullable_to_non_nullable
              as SellHistory?,
      bidHistory: bidHistory == freezed
          ? _value.bidHistory
          : bidHistory // ignore: cast_nullable_to_non_nullable
              as BidHistory?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      selectedPlan: selectedPlan == freezed
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as DealPlan?,
      currentProduct: currentProduct == freezed
          ? _value.currentProduct
          : currentProduct // ignore: cast_nullable_to_non_nullable
              as Product,
      bidAmount: bidAmount == freezed
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as KtList<DealCategory>,
      homeDeals: homeDeals == freezed
          ? _value.homeDeals
          : homeDeals // ignore: cast_nullable_to_non_nullable
              as KtList<Deal>,
      liveDeals: liveDeals == freezed
          ? _value.liveDeals
          : liveDeals // ignore: cast_nullable_to_non_nullable
              as KtList<Deal>,
      deals: deals == freezed
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as KtList<Deal>,
      wishlist: wishlist == freezed
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as KtList<MyWish>,
      dealPlans: dealPlans == freezed
          ? _value.dealPlans
          : dealPlans // ignore: cast_nullable_to_non_nullable
              as KtList<DealPlan>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }

  @override
  $DealCopyWith<$Res> get currentDeal {
    return $DealCopyWith<$Res>(_value.currentDeal, (value) {
      return _then(_value.copyWith(currentDeal: value));
    });
  }

  @override
  $DealCategoryCopyWith<$Res> get currentCategory {
    return $DealCategoryCopyWith<$Res>(_value.currentCategory, (value) {
      return _then(_value.copyWith(currentCategory: value));
    });
  }

  @override
  $SellHistoryCopyWith<$Res>? get sellHistory {
    if (_value.sellHistory == null) {
      return null;
    }

    return $SellHistoryCopyWith<$Res>(_value.sellHistory!, (value) {
      return _then(_value.copyWith(sellHistory: value));
    });
  }

  @override
  $BidHistoryCopyWith<$Res>? get bidHistory {
    if (_value.bidHistory == null) {
      return null;
    }

    return $BidHistoryCopyWith<$Res>(_value.bidHistory!, (value) {
      return _then(_value.copyWith(bidHistory: value));
    });
  }

  @override
  $RatingCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value));
    });
  }

  @override
  $DealPlanCopyWith<$Res>? get selectedPlan {
    if (_value.selectedPlan == null) {
      return null;
    }

    return $DealPlanCopyWith<$Res>(_value.selectedPlan!, (value) {
      return _then(_value.copyWith(selectedPlan: value));
    });
  }

  @override
  $ProductCopyWith<$Res> get currentProduct {
    return $ProductCopyWith<$Res>(_value.currentProduct, (value) {
      return _then(_value.copyWith(currentProduct: value));
    });
  }
}

/// @nodoc
abstract class _$DealStateCopyWith<$Res> implements $DealStateCopyWith<$Res> {
  factory _$DealStateCopyWith(
          _DealState value, $Res Function(_DealState) then) =
      __$DealStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isBidding,
      bool validate,
      Deal currentDeal,
      DealCategory currentCategory,
      SellHistory? sellHistory,
      BidHistory? bidHistory,
      Rating? rating,
      DealPlan? selectedPlan,
      Product currentProduct,
      AmountField<double> bidAmount,
      KtList<DealCategory> categories,
      KtList<Deal> homeDeals,
      KtList<Deal> liveDeals,
      KtList<Deal> deals,
      KtList<MyWish> wishlist,
      KtList<DealPlan> dealPlans,
      Option<AppHttpResponse?> status});

  @override
  $DealCopyWith<$Res> get currentDeal;
  @override
  $DealCategoryCopyWith<$Res> get currentCategory;
  @override
  $SellHistoryCopyWith<$Res>? get sellHistory;
  @override
  $BidHistoryCopyWith<$Res>? get bidHistory;
  @override
  $RatingCopyWith<$Res>? get rating;
  @override
  $DealPlanCopyWith<$Res>? get selectedPlan;
  @override
  $ProductCopyWith<$Res> get currentProduct;
}

/// @nodoc
class __$DealStateCopyWithImpl<$Res> extends _$DealStateCopyWithImpl<$Res>
    implements _$DealStateCopyWith<$Res> {
  __$DealStateCopyWithImpl(_DealState _value, $Res Function(_DealState) _then)
      : super(_value, (v) => _then(v as _DealState));

  @override
  _DealState get _value => super._value as _DealState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isBidding = freezed,
    Object? validate = freezed,
    Object? currentDeal = freezed,
    Object? currentCategory = freezed,
    Object? sellHistory = freezed,
    Object? bidHistory = freezed,
    Object? rating = freezed,
    Object? selectedPlan = freezed,
    Object? currentProduct = freezed,
    Object? bidAmount = freezed,
    Object? categories = freezed,
    Object? homeDeals = freezed,
    Object? liveDeals = freezed,
    Object? deals = freezed,
    Object? wishlist = freezed,
    Object? dealPlans = freezed,
    Object? status = freezed,
  }) {
    return _then(_DealState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isBidding: isBidding == freezed
          ? _value.isBidding
          : isBidding // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      currentDeal: currentDeal == freezed
          ? _value.currentDeal
          : currentDeal // ignore: cast_nullable_to_non_nullable
              as Deal,
      currentCategory: currentCategory == freezed
          ? _value.currentCategory
          : currentCategory // ignore: cast_nullable_to_non_nullable
              as DealCategory,
      sellHistory: sellHistory == freezed
          ? _value.sellHistory
          : sellHistory // ignore: cast_nullable_to_non_nullable
              as SellHistory?,
      bidHistory: bidHistory == freezed
          ? _value.bidHistory
          : bidHistory // ignore: cast_nullable_to_non_nullable
              as BidHistory?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      selectedPlan: selectedPlan == freezed
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as DealPlan?,
      currentProduct: currentProduct == freezed
          ? _value.currentProduct
          : currentProduct // ignore: cast_nullable_to_non_nullable
              as Product,
      bidAmount: bidAmount == freezed
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as KtList<DealCategory>,
      homeDeals: homeDeals == freezed
          ? _value.homeDeals
          : homeDeals // ignore: cast_nullable_to_non_nullable
              as KtList<Deal>,
      liveDeals: liveDeals == freezed
          ? _value.liveDeals
          : liveDeals // ignore: cast_nullable_to_non_nullable
              as KtList<Deal>,
      deals: deals == freezed
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as KtList<Deal>,
      wishlist: wishlist == freezed
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as KtList<MyWish>,
      dealPlans: dealPlans == freezed
          ? _value.dealPlans
          : dealPlans // ignore: cast_nullable_to_non_nullable
              as KtList<DealPlan>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_DealState implements _DealState {
  const _$_DealState(
      {this.isLoading = false,
      this.isBidding = false,
      this.validate = false,
      required this.currentDeal,
      required this.currentCategory,
      this.sellHistory,
      this.bidHistory,
      this.rating,
      this.selectedPlan,
      required this.currentProduct,
      required this.bidAmount,
      this.categories = const KtList.empty(),
      this.homeDeals = const KtList.empty(),
      this.liveDeals = const KtList.empty(),
      this.deals = const KtList.empty(),
      this.wishlist = const KtList.empty(),
      this.dealPlans = const KtList.empty(),
      this.status = const None()});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isBidding;
  @JsonKey()
  @override
  final bool validate;
  @override
  final Deal currentDeal;
  @override
  final DealCategory currentCategory;
  @override
  final SellHistory? sellHistory;
  @override
  final BidHistory? bidHistory;
  @override
  final Rating? rating;
  @override
  final DealPlan? selectedPlan;
  @override
  final Product currentProduct;
  @override
  final AmountField<double> bidAmount;
  @JsonKey()
  @override
  final KtList<DealCategory> categories;
  @JsonKey()
  @override
  final KtList<Deal> homeDeals;
  @JsonKey()
  @override
  final KtList<Deal> liveDeals;
  @JsonKey()
  @override
  final KtList<Deal> deals;
  @JsonKey()
  @override
  final KtList<MyWish> wishlist;
  @JsonKey()
  @override
  final KtList<DealPlan> dealPlans;
  @JsonKey()
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'DealState(isLoading: $isLoading, isBidding: $isBidding, validate: $validate, currentDeal: $currentDeal, currentCategory: $currentCategory, sellHistory: $sellHistory, bidHistory: $bidHistory, rating: $rating, selectedPlan: $selectedPlan, currentProduct: $currentProduct, bidAmount: $bidAmount, categories: $categories, homeDeals: $homeDeals, liveDeals: $liveDeals, deals: $deals, wishlist: $wishlist, dealPlans: $dealPlans, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isBidding, isBidding) &&
            const DeepCollectionEquality().equals(other.validate, validate) &&
            const DeepCollectionEquality()
                .equals(other.currentDeal, currentDeal) &&
            const DeepCollectionEquality()
                .equals(other.currentCategory, currentCategory) &&
            const DeepCollectionEquality()
                .equals(other.sellHistory, sellHistory) &&
            const DeepCollectionEquality()
                .equals(other.bidHistory, bidHistory) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other.selectedPlan, selectedPlan) &&
            const DeepCollectionEquality()
                .equals(other.currentProduct, currentProduct) &&
            const DeepCollectionEquality().equals(other.bidAmount, bidAmount) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality().equals(other.homeDeals, homeDeals) &&
            const DeepCollectionEquality().equals(other.liveDeals, liveDeals) &&
            const DeepCollectionEquality().equals(other.deals, deals) &&
            const DeepCollectionEquality().equals(other.wishlist, wishlist) &&
            const DeepCollectionEquality().equals(other.dealPlans, dealPlans) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isBidding),
      const DeepCollectionEquality().hash(validate),
      const DeepCollectionEquality().hash(currentDeal),
      const DeepCollectionEquality().hash(currentCategory),
      const DeepCollectionEquality().hash(sellHistory),
      const DeepCollectionEquality().hash(bidHistory),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(selectedPlan),
      const DeepCollectionEquality().hash(currentProduct),
      const DeepCollectionEquality().hash(bidAmount),
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(homeDeals),
      const DeepCollectionEquality().hash(liveDeals),
      const DeepCollectionEquality().hash(deals),
      const DeepCollectionEquality().hash(wishlist),
      const DeepCollectionEquality().hash(dealPlans),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$DealStateCopyWith<_DealState> get copyWith =>
      __$DealStateCopyWithImpl<_DealState>(this, _$identity);
}

abstract class _DealState implements DealState {
  const factory _DealState(
      {bool isLoading,
      bool isBidding,
      bool validate,
      required Deal currentDeal,
      required DealCategory currentCategory,
      SellHistory? sellHistory,
      BidHistory? bidHistory,
      Rating? rating,
      DealPlan? selectedPlan,
      required Product currentProduct,
      required AmountField<double> bidAmount,
      KtList<DealCategory> categories,
      KtList<Deal> homeDeals,
      KtList<Deal> liveDeals,
      KtList<Deal> deals,
      KtList<MyWish> wishlist,
      KtList<DealPlan> dealPlans,
      Option<AppHttpResponse?> status}) = _$_DealState;

  @override
  bool get isLoading;
  @override
  bool get isBidding;
  @override
  bool get validate;
  @override
  Deal get currentDeal;
  @override
  DealCategory get currentCategory;
  @override
  SellHistory? get sellHistory;
  @override
  BidHistory? get bidHistory;
  @override
  Rating? get rating;
  @override
  DealPlan? get selectedPlan;
  @override
  Product get currentProduct;
  @override
  AmountField<double> get bidAmount;
  @override
  KtList<DealCategory> get categories;
  @override
  KtList<Deal> get homeDeals;
  @override
  KtList<Deal> get liveDeals;
  @override
  KtList<Deal> get deals;
  @override
  KtList<MyWish> get wishlist;
  @override
  KtList<DealPlan> get dealPlans;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$DealStateCopyWith<_DealState> get copyWith =>
      throw _privateConstructorUsedError;
}
