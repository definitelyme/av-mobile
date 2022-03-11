library terms_information_dto.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_information_dto.g.dart';
part 'terms_information_dto.freezed.dart';

@freezed
class TermsInformationDTO with _$TermsInformationDTO {
  const TermsInformationDTO._();

  factory TermsInformationDTO({
    int? yearOfPurchase,
    @BooleanSerializer() bool? repairHistory,
    @BooleanSerializer() bool? refundPolicy,
    @BooleanSerializer() bool? warranty,
  }) = _TermsInformationDTO;

  factory TermsInformationDTO.fromJson(Map<String, dynamic> json) =>
      _$TermsInformationDTOFromJson(json);

  /// Maps the Data Transfer Object to a TermsInformation Object.
  TermsInformation get domain => TermsInformation.blank(
        yearOfPurchase:
            yearOfPurchase != null ? DateTime(yearOfPurchase!) : null,
        refundPolicy: refundPolicy!,
        warranty: warranty!,
        repairHistory: repairHistory!,
      );
}
