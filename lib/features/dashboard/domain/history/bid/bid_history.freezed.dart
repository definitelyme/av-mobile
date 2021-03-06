// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of bid_history.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BidHistoryTearOff {
  const _$BidHistoryTearOff();

  _BidHistory call(
      {required AmountField<double> totalAuctionsParticipated,
      required AmountField<double> totalWinningBid,
      required AmountField<double> totalAmountSpent,
      KtList<Deal> deals = const KtList.empty()}) {
    return _BidHistory(
      totalAuctionsParticipated: totalAuctionsParticipated,
      totalWinningBid: totalWinningBid,
      totalAmountSpent: totalAmountSpent,
      deals: deals,
    );
  }
}

/// @nodoc
const $BidHistory = _$BidHistoryTearOff();

/// @nodoc
mixin _$BidHistory {
  AmountField<double> get totalAuctionsParticipated =>
      throw _privateConstructorUsedError;
  AmountField<double> get totalWinningBid => throw _privateConstructorUsedError;
  AmountField<double> get totalAmountSpent =>
      throw _privateConstructorUsedError;
  KtList<Deal> get deals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BidHistoryCopyWith<BidHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidHistoryCopyWith<$Res> {
  factory $BidHistoryCopyWith(
          BidHistory value, $Res Function(BidHistory) then) =
      _$BidHistoryCopyWithImpl<$Res>;
  $Res call(
      {AmountField<double> totalAuctionsParticipated,
      AmountField<double> totalWinningBid,
      AmountField<double> totalAmountSpent,
      KtList<Deal> deals});
}

/// @nodoc
class _$BidHistoryCopyWithImpl<$Res> implements $BidHistoryCopyWith<$Res> {
  _$BidHistoryCopyWithImpl(this._value, this._then);

  final BidHistory _value;
  // ignore: unused_field
  final $Res Function(BidHistory) _then;

  @override
  $Res call({
    Object? totalAuctionsParticipated = freezed,
    Object? totalWinningBid = freezed,
    Object? totalAmountSpent = freezed,
    Object? deals = freezed,
  }) {
    return _then(_value.copyWith(
      totalAuctionsParticipated: totalAuctionsParticipated == freezed
          ? _value.totalAuctionsParticipated
          : totalAuctionsParticipated // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      totalWinningBid: totalWinningBid == freezed
          ? _value.totalWinningBid
          : totalWinningBid // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      totalAmountSpent: totalAmountSpent == freezed
          ? _value.totalAmountSpent
          : totalAmountSpent // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      deals: deals == freezed
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as KtList<Deal>,
    ));
  }
}

/// @nodoc
abstract class _$BidHistoryCopyWith<$Res> implements $BidHistoryCopyWith<$Res> {
  factory _$BidHistoryCopyWith(
          _BidHistory value, $Res Function(_BidHistory) then) =
      __$BidHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {AmountField<double> totalAuctionsParticipated,
      AmountField<double> totalWinningBid,
      AmountField<double> totalAmountSpent,
      KtList<Deal> deals});
}

/// @nodoc
class __$BidHistoryCopyWithImpl<$Res> extends _$BidHistoryCopyWithImpl<$Res>
    implements _$BidHistoryCopyWith<$Res> {
  __$BidHistoryCopyWithImpl(
      _BidHistory _value, $Res Function(_BidHistory) _then)
      : super(_value, (v) => _then(v as _BidHistory));

  @override
  _BidHistory get _value => super._value as _BidHistory;

  @override
  $Res call({
    Object? totalAuctionsParticipated = freezed,
    Object? totalWinningBid = freezed,
    Object? totalAmountSpent = freezed,
    Object? deals = freezed,
  }) {
    return _then(_BidHistory(
      totalAuctionsParticipated: totalAuctionsParticipated == freezed
          ? _value.totalAuctionsParticipated
          : totalAuctionsParticipated // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      totalWinningBid: totalWinningBid == freezed
          ? _value.totalWinningBid
          : totalWinningBid // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      totalAmountSpent: totalAmountSpent == freezed
          ? _value.totalAmountSpent
          : totalAmountSpent // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      deals: deals == freezed
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as KtList<Deal>,
    ));
  }
}

/// @nodoc

class _$_BidHistory extends _BidHistory {
  const _$_BidHistory(
      {required this.totalAuctionsParticipated,
      required this.totalWinningBid,
      required this.totalAmountSpent,
      this.deals = const KtList.empty()})
      : super._();

  @override
  final AmountField<double> totalAuctionsParticipated;
  @override
  final AmountField<double> totalWinningBid;
  @override
  final AmountField<double> totalAmountSpent;
  @JsonKey()
  @override
  final KtList<Deal> deals;

  @override
  String toString() {
    return 'BidHistory(totalAuctionsParticipated: $totalAuctionsParticipated, totalWinningBid: $totalWinningBid, totalAmountSpent: $totalAmountSpent, deals: $deals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BidHistory &&
            const DeepCollectionEquality().equals(
                other.totalAuctionsParticipated, totalAuctionsParticipated) &&
            const DeepCollectionEquality()
                .equals(other.totalWinningBid, totalWinningBid) &&
            const DeepCollectionEquality()
                .equals(other.totalAmountSpent, totalAmountSpent) &&
            const DeepCollectionEquality().equals(other.deals, deals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalAuctionsParticipated),
      const DeepCollectionEquality().hash(totalWinningBid),
      const DeepCollectionEquality().hash(totalAmountSpent),
      const DeepCollectionEquality().hash(deals));

  @JsonKey(ignore: true)
  @override
  _$BidHistoryCopyWith<_BidHistory> get copyWith =>
      __$BidHistoryCopyWithImpl<_BidHistory>(this, _$identity);
}

abstract class _BidHistory extends BidHistory {
  const factory _BidHistory(
      {required AmountField<double> totalAuctionsParticipated,
      required AmountField<double> totalWinningBid,
      required AmountField<double> totalAmountSpent,
      KtList<Deal> deals}) = _$_BidHistory;
  const _BidHistory._() : super._();

  @override
  AmountField<double> get totalAuctionsParticipated;
  @override
  AmountField<double> get totalWinningBid;
  @override
  AmountField<double> get totalAmountSpent;
  @override
  KtList<Deal> get deals;
  @override
  @JsonKey(ignore: true)
  _$BidHistoryCopyWith<_BidHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
