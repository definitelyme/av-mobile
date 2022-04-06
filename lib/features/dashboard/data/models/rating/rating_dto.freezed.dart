// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of rating_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatingDTO _$RatingDTOFromJson(Map<String, dynamic> json) {
  return _RatingDTO.fromJson(json);
}

/// @nodoc
class _$RatingDTOTearOff {
  const _$RatingDTOTearOff();

  _RatingDTO call(
      {@JsonKey(name: '_meta') MetaDTO? meta, required _RatingDTOData data}) {
    return _RatingDTO(
      meta: meta,
      data: data,
    );
  }

  RatingDTO fromJson(Map<String, Object?> json) {
    return RatingDTO.fromJson(json);
  }
}

/// @nodoc
const $RatingDTO = _$RatingDTOTearOff();

/// @nodoc
mixin _$RatingDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  _RatingDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingDTOCopyWith<RatingDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingDTOCopyWith<$Res> {
  factory $RatingDTOCopyWith(RatingDTO value, $Res Function(RatingDTO) then) =
      _$RatingDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, _RatingDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  _$RatingDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$RatingDTOCopyWithImpl<$Res> implements $RatingDTOCopyWith<$Res> {
  _$RatingDTOCopyWithImpl(this._value, this._then);

  final RatingDTO _value;
  // ignore: unused_field
  final $Res Function(RatingDTO) _then;

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
              as _RatingDTOData,
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
  _$RatingDTODataCopyWith<$Res> get data {
    return _$RatingDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$RatingDTOCopyWith<$Res> implements $RatingDTOCopyWith<$Res> {
  factory _$RatingDTOCopyWith(
          _RatingDTO value, $Res Function(_RatingDTO) then) =
      __$RatingDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, _RatingDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  _$RatingDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$RatingDTOCopyWithImpl<$Res> extends _$RatingDTOCopyWithImpl<$Res>
    implements _$RatingDTOCopyWith<$Res> {
  __$RatingDTOCopyWithImpl(_RatingDTO _value, $Res Function(_RatingDTO) _then)
      : super(_value, (v) => _then(v as _RatingDTO));

  @override
  _RatingDTO get _value => super._value as _RatingDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_RatingDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as _RatingDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RatingDTO extends _RatingDTO {
  const _$_RatingDTO({@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_RatingDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RatingDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final _RatingDTOData data;

  @override
  String toString() {
    return 'RatingDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RatingDTO &&
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
  _$RatingDTOCopyWith<_RatingDTO> get copyWith =>
      __$RatingDTOCopyWithImpl<_RatingDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingDTOToJson(this);
  }
}

abstract class _RatingDTO extends RatingDTO {
  const factory _RatingDTO(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      required _RatingDTOData data}) = _$_RatingDTO;
  const _RatingDTO._() : super._();

  factory _RatingDTO.fromJson(Map<String, dynamic> json) =
      _$_RatingDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta;
  @override
  _RatingDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$RatingDTOCopyWith<_RatingDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

_RatingDTOData _$_RatingDTODataFromJson(Map<String, dynamic> json) {
  return __RatingDTOData.fromJson(json);
}

/// @nodoc
class _$_RatingDTODataTearOff {
  const _$_RatingDTODataTearOff();

  __RatingDTOData call(
      {@JsonKey(name: 'value') List<ReviewDTO> reviews = const [],
      ReviewDTO? average}) {
    return __RatingDTOData(
      reviews: reviews,
      average: average,
    );
  }

  _RatingDTOData fromJson(Map<String, Object?> json) {
    return _RatingDTOData.fromJson(json);
  }
}

/// @nodoc
const _$RatingDTOData = _$_RatingDTODataTearOff();

/// @nodoc
mixin _$_RatingDTOData {
  @JsonKey(name: 'value')
  List<ReviewDTO> get reviews => throw _privateConstructorUsedError;
  ReviewDTO? get average => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RatingDTODataCopyWith<_RatingDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RatingDTODataCopyWith<$Res> {
  factory _$RatingDTODataCopyWith(
          _RatingDTOData value, $Res Function(_RatingDTOData) then) =
      __$RatingDTODataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'value') List<ReviewDTO> reviews, ReviewDTO? average});

  $ReviewDTOCopyWith<$Res>? get average;
}

/// @nodoc
class __$RatingDTODataCopyWithImpl<$Res>
    implements _$RatingDTODataCopyWith<$Res> {
  __$RatingDTODataCopyWithImpl(this._value, this._then);

  final _RatingDTOData _value;
  // ignore: unused_field
  final $Res Function(_RatingDTOData) _then;

  @override
  $Res call({
    Object? reviews = freezed,
    Object? average = freezed,
  }) {
    return _then(_value.copyWith(
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewDTO>,
      average: average == freezed
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as ReviewDTO?,
    ));
  }

  @override
  $ReviewDTOCopyWith<$Res>? get average {
    if (_value.average == null) {
      return null;
    }

    return $ReviewDTOCopyWith<$Res>(_value.average!, (value) {
      return _then(_value.copyWith(average: value));
    });
  }
}

/// @nodoc
abstract class _$_RatingDTODataCopyWith<$Res>
    implements _$RatingDTODataCopyWith<$Res> {
  factory _$_RatingDTODataCopyWith(
          __RatingDTOData value, $Res Function(__RatingDTOData) then) =
      __$_RatingDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'value') List<ReviewDTO> reviews, ReviewDTO? average});

  @override
  $ReviewDTOCopyWith<$Res>? get average;
}

/// @nodoc
class __$_RatingDTODataCopyWithImpl<$Res>
    extends __$RatingDTODataCopyWithImpl<$Res>
    implements _$_RatingDTODataCopyWith<$Res> {
  __$_RatingDTODataCopyWithImpl(
      __RatingDTOData _value, $Res Function(__RatingDTOData) _then)
      : super(_value, (v) => _then(v as __RatingDTOData));

  @override
  __RatingDTOData get _value => super._value as __RatingDTOData;

  @override
  $Res call({
    Object? reviews = freezed,
    Object? average = freezed,
  }) {
    return _then(__RatingDTOData(
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewDTO>,
      average: average == freezed
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as ReviewDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__RatingDTOData extends __RatingDTOData {
  const _$__RatingDTOData(
      {@JsonKey(name: 'value') this.reviews = const [], this.average})
      : super._();

  factory _$__RatingDTOData.fromJson(Map<String, dynamic> json) =>
      _$$__RatingDTODataFromJson(json);

  @override
  @JsonKey(name: 'value')
  final List<ReviewDTO> reviews;
  @override
  final ReviewDTO? average;

  @override
  String toString() {
    return '_RatingDTOData(reviews: $reviews, average: $average)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __RatingDTOData &&
            const DeepCollectionEquality().equals(other.reviews, reviews) &&
            const DeepCollectionEquality().equals(other.average, average));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviews),
      const DeepCollectionEquality().hash(average));

  @JsonKey(ignore: true)
  @override
  _$_RatingDTODataCopyWith<__RatingDTOData> get copyWith =>
      __$_RatingDTODataCopyWithImpl<__RatingDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__RatingDTODataToJson(this);
  }
}

abstract class __RatingDTOData extends _RatingDTOData {
  const factory __RatingDTOData(
      {@JsonKey(name: 'value') List<ReviewDTO> reviews,
      ReviewDTO? average}) = _$__RatingDTOData;
  const __RatingDTOData._() : super._();

  factory __RatingDTOData.fromJson(Map<String, dynamic> json) =
      _$__RatingDTOData.fromJson;

  @override
  @JsonKey(name: 'value')
  List<ReviewDTO> get reviews;
  @override
  ReviewDTO? get average;
  @override
  @JsonKey(ignore: true)
  _$_RatingDTODataCopyWith<__RatingDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}
