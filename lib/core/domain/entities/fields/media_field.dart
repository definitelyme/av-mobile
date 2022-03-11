import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/field_object/field_object_exception.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';
import 'package:auctionvillage/utils/utils.dart';

class MediaField extends FieldObject<String?> {
  static const MediaField DEFAULT = MediaField._(Right(AppAssets.unnamed));

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory MediaField(String? input, {bool validate = true}) =>
      MediaField._(Validator.isEmpty(input)
          .flatMap((a) => !validate ? right(a) : Validator.validUrl(a)));

  const MediaField._(this.value);

  @override
  MediaField copyWith(String? newValue) => MediaField(newValue);
}
