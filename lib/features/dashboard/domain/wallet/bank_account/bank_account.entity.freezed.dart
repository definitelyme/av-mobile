// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of bank_account.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BankAccount {
  BasicTextField<String?> get accountName => throw _privateConstructorUsedError;
  BasicTextField<String?> get accountNumber =>
      throw _privateConstructorUsedError;
  Bank? get bank => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BankAccountCopyWith<BankAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAccountCopyWith<$Res> {
  factory $BankAccountCopyWith(
          BankAccount value, $Res Function(BankAccount) then) =
      _$BankAccountCopyWithImpl<$Res>;
  $Res call(
      {BasicTextField<String?> accountName,
      BasicTextField<String?> accountNumber,
      Bank? bank});

  $BankCopyWith<$Res>? get bank;
}

/// @nodoc
class _$BankAccountCopyWithImpl<$Res> implements $BankAccountCopyWith<$Res> {
  _$BankAccountCopyWithImpl(this._value, this._then);

  final BankAccount _value;
  // ignore: unused_field
  final $Res Function(BankAccount) _then;

  @override
  $Res call({
    Object? accountName = freezed,
    Object? accountNumber = freezed,
    Object? bank = freezed,
  }) {
    return _then(_value.copyWith(
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      bank: bank == freezed
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as Bank?,
    ));
  }

  @override
  $BankCopyWith<$Res>? get bank {
    if (_value.bank == null) {
      return null;
    }

    return $BankCopyWith<$Res>(_value.bank!, (value) {
      return _then(_value.copyWith(bank: value));
    });
  }
}

/// @nodoc
abstract class _$$_BankAccountCopyWith<$Res>
    implements $BankAccountCopyWith<$Res> {
  factory _$$_BankAccountCopyWith(
          _$_BankAccount value, $Res Function(_$_BankAccount) then) =
      __$$_BankAccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {BasicTextField<String?> accountName,
      BasicTextField<String?> accountNumber,
      Bank? bank});

  @override
  $BankCopyWith<$Res>? get bank;
}

/// @nodoc
class __$$_BankAccountCopyWithImpl<$Res> extends _$BankAccountCopyWithImpl<$Res>
    implements _$$_BankAccountCopyWith<$Res> {
  __$$_BankAccountCopyWithImpl(
      _$_BankAccount _value, $Res Function(_$_BankAccount) _then)
      : super(_value, (v) => _then(v as _$_BankAccount));

  @override
  _$_BankAccount get _value => super._value as _$_BankAccount;

  @override
  $Res call({
    Object? accountName = freezed,
    Object? accountNumber = freezed,
    Object? bank = freezed,
  }) {
    return _then(_$_BankAccount(
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      bank: bank == freezed
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as Bank?,
    ));
  }
}

/// @nodoc

class _$_BankAccount extends _BankAccount {
  const _$_BankAccount(
      {required this.accountName, required this.accountNumber, this.bank})
      : super._();

  @override
  final BasicTextField<String?> accountName;
  @override
  final BasicTextField<String?> accountNumber;
  @override
  final Bank? bank;

  @override
  String toString() {
    return 'BankAccount(accountName: $accountName, accountNumber: $accountNumber, bank: $bank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankAccount &&
            const DeepCollectionEquality()
                .equals(other.accountName, accountName) &&
            const DeepCollectionEquality()
                .equals(other.accountNumber, accountNumber) &&
            const DeepCollectionEquality().equals(other.bank, bank));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accountName),
      const DeepCollectionEquality().hash(accountNumber),
      const DeepCollectionEquality().hash(bank));

  @JsonKey(ignore: true)
  @override
  _$$_BankAccountCopyWith<_$_BankAccount> get copyWith =>
      __$$_BankAccountCopyWithImpl<_$_BankAccount>(this, _$identity);
}

abstract class _BankAccount extends BankAccount {
  const factory _BankAccount(
      {required final BasicTextField<String?> accountName,
      required final BasicTextField<String?> accountNumber,
      final Bank? bank}) = _$_BankAccount;
  const _BankAccount._() : super._();

  @override
  BasicTextField<String?> get accountName => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get accountNumber =>
      throw _privateConstructorUsedError;
  @override
  Bank? get bank => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BankAccountCopyWith<_$_BankAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
