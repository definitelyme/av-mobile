library deal_plan.dataclass.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'deal_plan.dataclass.g.dart';
part 'deal_plan.dataclass.freezed.dart';

DealPlanDTO deserializeDealPlanDTO(Map<String, dynamic> json) => DealPlanDTO.fromJson(json);
Map<String, dynamic> serializeDealPlanDTO(DealPlanDTO object) => object.toJson();

@immutable
@Freezed(maybeMap: false)
class DealPlanDTO with _$DealPlanDTO {
  const factory DealPlanDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required DealPlanDTOData data,
  }) = _DealPlanDTO;

  const DealPlanDTO._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DealPlanDTO.fromJson(Map<String, dynamic> json) => _$DealPlanDTOFromJson(json);

  /// Maps the Data Transfer Object to a Deal Object.
  DealPlan get domain => data.domain;
}

@immutable
@Freezed(maybeMap: false)
class DealPlanDTOData with _$DealPlanDTOData {
  const factory DealPlanDTOData({
    @JsonKey(name: '_id') String? id,
    @DoubleSerializer() double? amount,
    @IntegerSerializer() int? priority,
    @Default([]) List<String> features,
    @JsonKey(toJson: DealPlanTypeSerializer.toJsonString) @DealPlanTypeSerializer() DealPlanType? name,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _DealPlanDTOData;

  /// Maps DealPlan to a Data Transfer Object.
  factory DealPlanDTOData.fromDomain(DealPlan? instance) => DealPlanDTOData(
        amount: instance?.amount.getOrNull,
        priority: instance?.priority.getOrNull,
        features: instance?.features.map((e) => e.toString()).asList() ?? [],
        name: instance?.name,
      );

  const DealPlanDTOData._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DealPlanDTOData.fromJson(Map<String, dynamic> json) => _$DealPlanDTODataFromJson(json);

  /// Maps the Data Transfer Object to a DealPlan Object.
  DealPlan get domain => DealPlan.blank(
        id: id,
        amount: amount,
        priority: priority,
        features: features,
        name: name,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

DealPlanListDTO deserializeDealPlanListDTO(Map<String, dynamic> json) => DealPlanListDTO.fromJson(json);
Map<String, dynamic> serializeDealPlanListDTO(DealPlanListDTO object) => object.toJson();

@immutable
@Freezed(maybeMap: false)
class DealPlanListDTO with _$DealPlanListDTO {
  const factory DealPlanListDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    @Default([]) List<DealPlanDTOData> data,
  }) = _DealPlanListDTO;

  const DealPlanListDTO._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DealPlanListDTO.fromJson(Map<String, dynamic> json) => _$DealPlanListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<Deal> Object.
  KtList<DealPlan> get domain => KtList.from(data.map((e) => e.domain));
}
