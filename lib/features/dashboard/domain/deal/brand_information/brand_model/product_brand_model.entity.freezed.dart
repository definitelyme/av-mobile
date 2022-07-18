// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of product_brand_model.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductBrandModel {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  UniqueId<String?> get brandId => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  BasicTextField get name => throw _privateConstructorUsedError;
  BasicTextField get description => throw _privateConstructorUsedError;
  BasicTextField get slug => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductBrandModelCopyWith<ProductBrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductBrandModelCopyWith<$Res> {
  factory $ProductBrandModelCopyWith(
          ProductBrandModel value, $Res Function(ProductBrandModel) then) =
      _$ProductBrandModelCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> brandId,
      bool isActive,
      BasicTextField name,
      BasicTextField description,
      BasicTextField slug,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$ProductBrandModelCopyWithImpl<$Res>
    implements $ProductBrandModelCopyWith<$Res> {
  _$ProductBrandModelCopyWithImpl(this._value, this._then);

  final ProductBrandModel _value;
  // ignore: unused_field
  final $Res Function(ProductBrandModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? brandId = freezed,
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
      brandId: brandId == freezed
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
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
abstract class _$$_ProductBrandModelCopyWith<$Res>
    implements $ProductBrandModelCopyWith<$Res> {
  factory _$$_ProductBrandModelCopyWith(_$_ProductBrandModel value,
          $Res Function(_$_ProductBrandModel) then) =
      __$$_ProductBrandModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      UniqueId<String?> brandId,
      bool isActive,
      BasicTextField name,
      BasicTextField description,
      BasicTextField slug,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_ProductBrandModelCopyWithImpl<$Res>
    extends _$ProductBrandModelCopyWithImpl<$Res>
    implements _$$_ProductBrandModelCopyWith<$Res> {
  __$$_ProductBrandModelCopyWithImpl(
      _$_ProductBrandModel _value, $Res Function(_$_ProductBrandModel) _then)
      : super(_value, (v) => _then(v as _$_ProductBrandModel));

  @override
  _$_ProductBrandModel get _value => super._value as _$_ProductBrandModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? brandId = freezed,
    Object? isActive = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ProductBrandModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      brandId: brandId == freezed
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
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

class _$_ProductBrandModel extends _ProductBrandModel {
  const _$_ProductBrandModel(
      {required this.id,
      required this.brandId,
      this.isActive = false,
      required this.name,
      required this.description,
      required this.slug,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final UniqueId<String?> brandId;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final BasicTextField name;
  @override
  final BasicTextField description;
  @override
  final BasicTextField slug;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProductBrandModel(id: $id, brandId: $brandId, isActive: $isActive, name: $name, description: $description, slug: $slug, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductBrandModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.brandId, brandId) &&
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
      const DeepCollectionEquality().hash(brandId),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_ProductBrandModelCopyWith<_$_ProductBrandModel> get copyWith =>
      __$$_ProductBrandModelCopyWithImpl<_$_ProductBrandModel>(
          this, _$identity);
}

abstract class _ProductBrandModel extends ProductBrandModel {
  const factory _ProductBrandModel(
      {required final UniqueId<String?> id,
      required final UniqueId<String?> brandId,
      final bool isActive,
      required final BasicTextField name,
      required final BasicTextField description,
      required final BasicTextField slug,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_ProductBrandModel;
  const _ProductBrandModel._() : super._();

  @override
  UniqueId<String?> get id;
  @override
  UniqueId<String?> get brandId;
  @override
  bool get isActive;
  @override
  BasicTextField get name;
  @override
  BasicTextField get description;
  @override
  BasicTextField get slug;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProductBrandModelCopyWith<_$_ProductBrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}
