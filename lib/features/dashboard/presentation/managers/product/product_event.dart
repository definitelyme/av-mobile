part of product_bloc.dart;

abstract class ProductEvent extends BaseBlocEvent {
  const ProductEvent();
}

class _ProductEmiiterEvent extends ProductEvent {
  final ProductState state;
  final AwaitCallback? callback;

  // ignore: unused_element
  const _ProductEmiiterEvent(this.state, {this.callback});
}

@immutable
@Freezed(when: FreezedWhenOptions.none)
class ProductSyncEvent extends ProductEvent with _$ProductSyncEvent {
  const factory ProductSyncEvent.init({Product? product}) = _InitializeProductBlocEvent;
  const factory ProductSyncEvent.categoryChanged(DealCategory? category) = _CategoryChangedEvent;
  const factory ProductSyncEvent.countryChanged(Country? country) = _CountryChangedEvent;
  const factory ProductSyncEvent.dealPlanChanged(DealPlan? plan) = _DealPlanChangedEvent;
  const factory ProductSyncEvent.dealTypeChanged(DealType? type) = _DealTypeChangedEvent;
  const factory ProductSyncEvent.itemNameChanged() = _ProductNameChangedEvent;
  const factory ProductSyncEvent.stateChanged() = _ProductStateChangedEvent;
  const factory ProductSyncEvent.townChanged() = _ProductTownChangedEvent;
  const factory ProductSyncEvent.itemDescriptionChanged() = _ProductDescriptionChangedEvent;
  const factory ProductSyncEvent.brandChanged() = _ProductBrandChangedEvent;
  const factory ProductSyncEvent.brandModelChanged() = _ProductBrandModelChangedEvent;
  const factory ProductSyncEvent.transmissionChanged() = _ProductTransmissionChangedEvent;
  const factory ProductSyncEvent.weightChanged() = _ProductWeightChangedEvent;
  const factory ProductSyncEvent.basePriceChanged() = _ProductBasePriceChangedEvent;
  const factory ProductSyncEvent.lengthChanged() = _ProductLengthChangedEvent;
  const factory ProductSyncEvent.widthChanged() = _ProductWidthChangedEvent;
  const factory ProductSyncEvent.heightChanged() = _ProductHeightChangedEvent;
  const factory ProductSyncEvent.deliveryModeChanged(bool? value) = _ProductDeliveryModeChangedEvent;
  const factory ProductSyncEvent.shippingDescChanged() = _ProductShippingDescChangedEvent;
  const factory ProductSyncEvent.conditionChanged(ItemCondition? value) = _ProductConditionChangedEvent;
  const factory ProductSyncEvent.quantityTypeChanged(QuantityType? value) = _DealQuantityTypeChangedEvent;
  const factory ProductSyncEvent.biddingTypeChanged(BiddingType? value) = _DealBiddingTypeChangedEvent;
  const factory ProductSyncEvent.offerTypeChanged(OfferType? value) = _DealOfferTypeChangedEvent;
  const factory ProductSyncEvent.startDateChanged(DateTime? value) = _DealStartDateChangedEvent;
  const factory ProductSyncEvent.endDateChanged(DateTime? value) = _DealEndDateChangedEvent;
  const factory ProductSyncEvent.addressChanged() = _DealAddressChangedEvent;
  const factory ProductSyncEvent.colorChanged(Color? value) = _ProductColorChangedEvent;
  const factory ProductSyncEvent.deliveryPeriodChanged(String? value) = _ProductDeliveryPeriodChangedEvent;
  const factory ProductSyncEvent.warrantyPeriodChanged(String? value) = _ProductWarrantyPeriodChangedEvent;
  const factory ProductSyncEvent.yearOfPurchaseChanged(String? value) = _ProductYearOfPurchaseChangedEvent;
  const factory ProductSyncEvent.yearOfManufactureChanged(String? value) = _ProductYearOfManufactureChangedEvent;
  const factory ProductSyncEvent.repairHistoryChanged(bool? value) = _ProductRepairHistoryChangedEvent;
  const factory ProductSyncEvent.refundPolicyChanged(bool? value) = _ProductRefundPolicyChangedEvent;
  const factory ProductSyncEvent.termsInfoChanged(String? value) = _ProductTermsInfoChangedEvent;
  const factory ProductSyncEvent.validate([bool? validate]) = _ValidateFormFieldEvent;
  const factory ProductSyncEvent.clearForm() = _ClearFormFieldsEvent;
}

@immutable
@Freezed(when: FreezedWhenOptions.none)
class ProductStructEvent extends ProductEvent with _$ProductStructEvent {
  const factory ProductStructEvent.store(User? user, {AwaitCallback? callback}) = _StoreNewProductEvent;
}

@immutable
@Freezed(when: FreezedWhenOptions.none)
class ProductGetEvent extends ProductEvent with _$ProductGetEvent {
  const factory ProductGetEvent.categories() = _GetCategoriesEvent;
  const factory ProductGetEvent.getDealPlans({int? perPage, @Default(false) bool nextPage}) = _GetDealPlansEvent;
}

@immutable
@Freezed(when: FreezedWhenOptions.none)
class ProductPageControllerEvent extends ProductEvent with _$ProductPageControllerEvent {
  const factory ProductPageControllerEvent.attachListener() = _AttachPageControllerListener;

  const factory ProductPageControllerEvent.indexChanged(int index) = _PageIndexChangedEvent;

  const factory ProductPageControllerEvent.next(List<dynamic> items, int index) = _OnNextPage;

  const factory ProductPageControllerEvent.prev() = _OnPreviousPage;

  const factory ProductPageControllerEvent.animateTo(int page, {Duration? duration, Curve? curve}) = _OnAnimateToPage;
}

@immutable
@Freezed(when: FreezedWhenOptions.none)
class ProductMediaEvents extends ProductEvent with _$ProductMediaEvents {
  @protected
  const factory ProductMediaEvents.uploadMedia(File file, [int? index]) = _UploadMediaEvent;

  const factory ProductMediaEvents.pickCamera([int? index]) = _PickCameraEvent;

  const factory ProductMediaEvents.pickGallery([int? index]) = _PickGalleryEvent;

  const factory ProductMediaEvents.removeMedia([int? index]) = _RemoveMediaEvent;
}
