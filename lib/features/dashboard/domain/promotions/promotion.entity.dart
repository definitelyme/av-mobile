library promotion.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion.entity.freezed.dart';

@freezed
@immutable
class Promotion extends MediaDecorator with _$Promotion implements BaseEntity {
  const Promotion._();

  const factory Promotion({
    required UniqueId<String?> id,
    required MediaField url,
    required AttachmentMime mime,
    required MediaField streamUrl,
    required BasicTextField<String?> description,
    DateTime? stopShowingAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _Promotion;

  factory Promotion.blank() => Promotion(
        id: UniqueId.fromExternal(null),
        url: MediaField(null),
        mime: AttachmentMime.unknown,
        streamUrl: MediaField(null),
        description: BasicTextField(null),
      );

  factory Promotion.dummy() => Promotion(
        id: UniqueId.v4(),
        url: MediaField(AppAssets.homeCarousel, validate: false),
        mime: AttachmentMime.png,
        streamUrl: MediaField(AppAssets.homeCarousel, validate: false),
        description: BasicTextField(
            'Hp 15 AMD - 12GB RAM 1TB HDD Windows 10 Pro- 2.3GHz…'),
      );
}
