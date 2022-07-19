library basic_text_field.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/field_object/field_object_exception.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';

typedef LengthValidator<G> = StringValidator<G> Function(G);

class BasicTextField extends StringFieldObject {
  static const BasicTextField DEFAULT_STRING = BasicTextField._(Right(''));

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory BasicTextField(String? input, {LengthValidator<String?>? other, bool validate = true}) =>
      BasicTextField._(!validate ? right(input) : Validator.isEmpty(input).flatMap(other ?? (a) => right(a)));

  const BasicTextField._(this.value);

  @override
  BasicTextField copyWith(String? newValue, {bool validate = true, LengthValidator<String?>? other}) =>
      BasicTextField(newValue, validate: validate, other: other);

  BasicTextField operator +(String other) => copyWith(getOrEmpty + other);

  BasicTextField operator -(String other) => copyWith(getOrEmpty.replaceAll(other, ''));
}
