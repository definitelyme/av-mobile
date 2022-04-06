// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of sell_history.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SellHistoryTearOff {
  const _$SellHistoryTearOff();

  _SellHistory call(
      {required AmountField<double> totalProducts,
      required AmountField<double> totalSold,
      required AmountField<double> revenue,
      KtList<Deal> deals = const KtList.empty()}) {
    return _SellHistory(
      totalProducts: totalProducts,
      totalSold: totalSold,
      revenue: revenue,
      deals: deals,
    );
  }
}

/// @nodoc
const $SellHistory = _$SellHistoryTearOff();

/// @nodoc
mixin _$SellHistory {
  AmountField<double> get totalProducts => throw _privateConstructorUsedError;
  AmountField<double> get totalSold => throw _privateConstructorUsedError;
  AmountField<double> get revenue => throw _privateConstructorUsedError;
  KtList<Deal> get deals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellHistoryCopyWith<SellHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellHistoryCopyWith<$Res> {
  factory $SellHistoryCopyWith(
          SellHistory value, $Res Function(SellHistory) then) =
      _$SellHistoryCopyWithImpl<$Res>;
  $Res call(
      {AmountField<double> totalProducts,
      AmountField<double> totalSold,
      AmountField<double> revenue,
      KtList<Deal> deals});
}

/// @nodoc
class _$SellHistoryCopyWithImpl<$Res> implements $SellHistoryCopyWith<$Res> {
  _$SellHistoryCopyWithImpl(this._value, this._then);

  final SellHistory _value;
  // ignore: unused_field
  final $Res Function(SellHistory) _then;

  @override
  $Res call({
    Object? totalProducts = freezed,
    Object? totalSold = freezed,
    Object? revenue = freezed,
    Object? deals = freezed,
  }) {
    return _then(_value.copyWith(
      totalProducts: totalProducts == freezed
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      totalSold: totalSold == freezed
          ? _value.totalSold
          : totalSold // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      deals: deals == freezed
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as KtList<Deal>,
    ));
  }
}

/// @nodoc
abstract class _$SellHistoryCopyWith<$Res>
    implements $SellHistoryCopyWith<$Res> {
  factory _$SellHistoryCopyWith(
          _SellHistory value, $Res Function(_SellHistory) then) =
      __$SellHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {AmountField<double> totalProducts,
      AmountField<double> totalSold,
      AmountField<double> revenue,
      KtList<Deal> deals});
}

/// @nodoc
class __$SellHistoryCopyWithImpl<$Res> extends _$SellHistoryCopyWithImpl<$Res>
    implements _$SellHistoryCopyWith<$Res> {
  __$SellHistoryCopyWithImpl(
      _SellHistory _value, $Res Function(_SellHistory) _then)
      : super(_value, (v) => _then(v as _SellHistory));

  @override
  _SellHistory get _value => super._value as _SellHistory;

  @override
  $Res call({
    Object? totalProducts = freezed,
    Object? totalSold = freezed,
    Object? revenue = freezed,
    Object? deals = freezed,
  }) {
    return _then(_SellHistory(
      totalProducts: totalProducts == freezed
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      totalSold: totalSold == freezed
          ? _value.totalSold
          : totalSold // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      deals: deals == freezed
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as KtList<Deal>,
    ));
  }
}

/// @nodoc

class _$_SellHistory extends _SellHistory {
  const _$_SellHistory(
      {required this.totalProducts,
      required this.totalSold,
      required this.revenue,
      this.deals = const KtList.empty()})
      : super._();

  @override
  final AmountField<double> totalProducts;
  @override
  final AmountField<double> totalSold;
  @override
  final AmountField<double> revenue;
  @JsonKey()
  @override
  final KtList<Deal> deals;

  @override
  String toString() {
    return 'SellHistory(totalProducts: $totalProducts, totalSold: $totalSold, revenue: $revenue, deals: $deals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SellHistory &&
            const DeepCollectionEquality()
                .equals(other.totalProducts, totalProducts) &&
            const DeepCollectionEquality().equals(other.totalSold, totalSold) &&
            const DeepCollectionEquality().equals(other.revenue, revenue) &&
            const DeepCollectionEquality().equals(other.deals, deals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalProducts),
      const DeepCollectionEquality().hash(totalSold),
      const DeepCollectionEquality().hash(revenue),
      const DeepCollectionEquality().hash(deals));

  @JsonKey(ignore: true)
  @override
  _$SellHistoryCopyWith<_SellHistory> get copyWith =>
      __$SellHistoryCopyWithImpl<_SellHistory>(this, _$identity);
}

abstract class _SellHistory extends SellHistory {
  const factory _SellHistory(
      {required AmountField<double> totalProducts,
      required AmountField<double> totalSold,
      required AmountField<double> revenue,
      KtList<Deal> deals}) = _$_SellHistory;
  const _SellHistory._() : super._();

  @override
  AmountField<double> get totalProducts;
  @override
  AmountField<double> get totalSold;
  @override
  AmountField<double> get revenue;
  @override
  KtList<Deal> get deals;
  @override
  @JsonKey(ignore: true)
  _$SellHistoryCopyWith<_SellHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
