// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of bank.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BankTearOff {
  const _$BankTearOff();

  _Bank call(
      {required UniqueId<String?> id,
      required BasicTextField<String?> code,
      required BasicTextField<String?> bankName,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _Bank(
      id: id,
      code: code,
      bankName: bankName,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $Bank = _$BankTearOff();

/// @nodoc
mixin _$Bank {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  BasicTextField<String?> get code => throw _privateConstructorUsedError;
  BasicTextField<String?> get bankName => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BankCopyWith<Bank> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankCopyWith<$Res> {
  factory $BankCopyWith(Bank value, $Res Function(Bank) then) =
      _$BankCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      BasicTextField<String?> code,
      BasicTextField<String?> bankName,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$BankCopyWithImpl<$Res> implements $BankCopyWith<$Res> {
  _$BankCopyWithImpl(this._value, this._then);

  final Bank _value;
  // ignore: unused_field
  final $Res Function(Bank) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? bankName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
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
abstract class _$BankCopyWith<$Res> implements $BankCopyWith<$Res> {
  factory _$BankCopyWith(_Bank value, $Res Function(_Bank) then) =
      __$BankCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      BasicTextField<String?> code,
      BasicTextField<String?> bankName,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$BankCopyWithImpl<$Res> extends _$BankCopyWithImpl<$Res>
    implements _$BankCopyWith<$Res> {
  __$BankCopyWithImpl(_Bank _value, $Res Function(_Bank) _then)
      : super(_value, (v) => _then(v as _Bank));

  @override
  _Bank get _value => super._value as _Bank;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? bankName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Bank(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
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

class _$_Bank extends _Bank {
  const _$_Bank(
      {required this.id,
      required this.code,
      required this.bankName,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final BasicTextField<String?> code;
  @override
  final BasicTextField<String?> bankName;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Bank(id: $id, code: $code, bankName: $bankName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Bank &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.bankName, bankName) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(bankName),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$BankCopyWith<_Bank> get copyWith =>
      __$BankCopyWithImpl<_Bank>(this, _$identity);
}

abstract class _Bank extends Bank {
  const factory _Bank(
      {required UniqueId<String?> id,
      required BasicTextField<String?> code,
      required BasicTextField<String?> bankName,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_Bank;
  const _Bank._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  BasicTextField<String?> get code;
  @override
  BasicTextField<String?> get bankName;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$BankCopyWith<_Bank> get copyWith => throw _privateConstructorUsedError;
}
