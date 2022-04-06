// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of deal_plan.dataclass.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DealPlanDTO _$DealPlanDTOFromJson(Map<String, dynamic> json) {
  return _DealPlanDTO.fromJson(json);
}

/// @nodoc
class _$DealPlanDTOTearOff {
  const _$DealPlanDTOTearOff();

  _DealPlanDTO call(
      {@JsonKey(name: '_meta') MetaDTO? meta, required DealPlanDTOData data}) {
    return _DealPlanDTO(
      meta: meta,
      data: data,
    );
  }

  DealPlanDTO fromJson(Map<String, Object?> json) {
    return DealPlanDTO.fromJson(json);
  }
}

/// @nodoc
const $DealPlanDTO = _$DealPlanDTOTearOff();

/// @nodoc
mixin _$DealPlanDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  DealPlanDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealPlanDTOCopyWith<DealPlanDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealPlanDTOCopyWith<$Res> {
  factory $DealPlanDTOCopyWith(
          DealPlanDTO value, $Res Function(DealPlanDTO) then) =
      _$DealPlanDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, DealPlanDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  $DealPlanDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$DealPlanDTOCopyWithImpl<$Res> implements $DealPlanDTOCopyWith<$Res> {
  _$DealPlanDTOCopyWithImpl(this._value, this._then);

  final DealPlanDTO _value;
  // ignore: unused_field
  final $Res Function(DealPlanDTO) _then;

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
              as DealPlanDTOData,
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
  $DealPlanDTODataCopyWith<$Res> get data {
    return $DealPlanDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$DealPlanDTOCopyWith<$Res>
    implements $DealPlanDTOCopyWith<$Res> {
  factory _$DealPlanDTOCopyWith(
          _DealPlanDTO value, $Res Function(_DealPlanDTO) then) =
      __$DealPlanDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, DealPlanDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  $DealPlanDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$DealPlanDTOCopyWithImpl<$Res> extends _$DealPlanDTOCopyWithImpl<$Res>
    implements _$DealPlanDTOCopyWith<$Res> {
  __$DealPlanDTOCopyWithImpl(
      _DealPlanDTO _value, $Res Function(_DealPlanDTO) _then)
      : super(_value, (v) => _then(v as _DealPlanDTO));

  @override
  _DealPlanDTO get _value => super._value as _DealPlanDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_DealPlanDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DealPlanDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DealPlanDTO extends _DealPlanDTO {
  const _$_DealPlanDTO({@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_DealPlanDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DealPlanDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final DealPlanDTOData data;

  @override
  String toString() {
    return 'DealPlanDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealPlanDTO &&
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
  _$DealPlanDTOCopyWith<_DealPlanDTO> get copyWith =>
      __$DealPlanDTOCopyWithImpl<_DealPlanDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealPlanDTOToJson(this);
  }
}

abstract class _DealPlanDTO extends DealPlanDTO {
  const factory _DealPlanDTO(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      required DealPlanDTOData data}) = _$_DealPlanDTO;
  const _DealPlanDTO._() : super._();

  factory _DealPlanDTO.fromJson(Map<String, dynamic> json) =
      _$_DealPlanDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  DealPlanDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$DealPlanDTOCopyWith<_DealPlanDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

DealPlanDTOData _$DealPlanDTODataFromJson(Map<String, dynamic> json) {
  return _DealPlanDTOData.fromJson(json);
}

/// @nodoc
class _$DealPlanDTODataTearOff {
  const _$DealPlanDTODataTearOff();

  _DealPlanDTOData call(
      {@JsonKey(name: '_id')
          String? id,
      @DoubleSerializer()
          double? amount,
      @IntegerSerializer()
          int? priority,
      List<String> features = const [],
      @JsonKey(toJson: DealPlanTypeSerializer.toJsonString)
      @DealPlanTypeSerializer()
          DealPlanType? name,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt}) {
    return _DealPlanDTOData(
      id: id,
      amount: amount,
      priority: priority,
      features: features,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  DealPlanDTOData fromJson(Map<String, Object?> json) {
    return DealPlanDTOData.fromJson(json);
  }
}

/// @nodoc
const $DealPlanDTOData = _$DealPlanDTODataTearOff();

/// @nodoc
mixin _$DealPlanDTOData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get amount => throw _privateConstructorUsedError;
  @IntegerSerializer()
  int? get priority => throw _privateConstructorUsedError;
  List<String> get features => throw _privateConstructorUsedError;
  @JsonKey(toJson: DealPlanTypeSerializer.toJsonString)
  @DealPlanTypeSerializer()
  DealPlanType? get name => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealPlanDTODataCopyWith<DealPlanDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealPlanDTODataCopyWith<$Res> {
  factory $DealPlanDTODataCopyWith(
          DealPlanDTOData value, $Res Function(DealPlanDTOData) then) =
      _$DealPlanDTODataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id')
          String? id,
      @DoubleSerializer()
          double? amount,
      @IntegerSerializer()
          int? priority,
      List<String> features,
      @JsonKey(toJson: DealPlanTypeSerializer.toJsonString)
      @DealPlanTypeSerializer()
          DealPlanType? name,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt});
}

/// @nodoc
class _$DealPlanDTODataCopyWithImpl<$Res>
    implements $DealPlanDTODataCopyWith<$Res> {
  _$DealPlanDTODataCopyWithImpl(this._value, this._then);

  final DealPlanDTOData _value;
  // ignore: unused_field
  final $Res Function(DealPlanDTOData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? priority = freezed,
    Object? features = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DealPlanType?,
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
abstract class _$DealPlanDTODataCopyWith<$Res>
    implements $DealPlanDTODataCopyWith<$Res> {
  factory _$DealPlanDTODataCopyWith(
          _DealPlanDTOData value, $Res Function(_DealPlanDTOData) then) =
      __$DealPlanDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id')
          String? id,
      @DoubleSerializer()
          double? amount,
      @IntegerSerializer()
          int? priority,
      List<String> features,
      @JsonKey(toJson: DealPlanTypeSerializer.toJsonString)
      @DealPlanTypeSerializer()
          DealPlanType? name,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt});
}

/// @nodoc
class __$DealPlanDTODataCopyWithImpl<$Res>
    extends _$DealPlanDTODataCopyWithImpl<$Res>
    implements _$DealPlanDTODataCopyWith<$Res> {
  __$DealPlanDTODataCopyWithImpl(
      _DealPlanDTOData _value, $Res Function(_DealPlanDTOData) _then)
      : super(_value, (v) => _then(v as _DealPlanDTOData));

  @override
  _DealPlanDTOData get _value => super._value as _DealPlanDTOData;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? priority = freezed,
    Object? features = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_DealPlanDTOData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DealPlanType?,
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
class _$_DealPlanDTOData extends _DealPlanDTOData {
  const _$_DealPlanDTOData(
      {@JsonKey(name: '_id')
          this.id,
      @DoubleSerializer()
          this.amount,
      @IntegerSerializer()
          this.priority,
      this.features = const [],
      @JsonKey(toJson: DealPlanTypeSerializer.toJsonString)
      @DealPlanTypeSerializer()
          this.name,
      @TimestampConverter()
          this.createdAt,
      @TimestampConverter()
          this.updatedAt})
      : super._();

  factory _$_DealPlanDTOData.fromJson(Map<String, dynamic> json) =>
      _$$_DealPlanDTODataFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @DoubleSerializer()
  final double? amount;
  @override
  @IntegerSerializer()
  final int? priority;
  @JsonKey()
  @override
  final List<String> features;
  @override
  @JsonKey(toJson: DealPlanTypeSerializer.toJsonString)
  @DealPlanTypeSerializer()
  final DealPlanType? name;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DealPlanDTOData(id: $id, amount: $amount, priority: $priority, features: $features, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealPlanDTOData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.priority, priority) &&
            const DeepCollectionEquality().equals(other.features, features) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(priority),
      const DeepCollectionEquality().hash(features),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$DealPlanDTODataCopyWith<_DealPlanDTOData> get copyWith =>
      __$DealPlanDTODataCopyWithImpl<_DealPlanDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealPlanDTODataToJson(this);
  }
}

abstract class _DealPlanDTOData extends DealPlanDTOData {
  const factory _DealPlanDTOData(
      {@JsonKey(name: '_id')
          String? id,
      @DoubleSerializer()
          double? amount,
      @IntegerSerializer()
          int? priority,
      List<String> features,
      @JsonKey(toJson: DealPlanTypeSerializer.toJsonString)
      @DealPlanTypeSerializer()
          DealPlanType? name,
      @TimestampConverter()
          DateTime? createdAt,
      @TimestampConverter()
          DateTime? updatedAt}) = _$_DealPlanDTOData;
  const _DealPlanDTOData._() : super._();

  factory _DealPlanDTOData.fromJson(Map<String, dynamic> json) =
      _$_DealPlanDTOData.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @DoubleSerializer()
  double? get amount;
  @override
  @IntegerSerializer()
  int? get priority;
  @override
  List<String> get features;
  @override
  @JsonKey(toJson: DealPlanTypeSerializer.toJsonString)
  @DealPlanTypeSerializer()
  DealPlanType? get name;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$DealPlanDTODataCopyWith<_DealPlanDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

DealPlanListDTO _$DealPlanListDTOFromJson(Map<String, dynamic> json) {
  return _DealPlanListDTO.fromJson(json);
}

/// @nodoc
class _$DealPlanListDTOTearOff {
  const _$DealPlanListDTOTearOff();

  _DealPlanListDTO call(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      List<DealPlanDTOData> data = const []}) {
    return _DealPlanListDTO(
      meta: meta,
      data: data,
    );
  }

  DealPlanListDTO fromJson(Map<String, Object?> json) {
    return DealPlanListDTO.fromJson(json);
  }
}

/// @nodoc
const $DealPlanListDTO = _$DealPlanListDTOTearOff();

/// @nodoc
mixin _$DealPlanListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<DealPlanDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealPlanListDTOCopyWith<DealPlanListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealPlanListDTOCopyWith<$Res> {
  factory $DealPlanListDTOCopyWith(
          DealPlanListDTO value, $Res Function(DealPlanListDTO) then) =
      _$DealPlanListDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, List<DealPlanDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DealPlanListDTOCopyWithImpl<$Res>
    implements $DealPlanListDTOCopyWith<$Res> {
  _$DealPlanListDTOCopyWithImpl(this._value, this._then);

  final DealPlanListDTO _value;
  // ignore: unused_field
  final $Res Function(DealPlanListDTO) _then;

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
              as List<DealPlanDTOData>,
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
abstract class _$DealPlanListDTOCopyWith<$Res>
    implements $DealPlanListDTOCopyWith<$Res> {
  factory _$DealPlanListDTOCopyWith(
          _DealPlanListDTO value, $Res Function(_DealPlanListDTO) then) =
      __$DealPlanListDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, List<DealPlanDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$DealPlanListDTOCopyWithImpl<$Res>
    extends _$DealPlanListDTOCopyWithImpl<$Res>
    implements _$DealPlanListDTOCopyWith<$Res> {
  __$DealPlanListDTOCopyWithImpl(
      _DealPlanListDTO _value, $Res Function(_DealPlanListDTO) _then)
      : super(_value, (v) => _then(v as _DealPlanListDTO));

  @override
  _DealPlanListDTO get _value => super._value as _DealPlanListDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_DealPlanListDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DealPlanDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DealPlanListDTO extends _DealPlanListDTO {
  const _$_DealPlanListDTO(
      {@JsonKey(name: '_meta') this.meta, this.data = const []})
      : super._();

  factory _$_DealPlanListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DealPlanListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @JsonKey()
  @override
  final List<DealPlanDTOData> data;

  @override
  String toString() {
    return 'DealPlanListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DealPlanListDTO &&
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
  _$DealPlanListDTOCopyWith<_DealPlanListDTO> get copyWith =>
      __$DealPlanListDTOCopyWithImpl<_DealPlanListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealPlanListDTOToJson(this);
  }
}

abstract class _DealPlanListDTO extends DealPlanListDTO {
  const factory _DealPlanListDTO(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      List<DealPlanDTOData> data}) = _$_DealPlanListDTO;
  const _DealPlanListDTO._() : super._();

  factory _DealPlanListDTO.fromJson(Map<String, dynamic> json) =
      _$_DealPlanListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  List<DealPlanDTOData> get data;
  @override
  @JsonKey(ignore: true)
  _$DealPlanListDTOCopyWith<_DealPlanListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
