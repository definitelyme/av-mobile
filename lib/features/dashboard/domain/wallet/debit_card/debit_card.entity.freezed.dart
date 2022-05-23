// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of debit_card.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DebitCard {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  bool get cardAdded => throw _privateConstructorUsedError;
  bool get pinAdded => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  DebitCardBrand get brand => throw _privateConstructorUsedError;
  DebitCardName get cardName => throw _privateConstructorUsedError;
  DebitCardNumber get cardNumber => throw _privateConstructorUsedError;
  DebitCardExpiryDate get cardExpiryDate => throw _privateConstructorUsedError;
  DebitCardCVV get cardCVV => throw _privateConstructorUsedError;
  BasicTextField<String?> get masked => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DebitCardCopyWith<DebitCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebitCardCopyWith<$Res> {
  factory $DebitCardCopyWith(DebitCard value, $Res Function(DebitCard) then) =
      _$DebitCardCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      bool cardAdded,
      bool pinAdded,
      EmailAddress email,
      DebitCardBrand brand,
      DebitCardName cardName,
      DebitCardNumber cardNumber,
      DebitCardExpiryDate cardExpiryDate,
      DebitCardCVV cardCVV,
      BasicTextField<String?> masked,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$DebitCardCopyWithImpl<$Res> implements $DebitCardCopyWith<$Res> {
  _$DebitCardCopyWithImpl(this._value, this._then);

  final DebitCard _value;
  // ignore: unused_field
  final $Res Function(DebitCard) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? cardAdded = freezed,
    Object? pinAdded = freezed,
    Object? email = freezed,
    Object? brand = freezed,
    Object? cardName = freezed,
    Object? cardNumber = freezed,
    Object? cardExpiryDate = freezed,
    Object? cardCVV = freezed,
    Object? masked = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      cardAdded: cardAdded == freezed
          ? _value.cardAdded
          : cardAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      pinAdded: pinAdded == freezed
          ? _value.pinAdded
          : pinAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as DebitCardBrand,
      cardName: cardName == freezed
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as DebitCardName,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as DebitCardNumber,
      cardExpiryDate: cardExpiryDate == freezed
          ? _value.cardExpiryDate
          : cardExpiryDate // ignore: cast_nullable_to_non_nullable
              as DebitCardExpiryDate,
      cardCVV: cardCVV == freezed
          ? _value.cardCVV
          : cardCVV // ignore: cast_nullable_to_non_nullable
              as DebitCardCVV,
      masked: masked == freezed
          ? _value.masked
          : masked // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_DebitCardCopyWith<$Res> implements $DebitCardCopyWith<$Res> {
  factory _$$_DebitCardCopyWith(
          _$_DebitCard value, $Res Function(_$_DebitCard) then) =
      __$$_DebitCardCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      bool cardAdded,
      bool pinAdded,
      EmailAddress email,
      DebitCardBrand brand,
      DebitCardName cardName,
      DebitCardNumber cardNumber,
      DebitCardExpiryDate cardExpiryDate,
      DebitCardCVV cardCVV,
      BasicTextField<String?> masked,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_DebitCardCopyWithImpl<$Res> extends _$DebitCardCopyWithImpl<$Res>
    implements _$$_DebitCardCopyWith<$Res> {
  __$$_DebitCardCopyWithImpl(
      _$_DebitCard _value, $Res Function(_$_DebitCard) _then)
      : super(_value, (v) => _then(v as _$_DebitCard));

  @override
  _$_DebitCard get _value => super._value as _$_DebitCard;

  @override
  $Res call({
    Object? id = freezed,
    Object? cardAdded = freezed,
    Object? pinAdded = freezed,
    Object? email = freezed,
    Object? brand = freezed,
    Object? cardName = freezed,
    Object? cardNumber = freezed,
    Object? cardExpiryDate = freezed,
    Object? cardCVV = freezed,
    Object? masked = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_DebitCard(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      cardAdded: cardAdded == freezed
          ? _value.cardAdded
          : cardAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      pinAdded: pinAdded == freezed
          ? _value.pinAdded
          : pinAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as DebitCardBrand,
      cardName: cardName == freezed
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as DebitCardName,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as DebitCardNumber,
      cardExpiryDate: cardExpiryDate == freezed
          ? _value.cardExpiryDate
          : cardExpiryDate // ignore: cast_nullable_to_non_nullable
              as DebitCardExpiryDate,
      cardCVV: cardCVV == freezed
          ? _value.cardCVV
          : cardCVV // ignore: cast_nullable_to_non_nullable
              as DebitCardCVV,
      masked: masked == freezed
          ? _value.masked
          : masked // ignore: cast_nullable_to_non_nullable
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

class _$_DebitCard extends _DebitCard {
  const _$_DebitCard(
      {required this.id,
      this.cardAdded = false,
      this.pinAdded = false,
      required this.email,
      this.brand = DebitCardBrand.none,
      required this.cardName,
      required this.cardNumber,
      required this.cardExpiryDate,
      required this.cardCVV,
      required this.masked,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  @JsonKey()
  final bool cardAdded;
  @override
  @JsonKey()
  final bool pinAdded;
  @override
  final EmailAddress email;
  @override
  @JsonKey()
  final DebitCardBrand brand;
  @override
  final DebitCardName cardName;
  @override
  final DebitCardNumber cardNumber;
  @override
  final DebitCardExpiryDate cardExpiryDate;
  @override
  final DebitCardCVV cardCVV;
  @override
  final BasicTextField<String?> masked;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DebitCard(id: $id, cardAdded: $cardAdded, pinAdded: $pinAdded, email: $email, brand: $brand, cardName: $cardName, cardNumber: $cardNumber, cardExpiryDate: $cardExpiryDate, cardCVV: $cardCVV, masked: $masked, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DebitCard &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.cardAdded, cardAdded) &&
            const DeepCollectionEquality().equals(other.pinAdded, pinAdded) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.cardName, cardName) &&
            const DeepCollectionEquality()
                .equals(other.cardNumber, cardNumber) &&
            const DeepCollectionEquality()
                .equals(other.cardExpiryDate, cardExpiryDate) &&
            const DeepCollectionEquality().equals(other.cardCVV, cardCVV) &&
            const DeepCollectionEquality().equals(other.masked, masked) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(cardAdded),
      const DeepCollectionEquality().hash(pinAdded),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(cardName),
      const DeepCollectionEquality().hash(cardNumber),
      const DeepCollectionEquality().hash(cardExpiryDate),
      const DeepCollectionEquality().hash(cardCVV),
      const DeepCollectionEquality().hash(masked),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_DebitCardCopyWith<_$_DebitCard> get copyWith =>
      __$$_DebitCardCopyWithImpl<_$_DebitCard>(this, _$identity);
}

abstract class _DebitCard extends DebitCard {
  const factory _DebitCard(
      {required final UniqueId<String?> id,
      final bool cardAdded,
      final bool pinAdded,
      required final EmailAddress email,
      final DebitCardBrand brand,
      required final DebitCardName cardName,
      required final DebitCardNumber cardNumber,
      required final DebitCardExpiryDate cardExpiryDate,
      required final DebitCardCVV cardCVV,
      required final BasicTextField<String?> masked,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_DebitCard;
  const _DebitCard._() : super._();

  @override
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  @override
  bool get cardAdded => throw _privateConstructorUsedError;
  @override
  bool get pinAdded => throw _privateConstructorUsedError;
  @override
  EmailAddress get email => throw _privateConstructorUsedError;
  @override
  DebitCardBrand get brand => throw _privateConstructorUsedError;
  @override
  DebitCardName get cardName => throw _privateConstructorUsedError;
  @override
  DebitCardNumber get cardNumber => throw _privateConstructorUsedError;
  @override
  DebitCardExpiryDate get cardExpiryDate => throw _privateConstructorUsedError;
  @override
  DebitCardCVV get cardCVV => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get masked => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DebitCardCopyWith<_$_DebitCard> get copyWith =>
      throw _privateConstructorUsedError;
}
