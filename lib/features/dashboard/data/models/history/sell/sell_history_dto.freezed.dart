// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of sell_history_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SellHistoryDTO _$SellHistoryDTOFromJson(Map<String, dynamic> json) {
  return _SellHistoryDTO.fromJson(json);
}

/// @nodoc
class _$SellHistoryDTOTearOff {
  const _$SellHistoryDTOTearOff();

  _SellHistoryDTO call(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      required _SellHistoryDTOData data}) {
    return _SellHistoryDTO(
      meta: meta,
      data: data,
    );
  }

  SellHistoryDTO fromJson(Map<String, Object?> json) {
    return SellHistoryDTO.fromJson(json);
  }
}

/// @nodoc
const $SellHistoryDTO = _$SellHistoryDTOTearOff();

/// @nodoc
mixin _$SellHistoryDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  _SellHistoryDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SellHistoryDTOCopyWith<SellHistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellHistoryDTOCopyWith<$Res> {
  factory $SellHistoryDTOCopyWith(
          SellHistoryDTO value, $Res Function(SellHistoryDTO) then) =
      _$SellHistoryDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, _SellHistoryDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  _$SellHistoryDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$SellHistoryDTOCopyWithImpl<$Res>
    implements $SellHistoryDTOCopyWith<$Res> {
  _$SellHistoryDTOCopyWithImpl(this._value, this._then);

  final SellHistoryDTO _value;
  // ignore: unused_field
  final $Res Function(SellHistoryDTO) _then;

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
              as _SellHistoryDTOData,
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
  _$SellHistoryDTODataCopyWith<$Res> get data {
    return _$SellHistoryDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$SellHistoryDTOCopyWith<$Res>
    implements $SellHistoryDTOCopyWith<$Res> {
  factory _$SellHistoryDTOCopyWith(
          _SellHistoryDTO value, $Res Function(_SellHistoryDTO) then) =
      __$SellHistoryDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, _SellHistoryDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  _$SellHistoryDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$SellHistoryDTOCopyWithImpl<$Res>
    extends _$SellHistoryDTOCopyWithImpl<$Res>
    implements _$SellHistoryDTOCopyWith<$Res> {
  __$SellHistoryDTOCopyWithImpl(
      _SellHistoryDTO _value, $Res Function(_SellHistoryDTO) _then)
      : super(_value, (v) => _then(v as _SellHistoryDTO));

  @override
  _SellHistoryDTO get _value => super._value as _SellHistoryDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_SellHistoryDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as _SellHistoryDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SellHistoryDTO extends _SellHistoryDTO {
  const _$_SellHistoryDTO(
      {@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_SellHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SellHistoryDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final _SellHistoryDTOData data;

  @override
  String toString() {
    return 'SellHistoryDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SellHistoryDTO &&
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
  _$SellHistoryDTOCopyWith<_SellHistoryDTO> get copyWith =>
      __$SellHistoryDTOCopyWithImpl<_SellHistoryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SellHistoryDTOToJson(this);
  }
}

abstract class _SellHistoryDTO extends SellHistoryDTO {
  const factory _SellHistoryDTO(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      required _SellHistoryDTOData data}) = _$_SellHistoryDTO;
  const _SellHistoryDTO._() : super._();

  factory _SellHistoryDTO.fromJson(Map<String, dynamic> json) =
      _$_SellHistoryDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  _SellHistoryDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$SellHistoryDTOCopyWith<_SellHistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

_SellHistoryDTOData _$_SellHistoryDTODataFromJson(Map<String, dynamic> json) {
  return __SellHistoryDTOData.fromJson(json);
}

/// @nodoc
class _$_SellHistoryDTODataTearOff {
  const _$_SellHistoryDTODataTearOff();

  __SellHistoryDTOData call(
      {@IntegerSerializer() double? totalProducts,
      @IntegerSerializer() double? totalSold,
      @IntegerSerializer() double? revenue,
      List<DealDTOData> deals = const []}) {
    return __SellHistoryDTOData(
      totalProducts: totalProducts,
      totalSold: totalSold,
      revenue: revenue,
      deals: deals,
    );
  }

  _SellHistoryDTOData fromJson(Map<String, Object?> json) {
    return _SellHistoryDTOData.fromJson(json);
  }
}

/// @nodoc
const _$SellHistoryDTOData = _$_SellHistoryDTODataTearOff();

/// @nodoc
mixin _$_SellHistoryDTOData {
  @IntegerSerializer()
  double? get totalProducts => throw _privateConstructorUsedError;
  @IntegerSerializer()
  double? get totalSold => throw _privateConstructorUsedError;
  @IntegerSerializer()
  double? get revenue => throw _privateConstructorUsedError;
  List<DealDTOData> get deals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SellHistoryDTODataCopyWith<_SellHistoryDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SellHistoryDTODataCopyWith<$Res> {
  factory _$SellHistoryDTODataCopyWith(
          _SellHistoryDTOData value, $Res Function(_SellHistoryDTOData) then) =
      __$SellHistoryDTODataCopyWithImpl<$Res>;
  $Res call(
      {@IntegerSerializer() double? totalProducts,
      @IntegerSerializer() double? totalSold,
      @IntegerSerializer() double? revenue,
      List<DealDTOData> deals});
}

/// @nodoc
class __$SellHistoryDTODataCopyWithImpl<$Res>
    implements _$SellHistoryDTODataCopyWith<$Res> {
  __$SellHistoryDTODataCopyWithImpl(this._value, this._then);

  final _SellHistoryDTOData _value;
  // ignore: unused_field
  final $Res Function(_SellHistoryDTOData) _then;

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
              as double?,
      totalSold: totalSold == freezed
          ? _value.totalSold
          : totalSold // ignore: cast_nullable_to_non_nullable
              as double?,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      deals: deals == freezed
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<DealDTOData>,
    ));
  }
}

/// @nodoc
abstract class _$_SellHistoryDTODataCopyWith<$Res>
    implements _$SellHistoryDTODataCopyWith<$Res> {
  factory _$_SellHistoryDTODataCopyWith(__SellHistoryDTOData value,
          $Res Function(__SellHistoryDTOData) then) =
      __$_SellHistoryDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@IntegerSerializer() double? totalProducts,
      @IntegerSerializer() double? totalSold,
      @IntegerSerializer() double? revenue,
      List<DealDTOData> deals});
}

/// @nodoc
class __$_SellHistoryDTODataCopyWithImpl<$Res>
    extends __$SellHistoryDTODataCopyWithImpl<$Res>
    implements _$_SellHistoryDTODataCopyWith<$Res> {
  __$_SellHistoryDTODataCopyWithImpl(
      __SellHistoryDTOData _value, $Res Function(__SellHistoryDTOData) _then)
      : super(_value, (v) => _then(v as __SellHistoryDTOData));

  @override
  __SellHistoryDTOData get _value => super._value as __SellHistoryDTOData;

  @override
  $Res call({
    Object? totalProducts = freezed,
    Object? totalSold = freezed,
    Object? revenue = freezed,
    Object? deals = freezed,
  }) {
    return _then(__SellHistoryDTOData(
      totalProducts: totalProducts == freezed
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSold: totalSold == freezed
          ? _value.totalSold
          : totalSold // ignore: cast_nullable_to_non_nullable
              as double?,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      deals: deals == freezed
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<DealDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__SellHistoryDTOData extends __SellHistoryDTOData {
  const _$__SellHistoryDTOData(
      {@IntegerSerializer() this.totalProducts,
      @IntegerSerializer() this.totalSold,
      @IntegerSerializer() this.revenue,
      this.deals = const []})
      : super._();

  factory _$__SellHistoryDTOData.fromJson(Map<String, dynamic> json) =>
      _$$__SellHistoryDTODataFromJson(json);

  @override
  @IntegerSerializer()
  final double? totalProducts;
  @override
  @IntegerSerializer()
  final double? totalSold;
  @override
  @IntegerSerializer()
  final double? revenue;
  @JsonKey()
  @override
  final List<DealDTOData> deals;

  @override
  String toString() {
    return '_SellHistoryDTOData(totalProducts: $totalProducts, totalSold: $totalSold, revenue: $revenue, deals: $deals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __SellHistoryDTOData &&
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
  _$_SellHistoryDTODataCopyWith<__SellHistoryDTOData> get copyWith =>
      __$_SellHistoryDTODataCopyWithImpl<__SellHistoryDTOData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__SellHistoryDTODataToJson(this);
  }
}

abstract class __SellHistoryDTOData extends _SellHistoryDTOData {
  const factory __SellHistoryDTOData(
      {@IntegerSerializer() double? totalProducts,
      @IntegerSerializer() double? totalSold,
      @IntegerSerializer() double? revenue,
      List<DealDTOData> deals}) = _$__SellHistoryDTOData;
  const __SellHistoryDTOData._() : super._();

  factory __SellHistoryDTOData.fromJson(Map<String, dynamic> json) =
      _$__SellHistoryDTOData.fromJson;

  @override
  @IntegerSerializer()
  double? get totalProducts;
  @override
  @IntegerSerializer()
  double? get totalSold;
  @override
  @IntegerSerializer()
  double? get revenue;
  @override
  List<DealDTOData> get deals;
  @override
  @JsonKey(ignore: true)
  _$_SellHistoryDTODataCopyWith<__SellHistoryDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}
