// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of address_component.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressComponent {
  BasicTextField get longName => throw _privateConstructorUsedError;
  BasicTextField get shortName => throw _privateConstructorUsedError;
  KtList<AddressComponentType> get types => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressComponentCopyWith<AddressComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressComponentCopyWith<$Res> {
  factory $AddressComponentCopyWith(
          AddressComponent value, $Res Function(AddressComponent) then) =
      _$AddressComponentCopyWithImpl<$Res>;
  $Res call(
      {BasicTextField longName,
      BasicTextField shortName,
      KtList<AddressComponentType> types});
}

/// @nodoc
class _$AddressComponentCopyWithImpl<$Res>
    implements $AddressComponentCopyWith<$Res> {
  _$AddressComponentCopyWithImpl(this._value, this._then);

  final AddressComponent _value;
  // ignore: unused_field
  final $Res Function(AddressComponent) _then;

  @override
  $Res call({
    Object? longName = freezed,
    Object? shortName = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      longName: longName == freezed
          ? _value.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as KtList<AddressComponentType>,
    ));
  }
}

/// @nodoc
abstract class _$$_AddressComponentCopyWith<$Res>
    implements $AddressComponentCopyWith<$Res> {
  factory _$$_AddressComponentCopyWith(
          _$_AddressComponent value, $Res Function(_$_AddressComponent) then) =
      __$$_AddressComponentCopyWithImpl<$Res>;
  @override
  $Res call(
      {BasicTextField longName,
      BasicTextField shortName,
      KtList<AddressComponentType> types});
}

/// @nodoc
class __$$_AddressComponentCopyWithImpl<$Res>
    extends _$AddressComponentCopyWithImpl<$Res>
    implements _$$_AddressComponentCopyWith<$Res> {
  __$$_AddressComponentCopyWithImpl(
      _$_AddressComponent _value, $Res Function(_$_AddressComponent) _then)
      : super(_value, (v) => _then(v as _$_AddressComponent));

  @override
  _$_AddressComponent get _value => super._value as _$_AddressComponent;

  @override
  $Res call({
    Object? longName = freezed,
    Object? shortName = freezed,
    Object? types = freezed,
  }) {
    return _then(_$_AddressComponent(
      longName: longName == freezed
          ? _value.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as KtList<AddressComponentType>,
    ));
  }
}

/// @nodoc

class _$_AddressComponent extends _AddressComponent {
  const _$_AddressComponent(
      {required this.longName,
      required this.shortName,
      this.types = const KtList.empty()})
      : super._();

  @override
  final BasicTextField longName;
  @override
  final BasicTextField shortName;
  @override
  @JsonKey()
  final KtList<AddressComponentType> types;

  @override
  String toString() {
    return 'AddressComponent(longName: $longName, shortName: $shortName, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressComponent &&
            const DeepCollectionEquality().equals(other.longName, longName) &&
            const DeepCollectionEquality().equals(other.shortName, shortName) &&
            const DeepCollectionEquality().equals(other.types, types));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(longName),
      const DeepCollectionEquality().hash(shortName),
      const DeepCollectionEquality().hash(types));

  @JsonKey(ignore: true)
  @override
  _$$_AddressComponentCopyWith<_$_AddressComponent> get copyWith =>
      __$$_AddressComponentCopyWithImpl<_$_AddressComponent>(this, _$identity);
}

abstract class _AddressComponent extends AddressComponent {
  const factory _AddressComponent(
      {required final BasicTextField longName,
      required final BasicTextField shortName,
      final KtList<AddressComponentType> types}) = _$_AddressComponent;
  const _AddressComponent._() : super._();

  @override
  BasicTextField get longName;
  @override
  BasicTextField get shortName;
  @override
  KtList<AddressComponentType> get types;
  @override
  @JsonKey(ignore: true)
  _$$_AddressComponentCopyWith<_$_AddressComponent> get copyWith =>
      throw _privateConstructorUsedError;
}
