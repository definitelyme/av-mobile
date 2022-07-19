// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brand_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandDTO _$BrandDTOFromJson(Map<String, dynamic> json) {
  return _BrandDTO.fromJson(json);
}

/// @nodoc
mixin _$BrandDTO {
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdBy => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandDTOCopyWith<BrandDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandDTOCopyWith<$Res> {
  factory $BrandDTOCopyWith(BrandDTO value, $Res Function(BrandDTO) then) =
      _$BrandDTOCopyWithImpl<$Res>;
  $Res call(
      {@BooleanSerializer() bool? active,
      @JsonKey(name: '_id') String? id,
      @TimestampConverter() DateTime? createdBy,
      String? name,
      String? description,
      String? slug,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class _$BrandDTOCopyWithImpl<$Res> implements $BrandDTOCopyWith<$Res> {
  _$BrandDTOCopyWithImpl(this._value, this._then);

  final BrandDTO _value;
  // ignore: unused_field
  final $Res Function(BrandDTO) _then;

  @override
  $Res call({
    Object? active = freezed,
    Object? id = freezed,
    Object? createdBy = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$_BrandDTOCopyWith<$Res> implements $BrandDTOCopyWith<$Res> {
  factory _$$_BrandDTOCopyWith(
          _$_BrandDTO value, $Res Function(_$_BrandDTO) then) =
      __$$_BrandDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@BooleanSerializer() bool? active,
      @JsonKey(name: '_id') String? id,
      @TimestampConverter() DateTime? createdBy,
      String? name,
      String? description,
      String? slug,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$_BrandDTOCopyWithImpl<$Res> extends _$BrandDTOCopyWithImpl<$Res>
    implements _$$_BrandDTOCopyWith<$Res> {
  __$$_BrandDTOCopyWithImpl(
      _$_BrandDTO _value, $Res Function(_$_BrandDTO) _then)
      : super(_value, (v) => _then(v as _$_BrandDTO));

  @override
  _$_BrandDTO get _value => super._value as _$_BrandDTO;

  @override
  $Res call({
    Object? active = freezed,
    Object? id = freezed,
    Object? createdBy = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_BrandDTO(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$_BrandDTO extends _BrandDTO {
  _$_BrandDTO(
      {@BooleanSerializer() this.active,
      @JsonKey(name: '_id') this.id,
      @TimestampConverter() this.createdBy,
      this.name,
      this.description,
      this.slug,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : super._();

  factory _$_BrandDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BrandDTOFromJson(json);

  @override
  @BooleanSerializer()
  final bool? active;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @TimestampConverter()
  final DateTime? createdBy;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? slug;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'BrandDTO(active: $active, id: $id, createdBy: $createdBy, name: $name, description: $description, slug: $slug, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandDTO &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(createdBy),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_BrandDTOCopyWith<_$_BrandDTO> get copyWith =>
      __$$_BrandDTOCopyWithImpl<_$_BrandDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandDTOToJson(
      this,
    );
  }
}

abstract class _BrandDTO extends BrandDTO {
  factory _BrandDTO(
      {@BooleanSerializer() final bool? active,
      @JsonKey(name: '_id') final String? id,
      @TimestampConverter() final DateTime? createdBy,
      final String? name,
      final String? description,
      final String? slug,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$_BrandDTO;
  _BrandDTO._() : super._();

  factory _BrandDTO.fromJson(Map<String, dynamic> json) = _$_BrandDTO.fromJson;

  @override
  @BooleanSerializer()
  bool? get active;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @TimestampConverter()
  DateTime? get createdBy;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get slug;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_BrandDTOCopyWith<_$_BrandDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
