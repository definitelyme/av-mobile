library product.entity.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:dartz/dartz.dart' hide id;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'product.entity.freezed.dart';

@freezed
@immutable
class Product extends BaseEntity with _$Product {
  static DateTime startDate = DateTime.now();
  static DateTime endDate = DateTime(DateTime.now().year + 1000);

  const Product._();

  const factory Product({
    required UniqueId<String?> id,
    required BasicTextField<String?> name,
    required BasicTextField<String?> description,
    @Default(KtList.empty()) KtList<_MediaField> photos,
    @Default(false) bool isActive,
    @Default(false) bool isFavorite,
    @Default(DealStatus.pending) DealStatus dealStatus,
    required BasicTextField<String?> lga,
    required BasicTextField<String?> state,
    User? vendor,
    Deal? deal,
    Country? country,
    DealCategory? category,
    BrandInformation? brandInformation,
    ShippingInformation? shippingInformation,
    TermsInformation? termsInformation,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Product;

  factory Product.blank({
    String? id,
    String? name,
    String? lga,
    String? state,
    String? description,
    bool? active,
    bool? isFavorite,
    DealStatus? dealStatus,
    List<String> photos = const [],
    User? vendor,
    Deal? deal,
    DealCategory? category,
    BrandInformation? brand,
    ShippingInformation? shipping,
    TermsInformation? terms,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Product(
        id: UniqueId.fromExternal(id),
        category: category,
        deal: deal,
        isActive: active ?? false,
        isFavorite: isFavorite ?? false,
        dealStatus: dealStatus ?? DealStatus.pending,
        vendor: vendor,
        photos: photos.map((e) => _MediaField(MediaField(e), id: null)).toImmutableList(),
        name: BasicTextField(name),
        lga: BasicTextField(lga),
        state: BasicTextField(state),
        description: BasicTextField(description),
        brandInformation: brand,
        shippingInformation: shipping,
        termsInformation: terms,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  bool get isBlank => this == Product.blank();

  Product merge(Product? other) => copyWith(
        id: other?.id.value != null ? other!.id : id,
        deal: deal?.merge(other?.deal),
        category: category?.merge(other?.category),
        isActive: other?.isActive ?? isActive,
        isFavorite: other?.isFavorite ?? isFavorite,
        dealStatus: other?.dealStatus ?? dealStatus,
        vendor: other?.vendor ?? vendor,
        photos: other?.photos != null ? other!.photos : photos,
        name: other?.name.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => name) ?? name,
        lga: other?.lga.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => lga) ?? lga,
        state: other?.state.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => state) ?? state,
        description: other?.description.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => description) ?? description,
        brandInformation: brandInformation?.merge(other?.brandInformation),
        shippingInformation: shippingInformation?.merge(other?.shippingInformation),
        termsInformation: termsInformation?.merge(other?.termsInformation),
        createdAt: other?.createdAt ?? createdAt,
        updatedAt: other?.updatedAt ?? updatedAt,
      );

  Option<FieldObjectException<dynamic>> get failure => name.mapped.andThen(lga.mapped).andThen(state.mapped).fold(
        (f) => some(f),
        (_) {
          return brandInformation?.failure
                  .andThen(shippingInformation?.failure ?? none())
                  .andThen(termsInformation?.failure ?? none())
                  .andThen(deal?.failure ?? none()) ??
              none();
        },
      );
}

class _MediaField {
  final String? id;
  final MediaField image;
  final SendProgressCallback? progress;

  const _MediaField(this.image, {required this.id, this.progress});

  _MediaField merge(_MediaField? other) => _MediaField(other?.image ?? image, id: other?.id ?? id, progress: other?.progress ?? progress);

  _MediaField copyWith({MediaField? image, String? id, SendProgressCallback? progress}) =>
      _MediaField(image ?? this.image, id: id ?? this.id, progress: progress ?? this.progress);

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is _MediaField && other.image.getOrNull == image.getOrNull;
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(id), const DeepCollectionEquality().hash(image));

  @override
  String toString() => '_MediaField(url: ${image.getOrNull})';
}

extension MediaFieldX on KtList<_MediaField> {
  KtList<_MediaField> addMedia(MediaField media, {String? id}) => plusElement(_MediaField(media, id: id));

  KtList<_MediaField> replaceMedia(MediaField image, {String? id, SendProgressCallback? progress, int? index}) =>
      mapIndexedNotNull((i, val) => i == index ? val?.copyWith(id: id, image: image, progress: progress) : val);
}
