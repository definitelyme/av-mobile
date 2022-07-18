library terms_information.entity.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_information.entity.freezed.dart';

@freezed
@immutable
class TermsInformation with _$TermsInformation {
  const TermsInformation._();

  const factory TermsInformation({
    required BasicTextField yearOfPurchase,
    @Default(false) bool hasRepairHistory,
    @Default(false) bool hasRefundPolicy,
    required BasicTextField warranty,
    required BasicTextField otherInformation,
  }) = _TermsInformation;

  bool get hasWarranty => warranty.getOrNull != null && warranty.getOrNull!.isNotEmpty;

  factory TermsInformation.blank({
    bool? repairHistory,
    bool? refundPolicy,
    String? warranty,
    int? yearOfPurchase,
    String? otherInformation,
  }) =>
      TermsInformation(
        warranty: BasicTextField(warranty),
        hasRefundPolicy: refundPolicy ?? false,
        hasRepairHistory: repairHistory ?? false,
        yearOfPurchase: BasicTextField(yearOfPurchase == null ? null : yearOfPurchase.toString()),
        otherInformation: BasicTextField(otherInformation),
      );

  TermsInformation merge(TermsInformation? other) => copyWith(
        yearOfPurchase: other?.yearOfPurchase.isNotNull((it) => it as BasicTextField, orElse: (_) => yearOfPurchase) ?? yearOfPurchase,
        hasRepairHistory: other?.hasRepairHistory ?? hasRepairHistory,
        hasRefundPolicy: other?.hasRefundPolicy ?? hasRefundPolicy,
        warranty: other?.warranty.isNotNull((it) => it as BasicTextField, orElse: (_) => warranty) ?? warranty,
        otherInformation:
            other?.otherInformation.isNotNull((it) => it as BasicTextField, orElse: (_) => otherInformation) ?? otherInformation,
      );

  Option<FieldObjectException<dynamic>> get failure =>
      yearOfPurchase.mapped.andThen(warranty.mapped).andThen(otherInformation.mapped).fold((f) => some(f), (_) => none());
}
