library country.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';

@freezed
@immutable
class Country with _$Country implements Comparable<Country> {
  static const Country DEFAULT = Country(
    iso: BasicTextField.DEFAULT_STRING,
    name: BasicTextField.DEFAULT_STRING,
    flag: BasicTextField.DEFAULT_STRING,
    dialCode: BasicTextField.DEFAULT_STRING,
    currencyIcon: BasicTextField.DEFAULT_STRING,
  );

  static const String defaultISO = 'NG';

  const factory Country({
    UniqueId<String?>? id,
    required BasicTextField<String?> name,
    required BasicTextField<String?> iso,
    required BasicTextField<String?> dialCode,
    required BasicTextField<String?> flag,
    required BasicTextField<String?> currencyIcon,
    @Default('en') String locale,
    CurrencyType? type,
  }) = _Country;

  const Country._();

  @override
  int compareTo(Country other) {
    if (!name.isValid) return -1;
    return name.getOrEmpty!.compareTo(other.name.getOrEmpty!);
  }
}
