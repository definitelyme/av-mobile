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
    @StringSerializer() int? yearOfPurchase,
    @JsonKey(toJson: BooleanSerializer.toJsonString) @BooleanSerializer() bool? repairHistory,
    @JsonKey(toJson: BooleanSerializer.toJsonString) @BooleanSerializer() bool? refundPolicy,
    String? warranty,
    String? otherInfo,
  }) = _TermsInformationDTO;

  /// Maps TermsInformation to a Data Transfer Object.
  factory TermsInformationDTO.fromDomain(TermsInformation? instance) => TermsInformationDTO(
        yearOfPurchase: int.tryParse(instance?.yearOfPurchase.valueOrNull ?? ''),
        repairHistory: instance?.hasRepairHistory,
        refundPolicy: instance?.hasRefundPolicy,
        warranty: instance?.warranty.valueOrNull,
        otherInfo: instance?.otherInformation.valueOrNull,
      );

  factory TermsInformationDTO.fromJson(Map<String, dynamic> json) => _$TermsInformationDTOFromJson(json);

  /// Maps the Data Transfer Object to a TermsInformation Object.
  TermsInformation get domain => TermsInformation.blank(
        yearOfPurchase: yearOfPurchase,
        refundPolicy: refundPolicy!,
        warranty: warranty,
        repairHistory: repairHistory!,
        otherInformation: otherInfo,
      );
}
