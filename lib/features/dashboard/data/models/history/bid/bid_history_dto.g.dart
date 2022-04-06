// GENERATED CODE - DO NOT MODIFY BY HAND

part of bid_history_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BidHistoryDTO _$$_BidHistoryDTOFromJson(Map<String, dynamic> json) =>
    _$_BidHistoryDTO(
      meta: json['_meta'] == null
          ? null
          : MetaDTO.fromJson(json['_meta'] as Map<String, dynamic>),
      data: _BidHistoryDTOData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BidHistoryDTOToJson(_$_BidHistoryDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_meta', instance.meta?.toJson());
  val['data'] = instance.data.toJson();
  return val;
}

_$__BidHistoryDTOData _$$__BidHistoryDTODataFromJson(
        Map<String, dynamic> json) =>
    _$__BidHistoryDTOData(
      totalAuctionsParticipated:
          (json['totalAuctionsParticipated'] as num?)?.toDouble(),
      totalWinningBid: (json['totalWinningBid'] as num?)?.toDouble(),
      totalAmountSpent: (json['totalAmountSpent'] as num?)?.toDouble(),
      dealHistory: (json['dealHistory'] as List<dynamic>?)
              ?.map((e) => DealDTOData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$__BidHistoryDTODataToJson(
    _$__BidHistoryDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('totalAuctionsParticipated', instance.totalAuctionsParticipated);
  writeNotNull('totalWinningBid', instance.totalWinningBid);
  writeNotNull('totalAmountSpent', instance.totalAmountSpent);
  val['dealHistory'] = instance.dealHistory.map((e) => e.toJson()).toList();
  return val;
}
