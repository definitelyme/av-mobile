// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of country_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryDTO _$CountryDTOFromJson(Map<String, dynamic> json) {
  return _CountryDTO.fromJson(json);
}

/// @nodoc
mixin _$CountryDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'isoCode')
  String? get iso => throw _privateConstructorUsedError;
  @JsonKey(name: 'dialCode')
  String? get dialCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'flag')
  String? get flagUrl => throw _privateConstructorUsedError;
  @CurrencyTypeSerializer()
  CurrencyType? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_icon')
  String? get currencyIcon => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDTOCopyWith<CountryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDTOCopyWith<$Res> {
  factory $CountryDTOCopyWith(
          CountryDTO value, $Res Function(CountryDTO) then) =
      _$CountryDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      @JsonKey(name: 'isoCode') String? iso,
      @JsonKey(name: 'dialCode') String? dialCode,
      @JsonKey(name: 'flag') String? flagUrl,
      @CurrencyTypeSerializer() CurrencyType? currency,
      @JsonKey(name: 'currency_icon') String? currencyIcon,
      String? locale});
}

/// @nodoc
class _$CountryDTOCopyWithImpl<$Res> implements $CountryDTOCopyWith<$Res> {
  _$CountryDTOCopyWithImpl(this._value, this._then);

  final CountryDTO _value;
  // ignore: unused_field
  final $Res Function(CountryDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iso = freezed,
    Object? dialCode = freezed,
    Object? flagUrl = freezed,
    Object? currency = freezed,
    Object? currencyIcon = freezed,
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String?,
      dialCode: dialCode == freezed
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String?,
      flagUrl: flagUrl == freezed
          ? _value.flagUrl
          : flagUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyType?,
      currencyIcon: currencyIcon == freezed
          ? _value.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CountryDTOCopyWith<$Res>
    implements $CountryDTOCopyWith<$Res> {
  factory _$$_CountryDTOCopyWith(
          _$_CountryDTO value, $Res Function(_$_CountryDTO) then) =
      __$$_CountryDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      @JsonKey(name: 'isoCode') String? iso,
      @JsonKey(name: 'dialCode') String? dialCode,
      @JsonKey(name: 'flag') String? flagUrl,
      @CurrencyTypeSerializer() CurrencyType? currency,
      @JsonKey(name: 'currency_icon') String? currencyIcon,
      String? locale});
}

/// @nodoc
class __$$_CountryDTOCopyWithImpl<$Res> extends _$CountryDTOCopyWithImpl<$Res>
    implements _$$_CountryDTOCopyWith<$Res> {
  __$$_CountryDTOCopyWithImpl(
      _$_CountryDTO _value, $Res Function(_$_CountryDTO) _then)
      : super(_value, (v) => _then(v as _$_CountryDTO));

  @override
  _$_CountryDTO get _value => super._value as _$_CountryDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iso = freezed,
    Object? dialCode = freezed,
    Object? flagUrl = freezed,
    Object? currency = freezed,
    Object? currencyIcon = freezed,
    Object? locale = freezed,
  }) {
    return _then(_$_CountryDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String?,
      dialCode: dialCode == freezed
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String?,
      flagUrl: flagUrl == freezed
          ? _value.flagUrl
          : flagUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyType?,
      currencyIcon: currencyIcon == freezed
          ? _value.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryDTO extends _CountryDTO {
  const _$_CountryDTO(
      {this.id,
      this.name,
      @JsonKey(name: 'isoCode') this.iso,
      @JsonKey(name: 'dialCode') this.dialCode,
      @JsonKey(name: 'flag') this.flagUrl,
      @CurrencyTypeSerializer() this.currency,
      @JsonKey(name: 'currency_icon') this.currencyIcon,
      this.locale})
      : super._();

  factory _$_CountryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CountryDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'isoCode')
  final String? iso;
  @override
  @JsonKey(name: 'dialCode')
  final String? dialCode;
  @override
  @JsonKey(name: 'flag')
  final String? flagUrl;
  @override
  @CurrencyTypeSerializer()
  final CurrencyType? currency;
  @override
  @JsonKey(name: 'currency_icon')
  final String? currencyIcon;
  @override
  final String? locale;

  @override
  String toString() {
    return 'CountryDTO(id: $id, name: $name, iso: $iso, dialCode: $dialCode, flagUrl: $flagUrl, currency: $currency, currencyIcon: $currencyIcon, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.iso, iso) &&
            const DeepCollectionEquality().equals(other.dialCode, dialCode) &&
            const DeepCollectionEquality().equals(other.flagUrl, flagUrl) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.currencyIcon, currencyIcon) &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(iso),
      const DeepCollectionEquality().hash(dialCode),
      const DeepCollectionEquality().hash(flagUrl),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(currencyIcon),
      const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  _$$_CountryDTOCopyWith<_$_CountryDTO> get copyWith =>
      __$$_CountryDTOCopyWithImpl<_$_CountryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryDTOToJson(this);
  }
}

abstract class _CountryDTO extends CountryDTO {
  const factory _CountryDTO(
      {final String? id,
      final String? name,
      @JsonKey(name: 'isoCode') final String? iso,
      @JsonKey(name: 'dialCode') final String? dialCode,
      @JsonKey(name: 'flag') final String? flagUrl,
      @CurrencyTypeSerializer() final CurrencyType? currency,
      @JsonKey(name: 'currency_icon') final String? currencyIcon,
      final String? locale}) = _$_CountryDTO;
  const _CountryDTO._() : super._();

  factory _CountryDTO.fromJson(Map<String, dynamic> json) =
      _$_CountryDTO.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'isoCode')
  String? get iso => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'dialCode')
  String? get dialCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'flag')
  String? get flagUrl => throw _privateConstructorUsedError;
  @override
  @CurrencyTypeSerializer()
  CurrencyType? get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'currency_icon')
  String? get currencyIcon => throw _privateConstructorUsedError;
  @override
  String? get locale => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CountryDTOCopyWith<_$_CountryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
