// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of category_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryDTO _$CategoryDTOFromJson(Map<String, dynamic> json) {
  return _CategoryDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoryDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  CategoryDTOData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDTOCopyWith<CategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDTOCopyWith<$Res> {
  factory $CategoryDTOCopyWith(
          CategoryDTO value, $Res Function(CategoryDTO) then) =
      _$CategoryDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, CategoryDTOData data});

  $MetaDTOCopyWith<$Res>? get meta;
  $CategoryDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$CategoryDTOCopyWithImpl<$Res> implements $CategoryDTOCopyWith<$Res> {
  _$CategoryDTOCopyWithImpl(this._value, this._then);

  final CategoryDTO _value;
  // ignore: unused_field
  final $Res Function(CategoryDTO) _then;

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
              as CategoryDTOData,
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
  $CategoryDTODataCopyWith<$Res> get data {
    return $CategoryDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_CategoryDTOCopyWith<$Res>
    implements $CategoryDTOCopyWith<$Res> {
  factory _$$_CategoryDTOCopyWith(
          _$_CategoryDTO value, $Res Function(_$_CategoryDTO) then) =
      __$$_CategoryDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '_meta') MetaDTO? meta, CategoryDTOData data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  $CategoryDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CategoryDTOCopyWithImpl<$Res> extends _$CategoryDTOCopyWithImpl<$Res>
    implements _$$_CategoryDTOCopyWith<$Res> {
  __$$_CategoryDTOCopyWithImpl(
      _$_CategoryDTO _value, $Res Function(_$_CategoryDTO) _then)
      : super(_value, (v) => _then(v as _$_CategoryDTO));

  @override
  _$_CategoryDTO get _value => super._value as _$_CategoryDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CategoryDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryDTOData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryDTO extends _CategoryDTO {
  const _$_CategoryDTO({@JsonKey(name: '_meta') this.meta, required this.data})
      : super._();

  factory _$_CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  @override
  final CategoryDTOData data;

  @override
  String toString() {
    return 'CategoryDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryDTO &&
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
  _$$_CategoryDTOCopyWith<_$_CategoryDTO> get copyWith =>
      __$$_CategoryDTOCopyWithImpl<_$_CategoryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDTOToJson(this);
  }
}

abstract class _CategoryDTO extends CategoryDTO {
  const factory _CategoryDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      required final CategoryDTOData data}) = _$_CategoryDTO;
  const _CategoryDTO._() : super._();

  factory _CategoryDTO.fromJson(Map<String, dynamic> json) =
      _$_CategoryDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  @override
  CategoryDTOData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDTOCopyWith<_$_CategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryDTOData _$CategoryDTODataFromJson(Map<String, dynamic> json) {
  return _CategoryDTOData.fromJson(json);
}

/// @nodoc
mixin _$CategoryDTOData {
  @IntegerSerializer()
  int? get productsAssigned => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get percentageIncrease => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get charge => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  DealDTOData? get deal => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDTODataCopyWith<CategoryDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDTODataCopyWith<$Res> {
  factory $CategoryDTODataCopyWith(
          CategoryDTOData value, $Res Function(CategoryDTOData) then) =
      _$CategoryDTODataCopyWithImpl<$Res>;
  $Res call(
      {@IntegerSerializer() int? productsAssigned,
      @DoubleSerializer() double? percentageIncrease,
      @DoubleSerializer() double? charge,
      @BooleanSerializer() bool? active,
      @JsonKey(name: '_id') String? id,
      String? image,
      String? name,
      String? description,
      String? slug,
      DealDTOData? deal,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  $DealDTODataCopyWith<$Res>? get deal;
}

/// @nodoc
class _$CategoryDTODataCopyWithImpl<$Res>
    implements $CategoryDTODataCopyWith<$Res> {
  _$CategoryDTODataCopyWithImpl(this._value, this._then);

  final CategoryDTOData _value;
  // ignore: unused_field
  final $Res Function(CategoryDTOData) _then;

  @override
  $Res call({
    Object? productsAssigned = freezed,
    Object? percentageIncrease = freezed,
    Object? charge = freezed,
    Object? active = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? deal = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      productsAssigned: productsAssigned == freezed
          ? _value.productsAssigned
          : productsAssigned // ignore: cast_nullable_to_non_nullable
              as int?,
      percentageIncrease: percentageIncrease == freezed
          ? _value.percentageIncrease
          : percentageIncrease // ignore: cast_nullable_to_non_nullable
              as double?,
      charge: charge == freezed
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as double?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      deal: deal == freezed
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as DealDTOData?,
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
}

/// @nodoc
abstract class _$$_CategoryDTODataCopyWith<$Res>
    implements $CategoryDTODataCopyWith<$Res> {
  factory _$$_CategoryDTODataCopyWith(
          _$_CategoryDTOData value, $Res Function(_$_CategoryDTOData) then) =
      __$$_CategoryDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@IntegerSerializer() int? productsAssigned,
      @DoubleSerializer() double? percentageIncrease,
      @DoubleSerializer() double? charge,
      @BooleanSerializer() bool? active,
      @JsonKey(name: '_id') String? id,
      String? image,
      String? name,
      String? description,
      String? slug,
      DealDTOData? deal,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  @override
  $DealDTODataCopyWith<$Res>? get deal;
}

/// @nodoc
class __$$_CategoryDTODataCopyWithImpl<$Res>
    extends _$CategoryDTODataCopyWithImpl<$Res>
    implements _$$_CategoryDTODataCopyWith<$Res> {
  __$$_CategoryDTODataCopyWithImpl(
      _$_CategoryDTOData _value, $Res Function(_$_CategoryDTOData) _then)
      : super(_value, (v) => _then(v as _$_CategoryDTOData));

  @override
  _$_CategoryDTOData get _value => super._value as _$_CategoryDTOData;

  @override
  $Res call({
    Object? productsAssigned = freezed,
    Object? percentageIncrease = freezed,
    Object? charge = freezed,
    Object? active = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? deal = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_CategoryDTOData(
      productsAssigned: productsAssigned == freezed
          ? _value.productsAssigned
          : productsAssigned // ignore: cast_nullable_to_non_nullable
              as int?,
      percentageIncrease: percentageIncrease == freezed
          ? _value.percentageIncrease
          : percentageIncrease // ignore: cast_nullable_to_non_nullable
              as double?,
      charge: charge == freezed
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as double?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      deal: deal == freezed
          ? _value.deal
          : deal // ignore: cast_nullable_to_non_nullable
              as DealDTOData?,
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
class _$_CategoryDTOData extends _CategoryDTOData {
  const _$_CategoryDTOData(
      {@IntegerSerializer() this.productsAssigned,
      @DoubleSerializer() this.percentageIncrease,
      @DoubleSerializer() this.charge,
      @BooleanSerializer() this.active,
      @JsonKey(name: '_id') this.id,
      this.image,
      this.name,
      this.description,
      this.slug,
      this.deal,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : super._();

  factory _$_CategoryDTOData.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDTODataFromJson(json);

  @override
  @IntegerSerializer()
  final int? productsAssigned;
  @override
  @DoubleSerializer()
  final double? percentageIncrease;
  @override
  @DoubleSerializer()
  final double? charge;
  @override
  @BooleanSerializer()
  final bool? active;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? slug;
  @override
  final DealDTOData? deal;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CategoryDTOData(productsAssigned: $productsAssigned, percentageIncrease: $percentageIncrease, charge: $charge, active: $active, id: $id, image: $image, name: $name, description: $description, slug: $slug, deal: $deal, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryDTOData &&
            const DeepCollectionEquality()
                .equals(other.productsAssigned, productsAssigned) &&
            const DeepCollectionEquality()
                .equals(other.percentageIncrease, percentageIncrease) &&
            const DeepCollectionEquality().equals(other.charge, charge) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality().equals(other.deal, deal) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productsAssigned),
      const DeepCollectionEquality().hash(percentageIncrease),
      const DeepCollectionEquality().hash(charge),
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(deal),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryDTODataCopyWith<_$_CategoryDTOData> get copyWith =>
      __$$_CategoryDTODataCopyWithImpl<_$_CategoryDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDTODataToJson(this);
  }
}

abstract class _CategoryDTOData extends CategoryDTOData {
  const factory _CategoryDTOData(
      {@IntegerSerializer() final int? productsAssigned,
      @DoubleSerializer() final double? percentageIncrease,
      @DoubleSerializer() final double? charge,
      @BooleanSerializer() final bool? active,
      @JsonKey(name: '_id') final String? id,
      final String? image,
      final String? name,
      final String? description,
      final String? slug,
      final DealDTOData? deal,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$_CategoryDTOData;
  const _CategoryDTOData._() : super._();

  factory _CategoryDTOData.fromJson(Map<String, dynamic> json) =
      _$_CategoryDTOData.fromJson;

  @override
  @IntegerSerializer()
  int? get productsAssigned => throw _privateConstructorUsedError;
  @override
  @DoubleSerializer()
  double? get percentageIncrease => throw _privateConstructorUsedError;
  @override
  @DoubleSerializer()
  double? get charge => throw _privateConstructorUsedError;
  @override
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get slug => throw _privateConstructorUsedError;
  @override
  DealDTOData? get deal => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDTODataCopyWith<_$_CategoryDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryListDTO _$CategoryListDTOFromJson(Map<String, dynamic> json) {
  return _CategoryListDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoryListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<CategoryDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryListDTOCopyWith<CategoryListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListDTOCopyWith<$Res> {
  factory $CategoryListDTOCopyWith(
          CategoryListDTO value, $Res Function(CategoryListDTO) then) =
      _$CategoryListDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, List<CategoryDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$CategoryListDTOCopyWithImpl<$Res>
    implements $CategoryListDTOCopyWith<$Res> {
  _$CategoryListDTOCopyWithImpl(this._value, this._then);

  final CategoryListDTO _value;
  // ignore: unused_field
  final $Res Function(CategoryListDTO) _then;

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
              as List<CategoryDTOData>,
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
abstract class _$$_CategoryListDTOCopyWith<$Res>
    implements $CategoryListDTOCopyWith<$Res> {
  factory _$$_CategoryListDTOCopyWith(
          _$_CategoryListDTO value, $Res Function(_$_CategoryListDTO) then) =
      __$$_CategoryListDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, List<CategoryDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_CategoryListDTOCopyWithImpl<$Res>
    extends _$CategoryListDTOCopyWithImpl<$Res>
    implements _$$_CategoryListDTOCopyWith<$Res> {
  __$$_CategoryListDTOCopyWithImpl(
      _$_CategoryListDTO _value, $Res Function(_$_CategoryListDTO) _then)
      : super(_value, (v) => _then(v as _$_CategoryListDTO));

  @override
  _$_CategoryListDTO get _value => super._value as _$_CategoryListDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CategoryListDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryListDTO extends _CategoryListDTO {
  const _$_CategoryListDTO(
      {@JsonKey(name: '_meta') this.meta,
      final List<CategoryDTOData> data = const []})
      : _data = data,
        super._();

  factory _$_CategoryListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  final List<CategoryDTOData> _data;
  @override
  @JsonKey()
  List<CategoryDTOData> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CategoryListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryListDTO &&
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
  _$$_CategoryListDTOCopyWith<_$_CategoryListDTO> get copyWith =>
      __$$_CategoryListDTOCopyWithImpl<_$_CategoryListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryListDTOToJson(this);
  }
}

abstract class _CategoryListDTO extends CategoryListDTO {
  const factory _CategoryListDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      final List<CategoryDTOData> data}) = _$_CategoryListDTO;
  const _CategoryListDTO._() : super._();

  factory _CategoryListDTO.fromJson(Map<String, dynamic> json) =
      _$_CategoryListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  @override
  List<CategoryDTOData> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryListDTOCopyWith<_$_CategoryListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
