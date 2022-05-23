// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of country_list.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryDTOList _$CountryDTOListFromJson(Map<String, dynamic> json) {
  return _CountryDTOList.fromJson(json);
}

/// @nodoc
mixin _$CountryDTOList {
  @JsonKey(includeIfNull: false)
  List<CountryDTO> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDTOListCopyWith<CountryDTOList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDTOListCopyWith<$Res> {
  factory $CountryDTOListCopyWith(
          CountryDTOList value, $Res Function(CountryDTOList) then) =
      _$CountryDTOListCopyWithImpl<$Res>;
  $Res call({@JsonKey(includeIfNull: false) List<CountryDTO> data});
}

/// @nodoc
class _$CountryDTOListCopyWithImpl<$Res>
    implements $CountryDTOListCopyWith<$Res> {
  _$CountryDTOListCopyWithImpl(this._value, this._then);

  final CountryDTOList _value;
  // ignore: unused_field
  final $Res Function(CountryDTOList) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountryDTO>,
    ));
  }
}

/// @nodoc
abstract class _$$_CountryDTOListCopyWith<$Res>
    implements $CountryDTOListCopyWith<$Res> {
  factory _$$_CountryDTOListCopyWith(
          _$_CountryDTOList value, $Res Function(_$_CountryDTOList) then) =
      __$$_CountryDTOListCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(includeIfNull: false) List<CountryDTO> data});
}

/// @nodoc
class __$$_CountryDTOListCopyWithImpl<$Res>
    extends _$CountryDTOListCopyWithImpl<$Res>
    implements _$$_CountryDTOListCopyWith<$Res> {
  __$$_CountryDTOListCopyWithImpl(
      _$_CountryDTOList _value, $Res Function(_$_CountryDTOList) _then)
      : super(_value, (v) => _then(v as _$_CountryDTOList));

  @override
  _$_CountryDTOList get _value => super._value as _$_CountryDTOList;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_CountryDTOList(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountryDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryDTOList extends _CountryDTOList {
  const _$_CountryDTOList(
      {@JsonKey(includeIfNull: false) final List<CountryDTO> data = const []})
      : _data = data,
        super._();

  factory _$_CountryDTOList.fromJson(Map<String, dynamic> json) =>
      _$$_CountryDTOListFromJson(json);

  final List<CountryDTO> _data;
  @override
  @JsonKey(includeIfNull: false)
  List<CountryDTO> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CountryDTOList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryDTOList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_CountryDTOListCopyWith<_$_CountryDTOList> get copyWith =>
      __$$_CountryDTOListCopyWithImpl<_$_CountryDTOList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryDTOListToJson(this);
  }
}

abstract class _CountryDTOList extends CountryDTOList {
  const factory _CountryDTOList(
          {@JsonKey(includeIfNull: false) final List<CountryDTO> data}) =
      _$_CountryDTOList;
  const _CountryDTOList._() : super._();

  factory _CountryDTOList.fromJson(Map<String, dynamic> json) =
      _$_CountryDTOList.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  List<CountryDTO> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CountryDTOListCopyWith<_$_CountryDTOList> get copyWith =>
      throw _privateConstructorUsedError;
}
