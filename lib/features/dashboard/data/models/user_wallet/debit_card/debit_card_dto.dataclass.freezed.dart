// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of debit_card_dto.dataclass.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DebitCardDTO _$DebitCardDTOFromJson(Map<String, dynamic> json) {
  return _DebitCardDTO.fromJson(json);
}

/// @nodoc
class _$DebitCardDTOTearOff {
  const _$DebitCardDTOTearOff();

  _DebitCardDTO call(
      {@JsonKey(name: '_meta') MetaDTO? meta, required DebitCardDTOData data}) {
    return _DebitCardDTO(
      meta: meta,
      data: data,
    );
  }

  DebitCardDTO fromJson(Map<String, Object?> json) {
    return DebitCardDTO.fromJson(json);
  }
}

/// @nodoc
const $DebitCardDTO = _$DebitCardDTOTearOff();

/// @nodoc
mixin _$DebitCardDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  DebitCardDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DebitCardDTOCopyWith<DebitCardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebitCardDTOCopyWith<$Res> {
  factory $DebitCardDTOCopyWith(
          DebitCardDTO value, $Res Function(DebitCardDTO) then) =
      _$DebitCardDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, DebitCardDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  $DebitCardDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$DebitCardDTOCopyWithImpl<$Res> implements $DebitCardDTOCopyWith<$Res> {
  _$DebitCardDTOCopyWithImpl(this._value, this._then);

  final DebitCardDTO _value;
  // ignore: unused_field
  final $Res Function(DebitCardDTO) _then;

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
              as DebitCardDTOData,
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
  $DebitCardDTODataCopyWith<$Res> get data {
    return $DebitCardDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$DebitCardDTOCopyWith<$Res>
    implements $DebitCardDTOCopyWith<$Res> {
  factory _$DebitCardDTOCopyWith(
          _DebitCardDTO value, $Res Function(_DebitCardDTO) then) =
      __$DebitCardDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, DebitCardDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  $DebitCardDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$DebitCardDTOCopyWithImpl<$Res> extends _$DebitCardDTOCopyWithImpl<$Res>
    implements _$DebitCardDTOCopyWith<$Res> {
  __$DebitCardDTOCopyWithImpl(
      _DebitCardDTO _value, $Res Function(_DebitCardDTO) _then)
      : super(_value, (v) => _then(v as _DebitCardDTO));

  @override
  _DebitCardDTO get _value => super._value as _DebitCardDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_DebitCardDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DebitCardDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DebitCardDTO extends _DebitCardDTO {
  const _$_DebitCardDTO({@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_DebitCardDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DebitCardDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final DebitCardDTOData data;

  @override
  String toString() {
    return 'DebitCardDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DebitCardDTO &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$DebitCardDTOCopyWith<_DebitCardDTO> get copyWith =>
      __$DebitCardDTOCopyWithImpl<_DebitCardDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DebitCardDTOToJson(this);
  }
}

abstract class _DebitCardDTO extends DebitCardDTO {
  const factory _DebitCardDTO(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      required DebitCardDTOData data}) = _$_DebitCardDTO;
  const _DebitCardDTO._() : super._();

  factory _DebitCardDTO.fromJson(Map<String, dynamic> json) =
      _$_DebitCardDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  DebitCardDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$DebitCardDTOCopyWith<_DebitCardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

DebitCardDTOData _$DebitCardDTODataFromJson(Map<String, dynamic> json) {
  return _DebitCardDTOData.fromJson(json);
}

/// @nodoc
class _$DebitCardDTODataTearOff {
  const _$DebitCardDTODataTearOff();

  _DebitCardDTOData call(
      {@JsonKey(name: '_id') String? uid,
      @BooleanSerializer() bool? cardAdded,
      @BooleanSerializer() bool? pinAdded,
      String? email,
      @DebitCardBrandSerializer() DebitCardBrand? cardType,
      @JsonKey(name: 'card') String? cardNumber,
      String? cvv,
      String? expiry,
      String? maskedCard,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt}) {
    return _DebitCardDTOData(
      uid: uid,
      cardAdded: cardAdded,
      pinAdded: pinAdded,
      email: email,
      cardType: cardType,
      cardNumber: cardNumber,
      cvv: cvv,
      expiry: expiry,
      maskedCard: maskedCard,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  DebitCardDTOData fromJson(Map<String, Object?> json) {
    return DebitCardDTOData.fromJson(json);
  }
}

/// @nodoc
const $DebitCardDTOData = _$DebitCardDTODataTearOff();

/// @nodoc
mixin _$DebitCardDTOData {
  @JsonKey(name: '_id')
  String? get uid => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get cardAdded => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get pinAdded => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @DebitCardBrandSerializer()
  DebitCardBrand? get cardType => throw _privateConstructorUsedError;
  @JsonKey(name: 'card')
  String? get cardNumber => throw _privateConstructorUsedError;
  String? get cvv => throw _privateConstructorUsedError;
  String? get expiry => throw _privateConstructorUsedError;
  String? get maskedCard => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DebitCardDTODataCopyWith<DebitCardDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebitCardDTODataCopyWith<$Res> {
  factory $DebitCardDTODataCopyWith(
          DebitCardDTOData value, $Res Function(DebitCardDTOData) then) =
      _$DebitCardDTODataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? uid,
      @BooleanSerializer() bool? cardAdded,
      @BooleanSerializer() bool? pinAdded,
      String? email,
      @DebitCardBrandSerializer() DebitCardBrand? cardType,
      @JsonKey(name: 'card') String? cardNumber,
      String? cvv,
      String? expiry,
      String? maskedCard,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class _$DebitCardDTODataCopyWithImpl<$Res>
    implements $DebitCardDTODataCopyWith<$Res> {
  _$DebitCardDTODataCopyWithImpl(this._value, this._then);

  final DebitCardDTOData _value;
  // ignore: unused_field
  final $Res Function(DebitCardDTOData) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? cardAdded = freezed,
    Object? pinAdded = freezed,
    Object? email = freezed,
    Object? cardType = freezed,
    Object? cardNumber = freezed,
    Object? cvv = freezed,
    Object? expiry = freezed,
    Object? maskedCard = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      cardAdded: cardAdded == freezed
          ? _value.cardAdded
          : cardAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      pinAdded: pinAdded == freezed
          ? _value.pinAdded
          : pinAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      cardType: cardType == freezed
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as DebitCardBrand?,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: cvv == freezed
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      expiry: expiry == freezed
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as String?,
      maskedCard: maskedCard == freezed
          ? _value.maskedCard
          : maskedCard // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$DebitCardDTODataCopyWith<$Res>
    implements $DebitCardDTODataCopyWith<$Res> {
  factory _$DebitCardDTODataCopyWith(
          _DebitCardDTOData value, $Res Function(_DebitCardDTOData) then) =
      __$DebitCardDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? uid,
      @BooleanSerializer() bool? cardAdded,
      @BooleanSerializer() bool? pinAdded,
      String? email,
      @DebitCardBrandSerializer() DebitCardBrand? cardType,
      @JsonKey(name: 'card') String? cardNumber,
      String? cvv,
      String? expiry,
      String? maskedCard,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$DebitCardDTODataCopyWithImpl<$Res>
    extends _$DebitCardDTODataCopyWithImpl<$Res>
    implements _$DebitCardDTODataCopyWith<$Res> {
  __$DebitCardDTODataCopyWithImpl(
      _DebitCardDTOData _value, $Res Function(_DebitCardDTOData) _then)
      : super(_value, (v) => _then(v as _DebitCardDTOData));

  @override
  _DebitCardDTOData get _value => super._value as _DebitCardDTOData;

  @override
  $Res call({
    Object? uid = freezed,
    Object? cardAdded = freezed,
    Object? pinAdded = freezed,
    Object? email = freezed,
    Object? cardType = freezed,
    Object? cardNumber = freezed,
    Object? cvv = freezed,
    Object? expiry = freezed,
    Object? maskedCard = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_DebitCardDTOData(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      cardAdded: cardAdded == freezed
          ? _value.cardAdded
          : cardAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      pinAdded: pinAdded == freezed
          ? _value.pinAdded
          : pinAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      cardType: cardType == freezed
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as DebitCardBrand?,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: cvv == freezed
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      expiry: expiry == freezed
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as String?,
      maskedCard: maskedCard == freezed
          ? _value.maskedCard
          : maskedCard // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_DebitCardDTOData extends _DebitCardDTOData {
  const _$_DebitCardDTOData(
      {@JsonKey(name: '_id') this.uid,
      @BooleanSerializer() this.cardAdded,
      @BooleanSerializer() this.pinAdded,
      this.email,
      @DebitCardBrandSerializer() this.cardType,
      @JsonKey(name: 'card') this.cardNumber,
      this.cvv,
      this.expiry,
      this.maskedCard,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : super._();

  factory _$_DebitCardDTOData.fromJson(Map<String, dynamic> json) =>
      _$$_DebitCardDTODataFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? uid;
  @override
  @BooleanSerializer()
  final bool? cardAdded;
  @override
  @BooleanSerializer()
  final bool? pinAdded;
  @override
  final String? email;
  @override
  @DebitCardBrandSerializer()
  final DebitCardBrand? cardType;
  @override
  @JsonKey(name: 'card')
  final String? cardNumber;
  @override
  final String? cvv;
  @override
  final String? expiry;
  @override
  final String? maskedCard;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DebitCardDTOData(uid: $uid, cardAdded: $cardAdded, pinAdded: $pinAdded, email: $email, cardType: $cardType, cardNumber: $cardNumber, cvv: $cvv, expiry: $expiry, maskedCard: $maskedCard, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DebitCardDTOData &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.cardAdded, cardAdded) &&
            const DeepCollectionEquality().equals(other.pinAdded, pinAdded) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.cardType, cardType) &&
            const DeepCollectionEquality()
                .equals(other.cardNumber, cardNumber) &&
            const DeepCollectionEquality().equals(other.cvv, cvv) &&
            const DeepCollectionEquality().equals(other.expiry, expiry) &&
            const DeepCollectionEquality()
                .equals(other.maskedCard, maskedCard) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(cardAdded),
      const DeepCollectionEquality().hash(pinAdded),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(cardType),
      const DeepCollectionEquality().hash(cardNumber),
      const DeepCollectionEquality().hash(cvv),
      const DeepCollectionEquality().hash(expiry),
      const DeepCollectionEquality().hash(maskedCard),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$DebitCardDTODataCopyWith<_DebitCardDTOData> get copyWith =>
      __$DebitCardDTODataCopyWithImpl<_DebitCardDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DebitCardDTODataToJson(this);
  }
}

abstract class _DebitCardDTOData extends DebitCardDTOData {
  const factory _DebitCardDTOData(
      {@JsonKey(name: '_id') String? uid,
      @BooleanSerializer() bool? cardAdded,
      @BooleanSerializer() bool? pinAdded,
      String? email,
      @DebitCardBrandSerializer() DebitCardBrand? cardType,
      @JsonKey(name: 'card') String? cardNumber,
      String? cvv,
      String? expiry,
      String? maskedCard,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt}) = _$_DebitCardDTOData;
  const _DebitCardDTOData._() : super._();

  factory _DebitCardDTOData.fromJson(Map<String, dynamic> json) =
      _$_DebitCardDTOData.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get uid;
  @override
  @BooleanSerializer()
  bool? get cardAdded;
  @override
  @BooleanSerializer()
  bool? get pinAdded;
  @override
  String? get email;
  @override
  @DebitCardBrandSerializer()
  DebitCardBrand? get cardType;
  @override
  @JsonKey(name: 'card')
  String? get cardNumber;
  @override
  String? get cvv;
  @override
  String? get expiry;
  @override
  String? get maskedCard;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$DebitCardDTODataCopyWith<_DebitCardDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

DebitCardListDTO _$DebitCardListDTOFromJson(Map<String, dynamic> json) {
  return _DebitCardListDTO.fromJson(json);
}

/// @nodoc
class _$DebitCardListDTOTearOff {
  const _$DebitCardListDTOTearOff();

  _DebitCardListDTO call(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      List<DebitCardDTOData> data = const []}) {
    return _DebitCardListDTO(
      meta: meta,
      data: data,
    );
  }

  DebitCardListDTO fromJson(Map<String, Object?> json) {
    return DebitCardListDTO.fromJson(json);
  }
}

/// @nodoc
const $DebitCardListDTO = _$DebitCardListDTOTearOff();

/// @nodoc
mixin _$DebitCardListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<DebitCardDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DebitCardListDTOCopyWith<DebitCardListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebitCardListDTOCopyWith<$Res> {
  factory $DebitCardListDTOCopyWith(
          DebitCardListDTO value, $Res Function(DebitCardListDTO) then) =
      _$DebitCardListDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, List<DebitCardDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DebitCardListDTOCopyWithImpl<$Res>
    implements $DebitCardListDTOCopyWith<$Res> {
  _$DebitCardListDTOCopyWithImpl(this._value, this._then);

  final DebitCardListDTO _value;
  // ignore: unused_field
  final $Res Function(DebitCardListDTO) _then;

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
              as List<DebitCardDTOData>,
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
abstract class _$DebitCardListDTOCopyWith<$Res>
    implements $DebitCardListDTOCopyWith<$Res> {
  factory _$DebitCardListDTOCopyWith(
          _DebitCardListDTO value, $Res Function(_DebitCardListDTO) then) =
      __$DebitCardListDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, List<DebitCardDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$DebitCardListDTOCopyWithImpl<$Res>
    extends _$DebitCardListDTOCopyWithImpl<$Res>
    implements _$DebitCardListDTOCopyWith<$Res> {
  __$DebitCardListDTOCopyWithImpl(
      _DebitCardListDTO _value, $Res Function(_DebitCardListDTO) _then)
      : super(_value, (v) => _then(v as _DebitCardListDTO));

  @override
  _DebitCardListDTO get _value => super._value as _DebitCardListDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_DebitCardListDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DebitCardDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DebitCardListDTO extends _DebitCardListDTO {
  const _$_DebitCardListDTO(
      {@JsonKey(name: '_meta') this.meta, this.data = const []})
      : super._();

  factory _$_DebitCardListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DebitCardListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @JsonKey()
  @override
  final List<DebitCardDTOData> data;

  @override
  String toString() {
    return 'DebitCardListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DebitCardListDTO &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$DebitCardListDTOCopyWith<_DebitCardListDTO> get copyWith =>
      __$DebitCardListDTOCopyWithImpl<_DebitCardListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DebitCardListDTOToJson(this);
  }
}

abstract class _DebitCardListDTO extends DebitCardListDTO {
  const factory _DebitCardListDTO(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      List<DebitCardDTOData> data}) = _$_DebitCardListDTO;
  const _DebitCardListDTO._() : super._();

  factory _DebitCardListDTO.fromJson(Map<String, dynamic> json) =
      _$_DebitCardListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  List<DebitCardDTOData> get data;
  @override
  @JsonKey(ignore: true)
  _$DebitCardListDTOCopyWith<_DebitCardListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
