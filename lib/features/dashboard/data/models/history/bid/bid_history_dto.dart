// ignore_for_file: unused_element

library bid_history_dto.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'bid_history_dto.g.dart';
part 'bid_history_dto.freezed.dart';

BidHistoryDTO deserializeBidHistoryDTO(Map<String, dynamic> json) => BidHistoryDTO.fromJson(json);
Map<String, dynamic> serializeBidHistoryDTO(BidHistoryDTO object) => object.toJson();

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class BidHistoryDTO with _$BidHistoryDTO {
  const BidHistoryDTO._();

  const factory BidHistoryDTO({
    @JsonKey(name: '_meta') MetaDTO? meta,
    required _BidHistoryDTOData data,
  }) = _BidHistoryDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory BidHistoryDTO.fromJson(Map<String, dynamic> json) => _$BidHistoryDTOFromJson(json);

  /// Maps the Data Transfer Object to a BidHistory Object.
  BidHistory get domain => data.domain;
}

@immutable
@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class _BidHistoryDTOData with _$_BidHistoryDTOData {
  const _BidHistoryDTOData._();

  const factory _BidHistoryDTOData({
    @IntegerSerializer() double? totalAuctionsParticipated,
    @IntegerSerializer() double? totalWinningBid,
    @IntegerSerializer() double? totalAmountSpent,
    @Default([]) List<DealDTOData> dealHistory,
  }) = __BidHistoryDTOData;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory _BidHistoryDTOData.fromJson(Map<String, dynamic> json) => _$_BidHistoryDTODataFromJson(json);

  /// Maps the Data Transfer Object to a BidHistory Object.
  BidHistory get domain => BidHistory.blank(
        totalAuctionsParticipated: totalAuctionsParticipated,
        totalWinningBid: totalWinningBid,
        totalAmountSpent: totalAmountSpent,
        history: KtList.from(dealHistory.map((e) => e.domain)),
      );
}
