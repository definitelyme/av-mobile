// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of wishlist_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WishDTO _$WishDTOFromJson(Map<String, dynamic> json) {
  return _WishDTO.fromJson(json);
}

/// @nodoc
mixin _$WishDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  _WishDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishDTOCopyWith<WishDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishDTOCopyWith<$Res> {
  factory $WishDTOCopyWith(WishDTO value, $Res Function(WishDTO) then) =
      _$WishDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, _WishDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  _$WishDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$WishDTOCopyWithImpl<$Res> implements $WishDTOCopyWith<$Res> {
  _$WishDTOCopyWithImpl(this._value, this._then);

  final WishDTO _value;
  // ignore: unused_field
  final $Res Function(WishDTO) _then;

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
              as _WishDTOData,
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
  _$WishDTODataCopyWith<$Res> get data {
    return _$WishDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_WishDTOCopyWith<$Res> implements $WishDTOCopyWith<$Res> {
  factory _$$_WishDTOCopyWith(
          _$_WishDTO value, $Res Function(_$_WishDTO) then) =
      __$$_WishDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, _WishDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  _$WishDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_WishDTOCopyWithImpl<$Res> extends _$WishDTOCopyWithImpl<$Res>
    implements _$$_WishDTOCopyWith<$Res> {
  __$$_WishDTOCopyWithImpl(_$_WishDTO _value, $Res Function(_$_WishDTO) _then)
      : super(_value, (v) => _then(v as _$_WishDTO));

  @override
  _$_WishDTO get _value => super._value as _$_WishDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_WishDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as _WishDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WishDTO extends _WishDTO {
  const _$_WishDTO({@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_WishDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WishDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final _WishDTOData data;

  @override
  String toString() {
    return 'WishDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishDTO &&
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
  _$$_WishDTOCopyWith<_$_WishDTO> get copyWith =>
      __$$_WishDTOCopyWithImpl<_$_WishDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishDTOToJson(this);
  }
}

abstract class _WishDTO extends WishDTO {
  const factory _WishDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      required final _WishDTOData data}) = _$_WishDTO;
  const _WishDTO._() : super._();

  factory _WishDTO.fromJson(Map<String, dynamic> json) = _$_WishDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  @override
  _WishDTOData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WishDTOCopyWith<_$_WishDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

_WishDTOData _$_WishDTODataFromJson(Map<String, dynamic> json) {
  return __WishDTOData.fromJson(json);
}

/// @nodoc
mixin _$_WishDTOData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  DealDTOData? get deal => throw _privateConstructorUsedError;
  UserDTO? get user => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WishDTODataCopyWith<_WishDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WishDTODataCopyWith<$Res> {
  factory _$WishDTODataCopyWith(
          _WishDTOData value, $Res Function(_WishDTOData) then) =
      __$WishDTODataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @BooleanSerializer() bool? active,
      DealDTOData? deal,
      UserDTO? user,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  $DealDTODataCopyWith<$Res>? get deal;
  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class __$WishDTODataCopyWithImpl<$Res> implements _$WishDTODataCopyWith<$Res> {
  __$WishDTODataCopyWithImpl(this._value, this._then);

  final _WishDTOData _value;
  // ignore: unused_field
  final $Res Function(_WishDTOData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? active = freezed,
    Object? deal = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      deal: deal == freezed
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as DealDTOData?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
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
  $DealDTODataCopyWith<$Res>? get deal {
    if (_value.deal == null) {
      return null;
    }

    return $DealDTODataCopyWith<$Res>(_value.deal!, (value) {
      return _then(_value.copyWith(deal: value));
    });
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
}

/// @nodoc
abstract class _$$__WishDTODataCopyWith<$Res>
    implements _$WishDTODataCopyWith<$Res> {
  factory _$$__WishDTODataCopyWith(
          _$__WishDTOData value, $Res Function(_$__WishDTOData) then) =
      __$$__WishDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @BooleanSerializer() bool? active,
      DealDTOData? deal,
      UserDTO? user,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  @override
  $DealDTODataCopyWith<$Res>? get deal;
  @override
  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class __$$__WishDTODataCopyWithImpl<$Res>
    extends __$WishDTODataCopyWithImpl<$Res>
    implements _$$__WishDTODataCopyWith<$Res> {
  __$$__WishDTODataCopyWithImpl(
      _$__WishDTOData _value, $Res Function(_$__WishDTOData) _then)
      : super(_value, (v) => _then(v as _$__WishDTOData));

  @override
  _$__WishDTOData get _value => super._value as _$__WishDTOData;

  @override
  $Res call({
    Object? id = freezed,
    Object? active = freezed,
    Object? deal = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$__WishDTOData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      deal: deal == freezed
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as DealDTOData?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
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
class _$__WishDTOData extends __WishDTOData {
  const _$__WishDTOData(
      {@JsonKey(name: '_id') this.id,
      @BooleanSerializer() this.active,
      this.deal,
      this.user,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : super._();

  factory _$__WishDTOData.fromJson(Map<String, dynamic> json) =>
      _$$__WishDTODataFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @BooleanSerializer()
  final bool? active;
  @override
  final DealDTOData? deal;
  @override
  final UserDTO? user;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return '_WishDTOData(id: $id, active: $active, deal: $deal, user: $user, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__WishDTOData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.deal, deal) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(deal),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$__WishDTODataCopyWith<_$__WishDTOData> get copyWith =>
      __$$__WishDTODataCopyWithImpl<_$__WishDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__WishDTODataToJson(this);
  }
}

abstract class __WishDTOData extends _WishDTOData {
  const factory __WishDTOData(
      {@JsonKey(name: '_id') final String? id,
      @BooleanSerializer() final bool? active,
      final DealDTOData? deal,
      final UserDTO? user,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$__WishDTOData;
  const __WishDTOData._() : super._();

  factory __WishDTOData.fromJson(Map<String, dynamic> json) =
      _$__WishDTOData.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @override
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @override
  DealDTOData? get deal => throw _privateConstructorUsedError;
  @override
  UserDTO? get user => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$__WishDTODataCopyWith<_$__WishDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

WishListDTO _$WishListDTOFromJson(Map<String, dynamic> json) {
  return _WishListDTO.fromJson(json);
}

/// @nodoc
mixin _$WishListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<_WishDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishListDTOCopyWith<WishListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListDTOCopyWith<$Res> {
  factory $WishListDTOCopyWith(
          WishListDTO value, $Res Function(WishListDTO) then) =
      _$WishListDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, List<_WishDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$WishListDTOCopyWithImpl<$Res> implements $WishListDTOCopyWith<$Res> {
  _$WishListDTOCopyWithImpl(this._value, this._then);

  final WishListDTO _value;
  // ignore: unused_field
  final $Res Function(WishListDTO) _then;

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
              as List<_WishDTOData>,
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
abstract class _$$_WishListDTOCopyWith<$Res>
    implements $WishListDTOCopyWith<$Res> {
  factory _$$_WishListDTOCopyWith(
          _$_WishListDTO value, $Res Function(_$_WishListDTO) then) =
      __$$_WishListDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, List<_WishDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_WishListDTOCopyWithImpl<$Res> extends _$WishListDTOCopyWithImpl<$Res>
    implements _$$_WishListDTOCopyWith<$Res> {
  __$$_WishListDTOCopyWithImpl(
      _$_WishListDTO _value, $Res Function(_$_WishListDTO) _then)
      : super(_value, (v) => _then(v as _$_WishListDTO));

  @override
  _$_WishListDTO get _value => super._value as _$_WishListDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_WishListDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<_WishDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WishListDTO extends _WishListDTO {
  const _$_WishListDTO(
      {@JsonKey(name: '_meta') this.meta,
      final List<_WishDTOData> data = const []})
      : _data = data,
        super._();

  factory _$_WishListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WishListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  final List<_WishDTOData> _data;
  @override
  @JsonKey()
  List<_WishDTOData> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'WishListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishListDTO &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_WishListDTOCopyWith<_$_WishListDTO> get copyWith =>
      __$$_WishListDTOCopyWithImpl<_$_WishListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishListDTOToJson(this);
  }
}

abstract class _WishListDTO extends WishListDTO {
  const factory _WishListDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      final List<_WishDTOData> data}) = _$_WishListDTO;
  const _WishListDTO._() : super._();

  factory _WishListDTO.fromJson(Map<String, dynamic> json) =
      _$_WishListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  @override
  List<_WishDTOData> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WishListDTOCopyWith<_$_WishListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
