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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CountryTearOff {
  const _$CountryTearOff();

  _Country call(
      {UniqueId<String?>? id,
      required BasicTextField<String?> name,
      required BasicTextField<String?> iso,
      required BasicTextField<String?> dialCode,
      required BasicTextField<String?> flag,
      required BasicTextField<String?> currencyIcon,
      String locale = 'en',
      CurrencyType? type}) {
    return _Country(
      id: id,
      name: name,
      iso: iso,
      dialCode: dialCode,
      flag: flag,
      currencyIcon: currencyIcon,
      locale: locale,
      type: type,
    );
  }
}

/// @nodoc
const $Country = _$CountryTearOff();

/// @nodoc
mixin _$Country {
  UniqueId<String?>? get id => throw _privateConstructorUsedError;
  BasicTextField<String?> get name => throw _privateConstructorUsedError;
  BasicTextField<String?> get iso => throw _privateConstructorUsedError;
  BasicTextField<String?> get dialCode => throw _privateConstructorUsedError;
  BasicTextField<String?> get flag => throw _privateConstructorUsedError;
  BasicTextField<String?> get currencyIcon =>
      throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
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
      BasicTextField<String?> name,
      BasicTextField<String?> iso,
      BasicTextField<String?> dialCode,
      BasicTextField<String?> flag,
      BasicTextField<String?> currencyIcon,
      String locale,
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
              as BasicTextField<String?>,
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      dialCode: dialCode == freezed
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      currencyIcon: currencyIcon == freezed
          ? _value.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CurrencyType?,
    ));
  }
}

/// @nodoc
abstract class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) then) =
      __$CountryCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?>? id,
      BasicTextField<String?> name,
      BasicTextField<String?> iso,
      BasicTextField<String?> dialCode,
      BasicTextField<String?> flag,
      BasicTextField<String?> currencyIcon,
      String locale,
      CurrencyType? type});
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(_Country _value, $Res Function(_Country) _then)
      : super(_value, (v) => _then(v as _Country));

  @override
  _Country get _value => super._value as _Country;

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
    return _then(_Country(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      dialCode: dialCode == freezed
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      currencyIcon: currencyIcon == freezed
          ? _value.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
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
  final BasicTextField<String?> name;
  @override
  final BasicTextField<String?> iso;
  @override
  final BasicTextField<String?> dialCode;
  @override
  final BasicTextField<String?> flag;
  @override
  final BasicTextField<String?> currencyIcon;
  @JsonKey()
  @override
  final String locale;
  @override
  final CurrencyType? type;

  @override
  String toString() {
    return 'Country(id: $id, name: $name, iso: $iso, dialCode: $dialCode, flag: $flag, currencyIcon: $currencyIcon, locale: $locale, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Country &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.iso, iso) &&
            const DeepCollectionEquality().equals(other.dialCode, dialCode) &&
            const DeepCollectionEquality().equals(other.flag, flag) &&
            const DeepCollectionEquality()
                .equals(other.currencyIcon, currencyIcon) &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(iso),
      const DeepCollectionEquality().hash(dialCode),
      const DeepCollectionEquality().hash(flag),
      const DeepCollectionEquality().hash(currencyIcon),
      const DeepCollectionEquality().hash(locale),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);
}

abstract class _Country extends Country {
  const factory _Country(
      {UniqueId<String?>? id,
      required BasicTextField<String?> name,
      required BasicTextField<String?> iso,
      required BasicTextField<String?> dialCode,
      required BasicTextField<String?> flag,
      required BasicTextField<String?> currencyIcon,
      String locale,
      CurrencyType? type}) = _$_Country;
  const _Country._() : super._();

  @override
  UniqueId<String?>? get id;
  @override
  BasicTextField<String?> get name;
  @override
  BasicTextField<String?> get iso;
  @override
  BasicTextField<String?> get dialCode;
  @override
  BasicTextField<String?> get flag;
  @override
  BasicTextField<String?> get currencyIcon;
  @override
  String get locale;
  @override
  CurrencyType? get type;
  @override
  @JsonKey(ignore: true)
  _$CountryCopyWith<_Country> get copyWith =>
      throw _privateConstructorUsedError;
}
