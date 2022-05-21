library rating.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'rating.entity.freezed.dart';

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class Rating with _$Rating {
  const Rating._();

  const factory Rating({
    required BasicTextField<double> delivery,
    required BasicTextField<double> responsiveness,
    required BasicTextField<double> quality,
    required BasicTextField<double> reliability,
    required BasicTextField<double> rating,
    @Default(KtList.empty()) KtList<Review> reviews,
  }) = _Rating;

  factory Rating.blank({
    double? delivery,
    double? quality,
    double? responsiveness,
    double? reliability,
    double? rating,
    List<ReviewDTO> reviews = const [],
  }) =>
      Rating(
        delivery: BasicTextField(delivery ?? 0),
        quality: BasicTextField(quality ?? 0),
        responsiveness: BasicTextField(responsiveness ?? 0),
        reliability: BasicTextField(reliability ?? 0),
        rating: BasicTextField(rating ?? 0),
        reviews: KtList.from(reviews.map((e) => e.domain)),
      );

  Rating merge(Rating? other, {bool nextPage = false}) => Rating(
        delivery: other?.delivery.isNotNull((it) => it as BasicTextField<double>, orElse: (_) => delivery) ?? delivery,
        quality: other?.quality.isNotNull((it) => it as BasicTextField<double>, orElse: (_) => quality) ?? quality,
        responsiveness:
            other?.responsiveness.isNotNull((it) => it as BasicTextField<double>, orElse: (_) => responsiveness) ?? responsiveness,
        reliability: other?.reliability.isNotNull((it) => it as BasicTextField<double>, orElse: (_) => reliability) ?? reliability,
        rating: other?.rating.isNotNull((it) => it as BasicTextField<double>, orElse: (_) => rating) ?? rating,
        reviews: other != null ? (!nextPage ? other.reviews : reviews.plusIfAbsent(other.reviews)) : reviews,
      );
}

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class Review extends BaseEntity with _$Review {
  const Review._();

  const factory Review({
    required UniqueId<String?> id,
    required BasicTextField<double> delivery,
    required BasicTextField<double> quality,
    required BasicTextField<double> responsiveness,
    required BasicTextField<double> reliability,
    required BasicTextField<double> rating,
    required BasicTextField<String?> review,
    User? user,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Review;

  factory Review.blank({
    String? id,
    double? delivery,
    double? quality,
    double? responsiveness,
    double? reliability,
    double? rating,
    String? review,
    User? user,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Review(
        id: UniqueId.fromExternal(id),
        delivery: BasicTextField<double>(delivery ?? 0),
        quality: BasicTextField<double>(quality ?? 0),
        responsiveness: BasicTextField<double>(responsiveness ?? 0),
        reliability: BasicTextField<double>(reliability ?? 0),
        rating: BasicTextField<double>(rating ?? 0),
        review: BasicTextField<String?>(review),
        user: user,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
