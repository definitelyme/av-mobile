import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/field_object/field_object_exception.dart';
import 'package:auctionvillage/core/domain/validator/validator.dart';
import 'package:dartz/dartz.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

class MediaField extends StringFieldObject {
  static const MediaField DEFAULT = MediaField._(Right(AppAssets.unnamed));

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory MediaField(String? input, {bool validate = true}) =>
      MediaField._(Validator.isEmpty(input).flatMap((a) => !validate ? right(a) : Validator.validUrl(a)));

  const MediaField._(this.value);

  @override
  MediaField copyWith(String? newValue) => MediaField(newValue);
}

class UploadableMedia {
  final String? id;
  final MediaField image;
  final SendProgressCallback? progress;

  const UploadableMedia(this.image, {required this.id, this.progress});

  UploadableMedia merge(UploadableMedia? other) =>
      UploadableMedia(other?.image ?? image, id: other?.id ?? id, progress: other?.progress ?? progress);

  UploadableMedia copyWith({MediaField? image, String? id, SendProgressCallback? progress}) =>
      UploadableMedia(image ?? this.image, id: id ?? this.id, progress: progress ?? this.progress);

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is UploadableMedia && other.image.getOrNull == image.getOrNull;
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(id), const DeepCollectionEquality().hash(image));

  @override
  String toString() => 'UploadableMedia(url: ${image.getOrNull})';
}

extension MediaFieldX on KtList<UploadableMedia> {
  KtList<UploadableMedia> addMedia(MediaField media, {String? id}) => plusElement(UploadableMedia(media, id: id));

  KtList<UploadableMedia> replaceMedia(MediaField image, {String? id, SendProgressCallback? progress, int? index}) =>
      mapIndexedNotNull((i, val) => i == index ? val?.copyWith(id: id, image: image, progress: progress) : val);
}
