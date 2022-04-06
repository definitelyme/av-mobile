library deal_plan.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'deal_plan.entity.freezed.dart';

@immutable
@Freezed(maybeMap: false, maybeWhen: false)
class DealPlan extends BaseEntity with _$DealPlan {
  const DealPlan._();

  const factory DealPlan({
    required UniqueId<String?> id,
    required AmountField<double> amount,
    required BasicTextField<int?> priority,
    @Default(KtList.empty()) KtList<String?> features,
    @Default(DealPlanType.free) DealPlanType name,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _DealPlan;

  bool get isRecommended => name == DealPlanType.professional;

  factory DealPlan.blank({
    String? id,
    double? amount,
    int? priority,
    List<String> features = const [],
    DealPlanType? name,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      DealPlan(
        id: UniqueId.fromExternal(id),
        amount: AmountField(amount ?? 0),
        priority: BasicTextField(priority),
        features: KtList.from(features),
        name: name ?? DealPlanType.free,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
