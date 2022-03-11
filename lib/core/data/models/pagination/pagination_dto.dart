library meta_field;

import 'package:auctionvillage/core/data/models/pagination/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_dto.freezed.dart';
part 'pagination_dto.g.dart';

PaginationDTO deserializePaginationDTO(Map<String, dynamic> json) =>
    PaginationDTO.fromJson(json);
Map<String, dynamic> serializePaginationDTO(PaginationDTO object) =>
    object.toJson();

@freezed
@immutable
class PaginationDTO with _$PaginationDTO {
  const PaginationDTO._();

  const factory PaginationDTO({
    @JsonKey(name: 'current') int? currentPage,
    int? from,
    @JsonKey(name: 'last') int? lastPage,
    @JsonKey(name: 'next') int? next,
    @JsonKey(name: 'next_page') String? nextPage,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    int? to,
    @JsonKey(name: 'total_count') int? total,
  }) = _PaginationDTO;

  factory PaginationDTO.fromJson(Map<String, dynamic> json) =>
      _$PaginationDTOFromJson(json);

  bool get endOfList => currentPage == lastPage;

  static const blank = PaginationDTO(currentPage: 1, perPage: Const.kPerPage);
}
