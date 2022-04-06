library phone.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/field_object/field_object_exception.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dartz/dartz.dart';

class Phone extends FieldObject<String?> {
  static const Phone DEFAULT = Phone._(Right(''), country: Country.DEFAULT);

  @override
  final Either<FieldObjectException<String>, String?> value;
  final Country? country;

  factory Phone(String? phone, {Country? country, FIELD_VALIDATION? mode}) {
    return Phone._(
      Validator.phoneNumberValidator(phone, mode: mode),
      country: country,
    );
  }

  bool get isEmpty => value.fold((_) => true, (r) => r!.isEmpty);

  Phone? get formatted => value.fold(
        (f) => null,
        (val) {
          if (country?.dialCode.getOrNull != null) {
            if (val!.contains('${country!.dialCode.getOrEmpty}'))
              return Phone('$val'.trim().trimWhiteSpaces().removeNewLines(), country: country);
            else {
              final value = '${country!.dialCode.getOrEmpty}$val';
              return Phone((value.startsWith('+') ? value : '+$value').trim().trimWhiteSpaces().removeNewLines(), country: country);
            }
          } else
            return Phone('$val'.trim().trimWhiteSpaces().removeNewLines(), country: country);
        },
      );

  Phone? get noDialCode => value.fold(
        (f) => null,
        (val) {
          if (country != null) {
            final _replaced = Phone(val?.replaceAll(country!.dialCode.getOrEmpty!, '').replaceAll('+', ''), country: country);
            return country?.dialCode.getOrNull == null ? null : _replaced;
          }
          return Phone(val?.replaceAll('+', ''), country: country);
        },
      );

  const Phone._(this.value, {this.country});

  @override
  Phone copyWith(
    String? value, {
    Country? country,
    FIELD_VALIDATION? mode,
  }) =>
      Phone(value, country: country, mode: mode);
}
