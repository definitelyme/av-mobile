// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of deal_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DealDTO _$DealDTOFromJson(Map<String, dynamic> json) {
  return _DealDTO.fromJson(json);
}

/// @nodoc
class _$DealDTOTearOff {
  const _$DealDTOTearOff();

  _DealDTO call(
      {@JsonKey(name: '_meta') MetaDTO? meta, required DealDTOData data}) {
    return _DealDTO(
      meta: meta,
      data: data,
    );
  }

  DealDTO fromJson(Map<String, Object?> json) {
    return DealDTO.fromJson(json);
  }
}

/// @nodoc
const $DealDTO = _$DealDTOTearOff();

/// @nodoc
mixin _$DealDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  DealDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealDTOCopyWith<DealDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealDTOCopyWith<$Res> {
  factory $DealDTOCopyWith(DealDTO value, $Res Function(DealDTO) then) =
      _$DealDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, DealDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  $DealDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$DealDTOCopyWithImpl<$Res> implements $DealDTOCopyWith<$Res> {
  _$DealDTOCopyWithImpl(this._value, this._then);

  final DealDTO _value;
  // ignore: unused_field
  final $Res Function(DealDTO) _then;

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
              as DealDTOData,
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
  $DealDTODataCopyWith<$Res> get data {
    return $DealDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$DealDTOCopyWith<$Res> implements $DealDTOCopyWith<$Res> {
  factory _$DealDTOCopyWith(_DealDTO value, $Res Function(_DealDTO) then) =
      __$DealDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, DealDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  $DealDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$DealDTOCopyWithImpl<$Res> extends _$DealDTOCopyWithImpl<$Res>
    implements _$DealDTOCopyWith<$Res> {
  __$DealDTOCopyWithImpl(_DealDTO _value, $Res Function(_DealDTO) _then)
      : super(_value, (v) => _then(v as _DealDTO));

  @override
  _DealDTO get _value => super._value as _DealDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_DealDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DealDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DealDTO extends _DealDTO {
  const _$_DealDTO({@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_DealDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DealDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final DealDTOData data;

  @override
  String toString() {
    return 'DealDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealDTO &&
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
  _$DealDTOCopyWith<_DealDTO> get copyWith =>
      __$DealDTOCopyWithImpl<_DealDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealDTOToJson(this);
  }
}

abstract class _DealDTO extends DealDTO {
  const factory _DealDTO(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      required DealDTOData data}) = _$_DealDTO;
  const _DealDTO._() : super._();

  factory _DealDTO.fromJson(Map<String, dynamic> json) = _$_DealDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  DealDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$DealDTOCopyWith<_DealDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

DealDTOData _$DealDTODataFromJson(Map<String, dynamic> json) {
  return _DealDTOData.fromJson(json);
}

/// @nodoc
class _$DealDTODataTearOff {
  const _$DealDTODataTearOff();

  _DealDTOData call(
      {@JsonKey(name: '_id') String? id,
      @DoubleSerializer() double? basePrice,
      @BooleanSerializer() bool? isPrivate,
      @JsonKey(name: 'status') String? status,
      @BooleanSerializer() bool? sponsored,
      @JsonKey(name: 'plan') String? dealPlan,
      @DoubleSerializer() double? admittanceFee,
      @IntegerSerializer() int? clicks,
      @IntegerSerializer() int? dealPriority,
      String? bidStatus,
      @BooleanSerializer() bool? isClosing,
      @BooleanSerializer() bool? active,
      @DoubleSerializer() double? lastPriceOffered,
      String? offerType,
      @TimestampConverter() DateTime? startDate,
      @TimestampConverter() DateTime? endDate,
      String? type,
      UserDTO? user,
      UserDTO? vendor,
      ProductDTOData? product,
      CategoryDTOData? category,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt}) {
    return _DealDTOData(
      id: id,
      basePrice: basePrice,
      isPrivate: isPrivate,
      status: status,
      sponsored: sponsored,
      dealPlan: dealPlan,
      admittanceFee: admittanceFee,
      clicks: clicks,
      dealPriority: dealPriority,
      bidStatus: bidStatus,
      isClosing: isClosing,
      active: active,
      lastPriceOffered: lastPriceOffered,
      offerType: offerType,
      startDate: startDate,
      endDate: endDate,
      type: type,
      user: user,
      vendor: vendor,
      product: product,
      category: category,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  DealDTOData fromJson(Map<String, Object?> json) {
    return DealDTOData.fromJson(json);
  }
}

/// @nodoc
const $DealDTOData = _$DealDTODataTearOff();

/// @nodoc
mixin _$DealDTOData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get basePrice => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get isPrivate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get sponsored => throw _privateConstructorUsedError;
  @JsonKey(name: 'plan')
  String? get dealPlan => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get admittanceFee => throw _privateConstructorUsedError;
  @IntegerSerializer()
  int? get clicks => throw _privateConstructorUsedError;
  @IntegerSerializer()
  int? get dealPriority => throw _privateConstructorUsedError;
  String? get bidStatus => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get isClosing => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get lastPriceOffered => throw _privateConstructorUsedError;
  String? get offerType => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  UserDTO? get user => throw _privateConstructorUsedError;
  UserDTO? get vendor => throw _privateConstructorUsedError;
  ProductDTOData? get product => throw _privateConstructorUsedError;
  CategoryDTOData? get category => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealDTODataCopyWith<DealDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealDTODataCopyWith<$Res> {
  factory $DealDTODataCopyWith(
          DealDTOData value, $Res Function(DealDTOData) then) =
      _$DealDTODataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @DoubleSerializer() double? basePrice,
      @BooleanSerializer() bool? isPrivate,
      @JsonKey(name: 'status') String? status,
      @BooleanSerializer() bool? sponsored,
      @JsonKey(name: 'plan') String? dealPlan,
      @DoubleSerializer() double? admittanceFee,
      @IntegerSerializer() int? clicks,
      @IntegerSerializer() int? dealPriority,
      String? bidStatus,
      @BooleanSerializer() bool? isClosing,
      @BooleanSerializer() bool? active,
      @DoubleSerializer() double? lastPriceOffered,
      String? offerType,
      @TimestampConverter() DateTime? startDate,
      @TimestampConverter() DateTime? endDate,
      String? type,
      UserDTO? user,
      UserDTO? vendor,
      ProductDTOData? product,
      CategoryDTOData? category,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  $UserDTOCopyWith<$Res>? get user;
  $UserDTOCopyWith<$Res>? get vendor;
  $ProductDTODataCopyWith<$Res>? get product;
  $CategoryDTODataCopyWith<$Res>? get category;
}

/// @nodoc
class _$DealDTODataCopyWithImpl<$Res> implements $DealDTODataCopyWith<$Res> {
  _$DealDTODataCopyWithImpl(this._value, this._then);

  final DealDTOData _value;
  // ignore: unused_field
  final $Res Function(DealDTOData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? basePrice = freezed,
    Object? isPrivate = freezed,
    Object? status = freezed,
    Object? sponsored = freezed,
    Object? dealPlan = freezed,
    Object? admittanceFee = freezed,
    Object? clicks = freezed,
    Object? dealPriority = freezed,
    Object? bidStatus = freezed,
    Object? isClosing = freezed,
    Object? active = freezed,
    Object? lastPriceOffered = freezed,
    Object? offerType = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? type = freezed,
    Object? user = freezed,
    Object? vendor = freezed,
    Object? product = freezed,
    Object? category = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: basePrice == freezed
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      sponsored: sponsored == freezed
          ? _value.sponsored
          : sponsored // ignore: cast_nullable_to_non_nullable
              as bool?,
      dealPlan: dealPlan == freezed
          ? _value.dealPlan
          : dealPlan // ignore: cast_nullable_to_non_nullable
              as String?,
      admittanceFee: admittanceFee == freezed
          ? _value.admittanceFee
          : admittanceFee // ignore: cast_nullable_to_non_nullable
              as double?,
      clicks: clicks == freezed
          ? _value.clicks
          : clicks // ignore: cast_nullable_to_non_nullable
              as int?,
      dealPriority: dealPriority == freezed
          ? _value.dealPriority
          : dealPriority // ignore: cast_nullable_to_non_nullable
              as int?,
      bidStatus: bidStatus == freezed
          ? _value.bidStatus
          : bidStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isClosing: isClosing == freezed
          ? _value.isClosing
          : isClosing // ignore: cast_nullable_to_non_nullable
              as bool?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastPriceOffered: lastPriceOffered == freezed
          ? _value.lastPriceOffered
          : lastPriceOffered // ignore: cast_nullable_to_non_nullable
              as double?,
      offerType: offerType == freezed
          ? _value.offerType
          : offerType // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDTOData?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDTOData?,
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
  $UserDTOCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $UserDTOCopyWith<$Res>? get vendor {
    if (_value.vendor == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.vendor!, (value) {
      return _then(_value.copyWith(vendor: value));
    });
  }

  @override
  $ProductDTODataCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductDTODataCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }

  @override
  $CategoryDTODataCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryDTODataCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$DealDTODataCopyWith<$Res>
    implements $DealDTODataCopyWith<$Res> {
  factory _$DealDTODataCopyWith(
          _DealDTOData value, $Res Function(_DealDTOData) then) =
      __$DealDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @DoubleSerializer() double? basePrice,
      @BooleanSerializer() bool? isPrivate,
      @JsonKey(name: 'status') String? status,
      @BooleanSerializer() bool? sponsored,
      @JsonKey(name: 'plan') String? dealPlan,
      @DoubleSerializer() double? admittanceFee,
      @IntegerSerializer() int? clicks,
      @IntegerSerializer() int? dealPriority,
      String? bidStatus,
      @BooleanSerializer() bool? isClosing,
      @BooleanSerializer() bool? active,
      @DoubleSerializer() double? lastPriceOffered,
      String? offerType,
      @TimestampConverter() DateTime? startDate,
      @TimestampConverter() DateTime? endDate,
      String? type,
      UserDTO? user,
      UserDTO? vendor,
      ProductDTOData? product,
      CategoryDTOData? category,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  @override
  $UserDTOCopyWith<$Res>? get user;
  @override
  $UserDTOCopyWith<$Res>? get vendor;
  @override
  $ProductDTODataCopyWith<$Res>? get product;
  @override
  $CategoryDTODataCopyWith<$Res>? get category;
}

/// @nodoc
class __$DealDTODataCopyWithImpl<$Res> extends _$DealDTODataCopyWithImpl<$Res>
    implements _$DealDTODataCopyWith<$Res> {
  __$DealDTODataCopyWithImpl(
      _DealDTOData _value, $Res Function(_DealDTOData) _then)
      : super(_value, (v) => _then(v as _DealDTOData));

  @override
  _DealDTOData get _value => super._value as _DealDTOData;

  @override
  $Res call({
    Object? id = freezed,
    Object? basePrice = freezed,
    Object? isPrivate = freezed,
    Object? status = freezed,
    Object? sponsored = freezed,
    Object? dealPlan = freezed,
    Object? admittanceFee = freezed,
    Object? clicks = freezed,
    Object? dealPriority = freezed,
    Object? bidStatus = freezed,
    Object? isClosing = freezed,
    Object? active = freezed,
    Object? lastPriceOffered = freezed,
    Object? offerType = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? type = freezed,
    Object? user = freezed,
    Object? vendor = freezed,
    Object? product = freezed,
    Object? category = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_DealDTOData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: basePrice == freezed
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      sponsored: sponsored == freezed
          ? _value.sponsored
          : sponsored // ignore: cast_nullable_to_non_nullable
              as bool?,
      dealPlan: dealPlan == freezed
          ? _value.dealPlan
          : dealPlan // ignore: cast_nullable_to_non_nullable
              as String?,
      admittanceFee: admittanceFee == freezed
          ? _value.admittanceFee
          : admittanceFee // ignore: cast_nullable_to_non_nullable
              as double?,
      clicks: clicks == freezed
          ? _value.clicks
          : clicks // ignore: cast_nullable_to_non_nullable
              as int?,
      dealPriority: dealPriority == freezed
          ? _value.dealPriority
          : dealPriority // ignore: cast_nullable_to_non_nullable
              as int?,
      bidStatus: bidStatus == freezed
          ? _value.bidStatus
          : bidStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isClosing: isClosing == freezed
          ? _value.isClosing
          : isClosing // ignore: cast_nullable_to_non_nullable
              as bool?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastPriceOffered: lastPriceOffered == freezed
          ? _value.lastPriceOffered
          : lastPriceOffered // ignore: cast_nullable_to_non_nullable
              as double?,
      offerType: offerType == freezed
          ? _value.offerType
          : offerType // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDTOData?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDTOData?,
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
class _$_DealDTOData extends _DealDTOData {
  const _$_DealDTOData(
      {@JsonKey(name: '_id') this.id,
      @DoubleSerializer() this.basePrice,
      @BooleanSerializer() this.isPrivate,
      @JsonKey(name: 'status') this.status,
      @BooleanSerializer() this.sponsored,
      @JsonKey(name: 'plan') this.dealPlan,
      @DoubleSerializer() this.admittanceFee,
      @IntegerSerializer() this.clicks,
      @IntegerSerializer() this.dealPriority,
      this.bidStatus,
      @BooleanSerializer() this.isClosing,
      @BooleanSerializer() this.active,
      @DoubleSerializer() this.lastPriceOffered,
      this.offerType,
      @TimestampConverter() this.startDate,
      @TimestampConverter() this.endDate,
      this.type,
      this.user,
      this.vendor,
      this.product,
      this.category,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : super._();

  factory _$_DealDTOData.fromJson(Map<String, dynamic> json) =>
      _$$_DealDTODataFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @DoubleSerializer()
  final double? basePrice;
  @override
  @BooleanSerializer()
  final bool? isPrivate;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @BooleanSerializer()
  final bool? sponsored;
  @override
  @JsonKey(name: 'plan')
  final String? dealPlan;
  @override
  @DoubleSerializer()
  final double? admittanceFee;
  @override
  @IntegerSerializer()
  final int? clicks;
  @override
  @IntegerSerializer()
  final int? dealPriority;
  @override
  final String? bidStatus;
  @override
  @BooleanSerializer()
  final bool? isClosing;
  @override
  @BooleanSerializer()
  final bool? active;
  @override
  @DoubleSerializer()
  final double? lastPriceOffered;
  @override
  final String? offerType;
  @override
  @TimestampConverter()
  final DateTime? startDate;
  @override
  @TimestampConverter()
  final DateTime? endDate;
  @override
  final String? type;
  @override
  final UserDTO? user;
  @override
  final UserDTO? vendor;
  @override
  final ProductDTOData? product;
  @override
  final CategoryDTOData? category;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DealDTOData(id: $id, basePrice: $basePrice, isPrivate: $isPrivate, status: $status, sponsored: $sponsored, dealPlan: $dealPlan, admittanceFee: $admittanceFee, clicks: $clicks, dealPriority: $dealPriority, bidStatus: $bidStatus, isClosing: $isClosing, active: $active, lastPriceOffered: $lastPriceOffered, offerType: $offerType, startDate: $startDate, endDate: $endDate, type: $type, user: $user, vendor: $vendor, product: $product, category: $category, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealDTOData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.basePrice, basePrice) &&
            const DeepCollectionEquality().equals(other.isPrivate, isPrivate) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.sponsored, sponsored) &&
            const DeepCollectionEquality().equals(other.dealPlan, dealPlan) &&
            const DeepCollectionEquality()
                .equals(other.admittanceFee, admittanceFee) &&
            const DeepCollectionEquality().equals(other.clicks, clicks) &&
            const DeepCollectionEquality()
                .equals(other.dealPriority, dealPriority) &&
            const DeepCollectionEquality().equals(other.bidStatus, bidStatus) &&
            const DeepCollectionEquality().equals(other.isClosing, isClosing) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality()
                .equals(other.lastPriceOffered, lastPriceOffered) &&
            const DeepCollectionEquality().equals(other.offerType, offerType) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.vendor, vendor) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(basePrice),
        const DeepCollectionEquality().hash(isPrivate),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(sponsored),
        const DeepCollectionEquality().hash(dealPlan),
        const DeepCollectionEquality().hash(admittanceFee),
        const DeepCollectionEquality().hash(clicks),
        const DeepCollectionEquality().hash(dealPriority),
        const DeepCollectionEquality().hash(bidStatus),
        const DeepCollectionEquality().hash(isClosing),
        const DeepCollectionEquality().hash(active),
        const DeepCollectionEquality().hash(lastPriceOffered),
        const DeepCollectionEquality().hash(offerType),
        const DeepCollectionEquality().hash(startDate),
        const DeepCollectionEquality().hash(endDate),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(user),
        const DeepCollectionEquality().hash(vendor),
        const DeepCollectionEquality().hash(product),
        const DeepCollectionEquality().hash(category),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt)
      ]);

  @JsonKey(ignore: true)
  @override
  _$DealDTODataCopyWith<_DealDTOData> get copyWith =>
      __$DealDTODataCopyWithImpl<_DealDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealDTODataToJson(this);
  }
}

abstract class _DealDTOData extends DealDTOData {
  const factory _DealDTOData(
      {@JsonKey(name: '_id') String? id,
      @DoubleSerializer() double? basePrice,
      @BooleanSerializer() bool? isPrivate,
      @JsonKey(name: 'status') String? status,
      @BooleanSerializer() bool? sponsored,
      @JsonKey(name: 'plan') String? dealPlan,
      @DoubleSerializer() double? admittanceFee,
      @IntegerSerializer() int? clicks,
      @IntegerSerializer() int? dealPriority,
      String? bidStatus,
      @BooleanSerializer() bool? isClosing,
      @BooleanSerializer() bool? active,
      @DoubleSerializer() double? lastPriceOffered,
      String? offerType,
      @TimestampConverter() DateTime? startDate,
      @TimestampConverter() DateTime? endDate,
      String? type,
      UserDTO? user,
      UserDTO? vendor,
      ProductDTOData? product,
      CategoryDTOData? category,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt}) = _$_DealDTOData;
  const _DealDTOData._() : super._();

  factory _DealDTOData.fromJson(Map<String, dynamic> json) =
      _$_DealDTOData.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @DoubleSerializer()
  double? get basePrice;
  @override
  @BooleanSerializer()
  bool? get isPrivate;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @BooleanSerializer()
  bool? get sponsored;
  @override
  @JsonKey(name: 'plan')
  String? get dealPlan;
  @override
  @DoubleSerializer()
  double? get admittanceFee;
  @override
  @IntegerSerializer()
  int? get clicks;
  @override
  @IntegerSerializer()
  int? get dealPriority;
  @override
  String? get bidStatus;
  @override
  @BooleanSerializer()
  bool? get isClosing;
  @override
  @BooleanSerializer()
  bool? get active;
  @override
  @DoubleSerializer()
  double? get lastPriceOffered;
  @override
  String? get offerType;
  @override
  @TimestampConverter()
  DateTime? get startDate;
  @override
  @TimestampConverter()
  DateTime? get endDate;
  @override
  String? get type;
  @override
  UserDTO? get user;
  @override
  UserDTO? get vendor;
  @override
  ProductDTOData? get product;
  @override
  CategoryDTOData? get category;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$DealDTODataCopyWith<_DealDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

DealListDTO _$DealListDTOFromJson(Map<String, dynamic> json) {
  return _DealListDTO.fromJson(json);
}

/// @nodoc
class _$DealListDTOTearOff {
  const _$DealListDTOTearOff();

  _DealListDTO call(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      List<DealDTOData> data = const []}) {
    return _DealListDTO(
      meta: meta,
      data: data,
    );
  }

  DealListDTO fromJson(Map<String, Object?> json) {
    return DealListDTO.fromJson(json);
  }
}

/// @nodoc
const $DealListDTO = _$DealListDTOTearOff();

/// @nodoc
mixin _$DealListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<DealDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealListDTOCopyWith<DealListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealListDTOCopyWith<$Res> {
  factory $DealListDTOCopyWith(
          DealListDTO value, $Res Function(DealListDTO) then) =
      _$DealListDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, List<DealDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DealListDTOCopyWithImpl<$Res> implements $DealListDTOCopyWith<$Res> {
  _$DealListDTOCopyWithImpl(this._value, this._then);

  final DealListDTO _value;
  // ignore: unused_field
  final $Res Function(DealListDTO) _then;

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
              as List<DealDTOData>,
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
abstract class _$DealListDTOCopyWith<$Res>
    implements $DealListDTOCopyWith<$Res> {
  factory _$DealListDTOCopyWith(
          _DealListDTO value, $Res Function(_DealListDTO) then) =
      __$DealListDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, List<DealDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$DealListDTOCopyWithImpl<$Res> extends _$DealListDTOCopyWithImpl<$Res>
    implements _$DealListDTOCopyWith<$Res> {
  __$DealListDTOCopyWithImpl(
      _DealListDTO _value, $Res Function(_DealListDTO) _then)
      : super(_value, (v) => _then(v as _DealListDTO));

  @override
  _DealListDTO get _value => super._value as _DealListDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_DealListDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DealDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DealListDTO extends _DealListDTO {
  const _$_DealListDTO(
      {@JsonKey(name: '_meta') this.meta, this.data = const []})
      : super._();

  factory _$_DealListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DealListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @JsonKey()
  @override
  final List<DealDTOData> data;

  @override
  String toString() {
    return 'DealListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealListDTO &&
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
  _$DealListDTOCopyWith<_DealListDTO> get copyWith =>
      __$DealListDTOCopyWithImpl<_DealListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealListDTOToJson(this);
  }
}

abstract class _DealListDTO extends DealListDTO {
  const factory _DealListDTO(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      List<DealDTOData> data}) = _$_DealListDTO;
  const _DealListDTO._() : super._();

  factory _DealListDTO.fromJson(Map<String, dynamic> json) =
      _$_DealListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  List<DealDTOData> get data;
  @override
  @JsonKey(ignore: true)
  _$DealListDTOCopyWith<_DealListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
