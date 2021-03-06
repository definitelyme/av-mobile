// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of bid_history_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BidHistoryDTO _$BidHistoryDTOFromJson(Map<String, dynamic> json) {
  return _BidHistoryDTO.fromJson(json);
}

/// @nodoc
class _$BidHistoryDTOTearOff {
  const _$BidHistoryDTOTearOff();

  _BidHistoryDTO call(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      required _BidHistoryDTOData data}) {
    return _BidHistoryDTO(
      meta: meta,
      data: data,
    );
  }

  BidHistoryDTO fromJson(Map<String, Object?> json) {
    return BidHistoryDTO.fromJson(json);
  }
}

/// @nodoc
const $BidHistoryDTO = _$BidHistoryDTOTearOff();

/// @nodoc
mixin _$BidHistoryDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  _BidHistoryDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BidHistoryDTOCopyWith<BidHistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidHistoryDTOCopyWith<$Res> {
  factory $BidHistoryDTOCopyWith(
          BidHistoryDTO value, $Res Function(BidHistoryDTO) then) =
      _$BidHistoryDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, _BidHistoryDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  _$BidHistoryDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$BidHistoryDTOCopyWithImpl<$Res>
    implements $BidHistoryDTOCopyWith<$Res> {
  _$BidHistoryDTOCopyWithImpl(this._value, this._then);

  final BidHistoryDTO _value;
  // ignore: unused_field
  final $Res Function(BidHistoryDTO) _then;

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
              as _BidHistoryDTOData,
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
  _$BidHistoryDTODataCopyWith<$Res> get data {
    return _$BidHistoryDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$BidHistoryDTOCopyWith<$Res>
    implements $BidHistoryDTOCopyWith<$Res> {
  factory _$BidHistoryDTOCopyWith(
          _BidHistoryDTO value, $Res Function(_BidHistoryDTO) then) =
      __$BidHistoryDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, _BidHistoryDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  _$BidHistoryDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$BidHistoryDTOCopyWithImpl<$Res>
    extends _$BidHistoryDTOCopyWithImpl<$Res>
    implements _$BidHistoryDTOCopyWith<$Res> {
  __$BidHistoryDTOCopyWithImpl(
      _BidHistoryDTO _value, $Res Function(_BidHistoryDTO) _then)
      : super(_value, (v) => _then(v as _BidHistoryDTO));

  @override
  _BidHistoryDTO get _value => super._value as _BidHistoryDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_BidHistoryDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as _BidHistoryDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BidHistoryDTO extends _BidHistoryDTO {
  const _$_BidHistoryDTO(
      {@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_BidHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BidHistoryDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final _BidHistoryDTOData data;

  @override
  String toString() {
    return 'BidHistoryDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BidHistoryDTO &&
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
  _$BidHistoryDTOCopyWith<_BidHistoryDTO> get copyWith =>
      __$BidHistoryDTOCopyWithImpl<_BidHistoryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BidHistoryDTOToJson(this);
  }
}

abstract class _BidHistoryDTO extends BidHistoryDTO {
  const factory _BidHistoryDTO(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      required _BidHistoryDTOData data}) = _$_BidHistoryDTO;
  const _BidHistoryDTO._() : super._();

  factory _BidHistoryDTO.fromJson(Map<String, dynamic> json) =
      _$_BidHistoryDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  _BidHistoryDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$BidHistoryDTOCopyWith<_BidHistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

_BidHistoryDTOData _$_BidHistoryDTODataFromJson(Map<String, dynamic> json) {
  return __BidHistoryDTOData.fromJson(json);
}

/// @nodoc
class _$_BidHistoryDTODataTearOff {
  const _$_BidHistoryDTODataTearOff();

  __BidHistoryDTOData call(
      {@IntegerSerializer() double? totalAuctionsParticipated,
      @IntegerSerializer() double? totalWinningBid,
      @IntegerSerializer() double? totalAmountSpent,
      List<DealDTOData> dealHistory = const []}) {
    return __BidHistoryDTOData(
      totalAuctionsParticipated: totalAuctionsParticipated,
      totalWinningBid: totalWinningBid,
      totalAmountSpent: totalAmountSpent,
      dealHistory: dealHistory,
    );
  }

  _BidHistoryDTOData fromJson(Map<String, Object?> json) {
    return _BidHistoryDTOData.fromJson(json);
  }
}

/// @nodoc
const _$BidHistoryDTOData = _$_BidHistoryDTODataTearOff();

/// @nodoc
mixin _$_BidHistoryDTOData {
  @IntegerSerializer()
  double? get totalAuctionsParticipated => throw _privateConstructorUsedError;
  @IntegerSerializer()
  double? get totalWinningBid => throw _privateConstructorUsedError;
  @IntegerSerializer()
  double? get totalAmountSpent => throw _privateConstructorUsedError;
  List<DealDTOData> get dealHistory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BidHistoryDTODataCopyWith<_BidHistoryDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BidHistoryDTODataCopyWith<$Res> {
  factory _$BidHistoryDTODataCopyWith(
          _BidHistoryDTOData value, $Res Function(_BidHistoryDTOData) then) =
      __$BidHistoryDTODataCopyWithImpl<$Res>;
  $Res call(
      {@IntegerSerializer() double? totalAuctionsParticipated,
      @IntegerSerializer() double? totalWinningBid,
      @IntegerSerializer() double? totalAmountSpent,
      List<DealDTOData> dealHistory});
}

/// @nodoc
class __$BidHistoryDTODataCopyWithImpl<$Res>
    implements _$BidHistoryDTODataCopyWith<$Res> {
  __$BidHistoryDTODataCopyWithImpl(this._value, this._then);

  final _BidHistoryDTOData _value;
  // ignore: unused_field
  final $Res Function(_BidHistoryDTOData) _then;

  @override
  $Res call({
    Object? totalAuctionsParticipated = freezed,
    Object? totalWinningBid = freezed,
    Object? totalAmountSpent = freezed,
    Object? dealHistory = freezed,
  }) {
    return _then(_value.copyWith(
      totalAuctionsParticipated: totalAuctionsParticipated == freezed
          ? _value.totalAuctionsParticipated
          : totalAuctionsParticipated // ignore: cast_nullable_to_non_nullable
              as double?,
      totalWinningBid: totalWinningBid == freezed
          ? _value.totalWinningBid
          : totalWinningBid // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountSpent: totalAmountSpent == freezed
          ? _value.totalAmountSpent
          : totalAmountSpent // ignore: cast_nullable_to_non_nullable
              as double?,
      dealHistory: dealHistory == freezed
          ? _value.dealHistory
          : dealHistory // ignore: cast_nullable_to_non_nullable
              as List<DealDTOData>,
    ));
  }
}

/// @nodoc
abstract class _$_BidHistoryDTODataCopyWith<$Res>
    implements _$BidHistoryDTODataCopyWith<$Res> {
  factory _$_BidHistoryDTODataCopyWith(
          __BidHistoryDTOData value, $Res Function(__BidHistoryDTOData) then) =
      __$_BidHistoryDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@IntegerSerializer() double? totalAuctionsParticipated,
      @IntegerSerializer() double? totalWinningBid,
      @IntegerSerializer() double? totalAmountSpent,
      List<DealDTOData> dealHistory});
}

/// @nodoc
class __$_BidHistoryDTODataCopyWithImpl<$Res>
    extends __$BidHistoryDTODataCopyWithImpl<$Res>
    implements _$_BidHistoryDTODataCopyWith<$Res> {
  __$_BidHistoryDTODataCopyWithImpl(
      __BidHistoryDTOData _value, $Res Function(__BidHistoryDTOData) _then)
      : super(_value, (v) => _then(v as __BidHistoryDTOData));

  @override
  __BidHistoryDTOData get _value => super._value as __BidHistoryDTOData;

  @override
  $Res call({
    Object? totalAuctionsParticipated = freezed,
    Object? totalWinningBid = freezed,
    Object? totalAmountSpent = freezed,
    Object? dealHistory = freezed,
  }) {
    return _then(__BidHistoryDTOData(
      totalAuctionsParticipated: totalAuctionsParticipated == freezed
          ? _value.totalAuctionsParticipated
          : totalAuctionsParticipated // ignore: cast_nullable_to_non_nullable
              as double?,
      totalWinningBid: totalWinningBid == freezed
          ? _value.totalWinningBid
          : totalWinningBid // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountSpent: totalAmountSpent == freezed
          ? _value.totalAmountSpent
          : totalAmountSpent // ignore: cast_nullable_to_non_nullable
              as double?,
      dealHistory: dealHistory == freezed
          ? _value.dealHistory
          : dealHistory // ignore: cast_nullable_to_non_nullable
              as List<DealDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__BidHistoryDTOData extends __BidHistoryDTOData {
  const _$__BidHistoryDTOData(
      {@IntegerSerializer() this.totalAuctionsParticipated,
      @IntegerSerializer() this.totalWinningBid,
      @IntegerSerializer() this.totalAmountSpent,
      this.dealHistory = const []})
      : super._();

  factory _$__BidHistoryDTOData.fromJson(Map<String, dynamic> json) =>
      _$$__BidHistoryDTODataFromJson(json);

  @override
  @IntegerSerializer()
  final double? totalAuctionsParticipated;
  @override
  @IntegerSerializer()
  final double? totalWinningBid;
  @override
  @IntegerSerializer()
  final double? totalAmountSpent;
  @JsonKey()
  @override
  final List<DealDTOData> dealHistory;

  @override
  String toString() {
    return '_BidHistoryDTOData(totalAuctionsParticipated: $totalAuctionsParticipated, totalWinningBid: $totalWinningBid, totalAmountSpent: $totalAmountSpent, dealHistory: $dealHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __BidHistoryDTOData &&
            const DeepCollectionEquality().equals(
                other.totalAuctionsParticipated, totalAuctionsParticipated) &&
            const DeepCollectionEquality()
                .equals(other.totalWinningBid, totalWinningBid) &&
            const DeepCollectionEquality()
                .equals(other.totalAmountSpent, totalAmountSpent) &&
            const DeepCollectionEquality()
                .equals(other.dealHistory, dealHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalAuctionsParticipated),
      const DeepCollectionEquality().hash(totalWinningBid),
      const DeepCollectionEquality().hash(totalAmountSpent),
      const DeepCollectionEquality().hash(dealHistory));

  @JsonKey(ignore: true)
  @override
  _$_BidHistoryDTODataCopyWith<__BidHistoryDTOData> get copyWith =>
      __$_BidHistoryDTODataCopyWithImpl<__BidHistoryDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__BidHistoryDTODataToJson(this);
  }
}

abstract class __BidHistoryDTOData extends _BidHistoryDTOData {
  const factory __BidHistoryDTOData(
      {@IntegerSerializer() double? totalAuctionsParticipated,
      @IntegerSerializer() double? totalWinningBid,
      @IntegerSerializer() double? totalAmountSpent,
      List<DealDTOData> dealHistory}) = _$__BidHistoryDTOData;
  const __BidHistoryDTOData._() : super._();

  factory __BidHistoryDTOData.fromJson(Map<String, dynamic> json) =
      _$__BidHistoryDTOData.fromJson;

  @override
  @IntegerSerializer()
  double? get totalAuctionsParticipated;
  @override
  @IntegerSerializer()
  double? get totalWinningBid;
  @override
  @IntegerSerializer()
  double? get totalAmountSpent;
  @override
  List<DealDTOData> get dealHistory;
  @override
  @JsonKey(ignore: true)
  _$_BidHistoryDTODataCopyWith<__BidHistoryDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}
