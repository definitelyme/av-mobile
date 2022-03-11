import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'google_map_place.freezed.dart';

@freezed
@immutable
class GoogleMapPlace with _$GoogleMapPlace {
  const factory GoogleMapPlace({
    required UniqueId<String?> placeId,
    @Default(KtList.empty()) KtList<AddressComponent> addressComponents,
    required BasicTextField<String?> formattedAddress,
    required BasicTextField<String?> formattedPhoneNumber,
    required BasicTextField<String?> icon,
    required BasicTextField<String?> iconBackgroundColor,
    required BasicTextField<String?> iconMaskBaseUri,
    required BasicTextField<String?> internationalPhoneNumber,
    required BasicTextField<String?> name,
    required BasicTextField<double?> rating,
    required BasicTextField<String?> reference,
    @Default(KtList.empty()) KtList<BasicTextField<String?>?> types,
    required BasicTextField<String?> url,
    required BasicTextField<String?> website,
    PlacePlusCode? plusCode,
    PlaceGeometry? geometry,
    PlaceOpeningHours? openingHours,
    @Default(PlaceStatus.ZERO_RESULTS) PlaceStatus status,
  }) = _GoogleMapPlace;

  const GoogleMapPlace._();

  static final _county = [
    AddressComponentType.administrative_area_level_1,
    AddressComponentType.political
  ];

  static final _nationState = [
    AddressComponentType.administrative_area_level_1,
    AddressComponentType.political
  ];

  static final _streetState = [
    AddressComponentType.premise,
    // AddressComponentType.sublocality,
    // AddressComponentType.political,
    // AddressComponentType.sublocality_level_1
  ];

  AddressComponent? get street => addressComponents
      .filter((p0) => p0.types.containsAll(KtList.from(_streetState)))
      .firstOrNull();

  AddressComponent? get country => addressComponents
      .singleOrNull((it) => it.types.contains(AddressComponentType.country));

  AddressComponent? get locality => addressComponents
      .singleOrNull((it) => it.types.contains(AddressComponentType.locality));

  AddressComponent? get nationState => addressComponents
      .filter((p0) =>
          p0.types.containsAll(KtList.from(_nationState)) ||
          p0.types.containsAll(KtList.from(_county)))
      .firstOrNull();

  AddressComponent? get postalCode => addressComponents.singleOrNull(
      (it) => it.types.contains(AddressComponentType.postal_code));

  AddressComponent? get sublocality => addressComponents.singleOrNull(
      (it) => it.types.contains(AddressComponentType.sublocality));

  factory GoogleMapPlace.fromQuery(String? query) => GoogleMapPlace(
        formattedAddress: BasicTextField(null),
        formattedPhoneNumber: BasicTextField(null),
        icon: BasicTextField(null),
        iconBackgroundColor: BasicTextField(null),
        iconMaskBaseUri: BasicTextField(null),
        internationalPhoneNumber: BasicTextField(null),
        name: BasicTextField(query),
        rating: BasicTextField(null),
        placeId: UniqueId.fromExternal(null),
        reference: BasicTextField(null),
        types: KtList.from([BasicTextField(null)]),
        url: BasicTextField(null),
        website: BasicTextField(null),
      );
}

@freezed
@immutable
class PlacePlusCode with _$PlacePlusCode {
  const factory PlacePlusCode({
    BasicTextField<String?>? compoundCode,
    BasicTextField<String?>? globalCode,
  }) = _PlacePlusCode;
}
