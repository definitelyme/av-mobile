// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of product_brand.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductBrandTearOff {
  const _$ProductBrandTearOff();

  _ProductBrand call(
      {required UniqueId<String?> id,
      bool isActive = false,
      required BasicTextField<String?> name,
      required BasicTextField<String?> description,
      required BasicTextField<String?> slug,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _ProductBrand(
      id: id,
      isActive: isActive,
      name: name,
      description: description,
      slug: slug,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $ProductBrand = _$ProductBrandTearOff();

/// @nodoc
mixin _$ProductBrand {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  BasicTextField<String?> get name => throw _privateConstructorUsedError;
  BasicTextField<String?> get description => throw _privateConstructorUsedError;
  BasicTextField<String?> get slug => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductBrandCopyWith<ProductBrand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductBrandCopyWith<$Res> {
  factory $ProductBrandCopyWith(
          ProductBrand value, $Res Function(ProductBrand) then) =
      _$ProductBrandCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      bool isActive,
      BasicTextField<String?> name,
      BasicTextField<String?> description,
      BasicTextField<String?> slug,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$ProductBrandCopyWithImpl<$Res> implements $ProductBrandCopyWith<$Res> {
  _$ProductBrandCopyWithImpl(this._value, this._then);

  final ProductBrand _value;
  // ignore: unused_field
  final $Res Function(ProductBrand) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
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
abstract class _$ProductBrandCopyWith<$Res>
    implements $ProductBrandCopyWith<$Res> {
  factory _$ProductBrandCopyWith(
          _ProductBrand value, $Res Function(_ProductBrand) then) =
      __$ProductBrandCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      bool isActive,
      BasicTextField<String?> name,
      BasicTextField<String?> description,
      BasicTextField<String?> slug,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$ProductBrandCopyWithImpl<$Res> extends _$ProductBrandCopyWithImpl<$Res>
    implements _$ProductBrandCopyWith<$Res> {
  __$ProductBrandCopyWithImpl(
      _ProductBrand _value, $Res Function(_ProductBrand) _then)
      : super(_value, (v) => _then(v as _ProductBrand));

  @override
  _ProductBrand get _value => super._value as _ProductBrand;

  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ProductBrand(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
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

class _$_ProductBrand extends _ProductBrand {
  const _$_ProductBrand(
      {required this.id,
      this.isActive = false,
      required this.name,
      required this.description,
      required this.slug,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @JsonKey()
  @override
  final bool isActive;
  @override
  final BasicTextField<String?> name;
  @override
  final BasicTextField<String?> description;
  @override
  final BasicTextField<String?> slug;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProductBrand(id: $id, isActive: $isActive, name: $name, description: $description, slug: $slug, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductBrand &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$ProductBrandCopyWith<_ProductBrand> get copyWith =>
      __$ProductBrandCopyWithImpl<_ProductBrand>(this, _$identity);
}

abstract class _ProductBrand extends ProductBrand {
  const factory _ProductBrand(
      {required UniqueId<String?> id,
      bool isActive,
      required BasicTextField<String?> name,
      required BasicTextField<String?> description,
      required BasicTextField<String?> slug,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_ProductBrand;
  const _ProductBrand._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  bool get isActive;
  @override
  BasicTextField<String?> get name;
  @override
  BasicTextField<String?> get description;
  @override
  BasicTextField<String?> get slug;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$ProductBrandCopyWith<_ProductBrand> get copyWith =>
      throw _privateConstructorUsedError;
}
