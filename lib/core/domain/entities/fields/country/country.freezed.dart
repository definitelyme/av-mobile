// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of country.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Country {
  UniqueId<String?>? get id => throw _privateConstructorUsedError;
  BasicTextField get name => throw _privateConstructorUsedError;
  BasicTextField get iso => throw _privateConstructorUsedError;
  BasicTextField get dialCode => throw _privateConstructorUsedError;
  BasicTextField get flag => throw _privateConstructorUsedError;
  BasicTextField get currencyIcon => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;
  CurrencyType? get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?>? id,
      BasicTextField name,
      BasicTextField iso,
      BasicTextField dialCode,
      BasicTextField flag,
      BasicTextField currencyIcon,
      String? locale,
      CurrencyType? type});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iso = freezed,
    Object? dialCode = freezed,
    Object? flag = freezed,
    Object? currencyIcon = freezed,
    Object? locale = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      dialCode: dialCode == freezed
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      currencyIcon: currencyIcon == freezed
          ? _value.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CurrencyType?,
    ));
  }
}

/// @nodoc
abstract class _$$_CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$_CountryCopyWith(
          _$_Country value, $Res Function(_$_Country) then) =
      __$$_CountryCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?>? id,
      BasicTextField name,
      BasicTextField iso,
      BasicTextField dialCode,
      BasicTextField flag,
      BasicTextField currencyIcon,
      String? locale,
      CurrencyType? type});
}

/// @nodoc
class __$$_CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$$_CountryCopyWith<$Res> {
  __$$_CountryCopyWithImpl(_$_Country _value, $Res Function(_$_Country) _then)
      : super(_value, (v) => _then(v as _$_Country));

  @override
  _$_Country get _value => super._value as _$_Country;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iso = freezed,
    Object? dialCode = freezed,
    Object? flag = freezed,
    Object? currencyIcon = freezed,
    Object? locale = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Country(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      dialCode: dialCode == freezed
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      currencyIcon: currencyIcon == freezed
          ? _value.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as BasicTextField,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CurrencyType?,
    ));
  }
}

/// @nodoc

class _$_Country extends _Country {
  const _$_Country(
      {this.id,
      required this.name,
      required this.iso,
      required this.dialCode,
      required this.flag,
      required this.currencyIcon,
      this.locale = 'en',
      this.type})
      : super._();

  @override
  final UniqueId<String?>? id;
  @override
  final BasicTextField name;
  @override
  final BasicTextField iso;
  @override
  final BasicTextField dialCode;
  @override
  final BasicTextField flag;
  @override
  final BasicTextField currencyIcon;
  @override
  @JsonKey()
  final String? locale;
  @override
  final CurrencyType? type;

  @override
  String toString() {
    return 'Country(id: $id, name: $name, iso: $iso, dialCode: $dialCode, flag: $flag, currencyIcon: $currencyIcon, locale: $locale, type: $type)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_CountryCopyWith<_$_Country> get copyWith =>
      __$$_CountryCopyWithImpl<_$_Country>(this, _$identity);
}

abstract class _Country extends Country {
  const factory _Country(
      {final UniqueId<String?>? id,
      required final BasicTextField name,
      required final BasicTextField iso,
      required final BasicTextField dialCode,
      required final BasicTextField flag,
      required final BasicTextField currencyIcon,
      final String? locale,
      final CurrencyType? type}) = _$_Country;
  const _Country._() : super._();

  @override
  UniqueId<String?>? get id;
  @override
  BasicTextField get name;
  @override
  BasicTextField get iso;
  @override
  BasicTextField get dialCode;
  @override
  BasicTextField get flag;
  @override
  BasicTextField get currencyIcon;
  @override
  String? get locale;
  @override
  CurrencyType? get type;
  @override
  @JsonKey(ignore: true)
  _$$_CountryCopyWith<_$_Country> get copyWith =>
      throw _privateConstructorUsedError;
}
