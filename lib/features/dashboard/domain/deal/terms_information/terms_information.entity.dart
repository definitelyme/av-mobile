library terms_information.entity.dart;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_information.entity.freezed.dart';

@freezed
@immutable
class TermsInformation with _$TermsInformation {
  const TermsInformation._();

  const factory TermsInformation({
    required DateTime? yearOfPurchase,
    @Default(false) bool hasRepairHistory,
    @Default(false) bool hasRefundPolicy,
    @Default(false) bool hasWarranty,
  }) = _TermsInformation;

  factory TermsInformation.blank({
    bool? repairHistory,
    bool? refundPolicy,
    bool? warranty,
    DateTime? yearOfPurchase,
  }) =>
      TermsInformation(
        hasWarranty: warranty ?? false,
        hasRefundPolicy: refundPolicy ?? false,
        hasRepairHistory: repairHistory ?? false,
        yearOfPurchase: yearOfPurchase,
      );
}
