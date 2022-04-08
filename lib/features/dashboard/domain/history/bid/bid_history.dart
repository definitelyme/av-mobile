library bid_history.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'bid_history.freezed.dart';

@freezed
@immutable
class BidHistory with _$BidHistory {
  const BidHistory._();

  const factory BidHistory({
    required AmountField<double> totalAuctionsParticipated,
    required AmountField<double> totalWinningBid,
    required AmountField<double> totalAmountSpent,
    @Default(KtList.empty()) KtList<Deal> deals,
  }) = _BidHistory;

  KtMap<DateTime, KtList<Deal>> get grouped {
    return deals.sortedWith((a, b) => b.createdAt!.compareTo(a.createdAt!)).groupBy(
          (it) => DateTime(
            it.createdAt!.year,
            it.createdAt!.month,
            it.createdAt!.day,
          ),
        );
  }

  factory BidHistory.blank({
    double? totalAuctionsParticipated,
    double? totalWinningBid,
    double? totalAmountSpent,
    KtList<Deal> history = const KtList.empty(),
  }) =>
      BidHistory(
        totalAmountSpent: AmountField(totalAmountSpent ?? 0),
        totalAuctionsParticipated: AmountField(totalAuctionsParticipated ?? 0),
        totalWinningBid: AmountField(totalWinningBid ?? 0),
        deals: history,
      );

  BidHistory merge(BidHistory? other, {bool nextPage = false}) => copyWith(
        totalAuctionsParticipated:
            other?.totalAuctionsParticipated.isNotNull((it) => it as AmountField<double>, orElse: (_) => totalAuctionsParticipated) ??
                totalAuctionsParticipated,
        totalWinningBid:
            other?.totalWinningBid.isNotNull((it) => it as AmountField<double>, orElse: (_) => totalWinningBid) ?? totalWinningBid,
        totalAmountSpent:
            other?.totalAmountSpent.isNotNull((it) => it as AmountField<double>, orElse: (_) => totalAmountSpent) ?? totalAmountSpent,
        deals: other != null ? (!nextPage ? other.deals : deals.plusIfAbsent(other.deals)) : deals,
      );
}
