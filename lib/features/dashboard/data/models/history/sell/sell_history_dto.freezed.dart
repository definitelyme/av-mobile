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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SellHistoryDTO _$SellHistoryDTOFromJson(Map<String, dynamic> json) {
  return _SellHistoryDTO.fromJson(json);
}

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
abstract class _$$_SellHistoryDTOCopyWith<$Res>
    implements $SellHistoryDTOCopyWith<$Res> {
  factory _$$_SellHistoryDTOCopyWith(
          _$_SellHistoryDTO value, $Res Function(_$_SellHistoryDTO) then) =
      __$$_SellHistoryDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, _SellHistoryDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  _$SellHistoryDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SellHistoryDTOCopyWithImpl<$Res>
    extends _$SellHistoryDTOCopyWithImpl<$Res>
    implements _$$_SellHistoryDTOCopyWith<$Res> {
  __$$_SellHistoryDTOCopyWithImpl(
      _$_SellHistoryDTO _value, $Res Function(_$_SellHistoryDTO) _then)
      : super(_value, (v) => _then(v as _$_SellHistoryDTO));

  @override
  _$_SellHistoryDTO get _value => super._value as _$_SellHistoryDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_SellHistoryDTO(
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
            other is _$_SellHistoryDTO &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_SellHistoryDTOCopyWith<_$_SellHistoryDTO> get copyWith =>
      __$$_SellHistoryDTOCopyWithImpl<_$_SellHistoryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SellHistoryDTOToJson(
      this,
    );
  }
}

abstract class _SellHistoryDTO extends SellHistoryDTO {
  const factory _SellHistoryDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      required final _SellHistoryDTOData data}) = _$_SellHistoryDTO;
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
  _$$_SellHistoryDTOCopyWith<_$_SellHistoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

_SellHistoryDTOData _$_SellHistoryDTODataFromJson(Map<String, dynamic> json) {
  return __SellHistoryDTOData.fromJson(json);
}

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
abstract class _$$__SellHistoryDTODataCopyWith<$Res>
    implements _$SellHistoryDTODataCopyWith<$Res> {
  factory _$$__SellHistoryDTODataCopyWith(_$__SellHistoryDTOData value,
          $Res Function(_$__SellHistoryDTOData) then) =
      __$$__SellHistoryDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@IntegerSerializer() double? totalProducts,
      @IntegerSerializer() double? totalSold,
      @IntegerSerializer() double? revenue,
      List<DealDTOData> deals});
}

/// @nodoc
class __$$__SellHistoryDTODataCopyWithImpl<$Res>
    extends __$SellHistoryDTODataCopyWithImpl<$Res>
    implements _$$__SellHistoryDTODataCopyWith<$Res> {
  __$$__SellHistoryDTODataCopyWithImpl(_$__SellHistoryDTOData _value,
      $Res Function(_$__SellHistoryDTOData) _then)
      : super(_value, (v) => _then(v as _$__SellHistoryDTOData));

  @override
  _$__SellHistoryDTOData get _value => super._value as _$__SellHistoryDTOData;

  @override
  $Res call({
    Object? totalProducts = freezed,
    Object? totalSold = freezed,
    Object? revenue = freezed,
    Object? deals = freezed,
  }) {
    return _then(_$__SellHistoryDTOData(
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
          ? _value._deals
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
      final List<DealDTOData> deals = const []})
      : _deals = deals,
        super._();

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
  final List<DealDTOData> _deals;
  @override
  @JsonKey()
  List<DealDTOData> get deals {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deals);
  }

  @override
  String toString() {
    return '_SellHistoryDTOData(totalProducts: $totalProducts, totalSold: $totalSold, revenue: $revenue, deals: $deals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__SellHistoryDTOData &&
            const DeepCollectionEquality()
                .equals(other.totalProducts, totalProducts) &&
            const DeepCollectionEquality().equals(other.totalSold, totalSold) &&
            const DeepCollectionEquality().equals(other.revenue, revenue) &&
            const DeepCollectionEquality().equals(other._deals, _deals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalProducts),
      const DeepCollectionEquality().hash(totalSold),
      const DeepCollectionEquality().hash(revenue),
      const DeepCollectionEquality().hash(_deals));

  @JsonKey(ignore: true)
  @override
  _$$__SellHistoryDTODataCopyWith<_$__SellHistoryDTOData> get copyWith =>
      __$$__SellHistoryDTODataCopyWithImpl<_$__SellHistoryDTOData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__SellHistoryDTODataToJson(
      this,
    );
  }
}

abstract class __SellHistoryDTOData extends _SellHistoryDTOData {
  const factory __SellHistoryDTOData(
      {@IntegerSerializer() final double? totalProducts,
      @IntegerSerializer() final double? totalSold,
      @IntegerSerializer() final double? revenue,
      final List<DealDTOData> deals}) = _$__SellHistoryDTOData;
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
  _$$__SellHistoryDTODataCopyWith<_$__SellHistoryDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}
