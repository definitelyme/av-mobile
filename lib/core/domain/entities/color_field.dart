library color_field.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/painting.dart';

/// Contains power-packed methods for any InputField type.
class ColorField extends FieldObject<Color> {
  static const ColorField DEFAULT = ColorField._(Right(Color(0xff000000)));

  @override
  final Either<FieldObjectException<String>, Color> value;

  factory ColorField(Color? input) {
    return ColorField._(Validator.isEmpty(input));
  }

  const ColorField._(this.value);

  @override
  ColorField copyWith(Color newValue) => ColorField(newValue);
}
