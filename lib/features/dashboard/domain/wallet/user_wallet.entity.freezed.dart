// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of user_wallet.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserWalletTearOff {
  const _$UserWalletTearOff();

  _UserWallet call(
      {required UniqueId<String?> id,
      required AmountField<double> balance,
      required AmountField<double> revenue,
      required AmountField<double> expense,
      required AmountField<double> expendingExpense,
      bool isActive = false,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _UserWallet(
      id: id,
      balance: balance,
      revenue: revenue,
      expense: expense,
      expendingExpense: expendingExpense,
      isActive: isActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $UserWallet = _$UserWalletTearOff();

/// @nodoc
mixin _$UserWallet {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  AmountField<double> get balance => throw _privateConstructorUsedError;
  AmountField<double> get revenue => throw _privateConstructorUsedError;
  AmountField<double> get expense => throw _privateConstructorUsedError;
  AmountField<double> get expendingExpense =>
      throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserWalletCopyWith<UserWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWalletCopyWith<$Res> {
  factory $UserWalletCopyWith(
          UserWallet value, $Res Function(UserWallet) then) =
      _$UserWalletCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      AmountField<double> balance,
      AmountField<double> revenue,
      AmountField<double> expense,
      AmountField<double> expendingExpense,
      bool isActive,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$UserWalletCopyWithImpl<$Res> implements $UserWalletCopyWith<$Res> {
  _$UserWalletCopyWithImpl(this._value, this._then);

  final UserWallet _value;
  // ignore: unused_field
  final $Res Function(UserWallet) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? balance = freezed,
    Object? revenue = freezed,
    Object? expense = freezed,
    Object? expendingExpense = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      expense: expense == freezed
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      expendingExpense: expendingExpense == freezed
          ? _value.expendingExpense
          : expendingExpense // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$UserWalletCopyWith<$Res> implements $UserWalletCopyWith<$Res> {
  factory _$UserWalletCopyWith(
          _UserWallet value, $Res Function(_UserWallet) then) =
      __$UserWalletCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      AmountField<double> balance,
      AmountField<double> revenue,
      AmountField<double> expense,
      AmountField<double> expendingExpense,
      bool isActive,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$UserWalletCopyWithImpl<$Res> extends _$UserWalletCopyWithImpl<$Res>
    implements _$UserWalletCopyWith<$Res> {
  __$UserWalletCopyWithImpl(
      _UserWallet _value, $Res Function(_UserWallet) _then)
      : super(_value, (v) => _then(v as _UserWallet));

  @override
  _UserWallet get _value => super._value as _UserWallet;

  @override
  $Res call({
    Object? id = freezed,
    Object? balance = freezed,
    Object? revenue = freezed,
    Object? expense = freezed,
    Object? expendingExpense = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_UserWallet(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      expense: expense == freezed
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      expendingExpense: expendingExpense == freezed
          ? _value.expendingExpense
          : expendingExpense // ignore: cast_nullable_to_non_nullable
              as AmountField<double>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_UserWallet extends _UserWallet {
  const _$_UserWallet(
      {required this.id,
      required this.balance,
      required this.revenue,
      required this.expense,
      required this.expendingExpense,
      this.isActive = false,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final AmountField<double> balance;
  @override
  final AmountField<double> revenue;
  @override
  final AmountField<double> expense;
  @override
  final AmountField<double> expendingExpense;
  @JsonKey()
  @override
  final bool isActive;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserWallet(id: $id, balance: $balance, revenue: $revenue, expense: $expense, expendingExpense: $expendingExpense, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserWallet &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.revenue, revenue) &&
            const DeepCollectionEquality().equals(other.expense, expense) &&
            const DeepCollectionEquality()
                .equals(other.expendingExpense, expendingExpense) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(revenue),
      const DeepCollectionEquality().hash(expense),
      const DeepCollectionEquality().hash(expendingExpense),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$UserWalletCopyWith<_UserWallet> get copyWith =>
      __$UserWalletCopyWithImpl<_UserWallet>(this, _$identity);
}

abstract class _UserWallet extends UserWallet {
  const factory _UserWallet(
      {required UniqueId<String?> id,
      required AmountField<double> balance,
      required AmountField<double> revenue,
      required AmountField<double> expense,
      required AmountField<double> expendingExpense,
      bool isActive,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_UserWallet;
  const _UserWallet._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  AmountField<double> get balance;
  @override
  AmountField<double> get revenue;
  @override
  AmountField<double> get expense;
  @override
  AmountField<double> get expendingExpense;
  @override
  bool get isActive;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$UserWalletCopyWith<_UserWallet> get copyWith =>
      throw _privateConstructorUsedError;
}
