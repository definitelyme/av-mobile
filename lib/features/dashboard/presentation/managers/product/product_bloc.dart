library product_bloc.dart;

import 'dart:async';
import 'dart:io';

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart';
import 'package:auctionvillage/features/dashboard/data/models/product/product_dto.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/deal_repository.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:localstore/localstore.dart';
import 'package:path/path.dart' as p;

part 'image_picker_mixin.dart';
part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@injectable
class ProductBloc extends HydratedBloc<ProductEvent, ProductState> with BaseBloc<ProductEvent, ProductState>, _ImagePickerMixin {
  final DealRepository _repository;
  final Localstore _localstore;
  final CloudinaryPublic _cloudinary;
  static const String collection = 'product-bloc-collection';
  static const String document = 'current-product-document';
  static const String _productKey = 'sell-page-product';
  static const String _indexKey = 'sell-page-index';
  // static const String indexKey = 'current-index-key';

  ProductBloc(this._repository, this._localstore, this._cloudinary) : super(ProductState.initial()) {
    on<_ProductEmiiterEvent>((event, emit) {
      emit(event.state);
      event.callback?.call(true);
    }, transformer: sequential());
    //
    on<ProductSyncEvent>((event, emit) async {
      await event.mapOrNull(
        init: (e) async => emit(state.copyWith(product: e.product ?? state.product)),
        categoryChanged: (e) async => emit(state.copyWith.product(category: e.category)),
        countryChanged: (e) async => emit(state.copyWith.product(country: e.country)),
        dealTypeChanged: (e) async => emit(state.copyWith(
          product: state.product.copyWith(deal: e.type != null ? state.product.deal?.copyWith(type: e.type!) : state.product.deal),
        )),
        dealPlanChanged: (e) async => emit(state.copyWith(
          selectedPlan: e.plan ?? state.selectedPlan,
          product: state.product.copyWith(deal: state.product.deal?.copyWith(dealPlan: (e.plan ?? state.selectedPlan).name)),
        )),
        itemNameChanged: (e) async => emit(state.copyWith.product(name: BasicTextField(state.itemNameTextController.text))),
        stateChanged: (e) async => emit(state.copyWith.product(state: BasicTextField(state.stateTextController.text))),
        townChanged: (e) async => emit(state.copyWith.product(lga: BasicTextField(state.townTextController.text))),
        itemDescriptionChanged: (e) async =>
            emit(state.copyWith.product(description: BasicTextField(state.descriptionTextController.text))),
        brandChanged: (e) async => emit(state.copyWith.product(
          brandInformation: state.product.brandInformation?.copyWith(brand: BasicTextField(state.brandTextController.text)),
        )),
        brandModelChanged: (e) async => emit(state.copyWith.product(
          brandInformation: state.product.brandInformation?.copyWith(brandModel: BasicTextField(state.brandModelTextController.text)),
        )),
        transmissionChanged: (e) async => emit(state.copyWith.product(
          brandInformation: state.product.brandInformation?.copyWith(transmission: BasicTextField(state.transmissionTextController.text)),
        )),
        weightChanged: (e) async => emit(state.copyWith.product(
          shippingInformation:
              state.product.shippingInformation?.copyWith(weight: BasicTextField(double.tryParse(state.weightTextController.text))),
        )),
        lengthChanged: (e) async => emit(state.copyWith.product(
          shippingInformation:
              state.product.shippingInformation?.copyWith(length: BasicTextField(double.tryParse(state.lengthTextController.text))),
        )),
        widthChanged: (e) async => emit(state.copyWith.product(
          shippingInformation:
              state.product.shippingInformation?.copyWith(width: BasicTextField(double.tryParse(state.widthTextController.text))),
        )),
        heightChanged: (e) async => emit(state.copyWith.product(
          shippingInformation:
              state.product.shippingInformation?.copyWith(height: BasicTextField(double.tryParse(state.heightTextController.text))),
        )),
        deliveryModeChanged: (e) async => emit(state.copyWith.product(
          shippingInformation: state.product.shippingInformation?.copyWith(
            isPickup: e.value ?? state.product.shippingInformation?.isPickup ?? false,
          ),
        )),
        shippingDescChanged: (e) async => emit(state.copyWith.product(
          shippingInformation:
              state.product.shippingInformation?.copyWith(description: BasicTextField(state.shippingDescTextController.text)),
        )),
        basePriceChanged: (e) async => emit(state.copyWith.product(
          deal: state.product.deal?.copyWith(basePrice: AmountField(state.basePriceController.numberValue ?? 0)),
        )),
        conditionChanged: (e) async => emit(state.copyWith.product(
          brandInformation: state.product.brandInformation?.copyWith(
            condition: e.value ?? state.product.brandInformation?.condition ?? defaultItemCondition,
          ),
        )),
        quantityTypeChanged: (e) async => emit(state.copyWith.product(
          deal: state.product.deal?.copyWith(quantity: e.value ?? state.product.deal?.quantity ?? defaultQuantityType),
        )),
        biddingTypeChanged: (e) async => emit(state.copyWith.product(
          deal: state.product.deal?.copyWith(biddingType: e.value ?? state.product.deal?.biddingType ?? defaultBiddingType),
        )),
        offerTypeChanged: (e) async => emit(state.copyWith.product(
          deal: state.product.deal?.copyWith(offerType: e.value ?? state.product.deal?.offerType ?? defaultOfferType),
        )),
        startDateChanged: (e) async => emit(state.copyWith(
          startDateTextController: state.startDateTextController
            ..text = e.value == null ? state.startDateTextController.text : '${DateTimeUtils.dayOfMonth(e.value!, addTime: true)}',
          product: state.product.copyWith(deal: state.product.deal?.copyWith(startDate: DateTimeField(e.value))),
        )),
        endDateChanged: (e) async => emit(state.copyWith(
          endDateTextController: state.endDateTextController
            ..text = e.value == null ? state.endDateTextController.text : '${DateTimeUtils.dayOfMonth(e.value!, addTime: true)}',
          product: state.product.copyWith(deal: state.product.deal?.copyWith(endDate: DateTimeField(e.value))),
        )),
        addressChanged: (e) async => emit(state.copyWith.product(
          deal: state.product.deal?.copyWith(address: BasicTextField(state.addressTextController.text)),
        )),
        deliveryPeriodChanged: (e) async => emit(state.copyWith.product(
          shippingInformation: state.product.shippingInformation?.copyWith(deliveryPeriod: BasicTextField(e.value)),
        )),
        refundPolicyChanged: (e) async => emit(state.copyWith.product(
          termsInformation: state.product.termsInformation?.copyWith(
            hasRefundPolicy: e.value ?? state.product.termsInformation?.hasRefundPolicy ?? false,
          ),
        )),
        repairHistoryChanged: (e) async => emit(state.copyWith.product(
          termsInformation: state.product.termsInformation?.copyWith(
            hasRepairHistory: e.value ?? state.product.termsInformation?.hasRepairHistory ?? false,
          ),
        )),
        termsInfoChanged: (e) async => emit(state.copyWith.product(
          termsInformation: state.product.termsInformation?.copyWith(otherInformation: BasicTextField(e.value)),
        )),
        warrantyPeriodChanged: (e) async => emit(state.copyWith.product(
          termsInformation: state.product.termsInformation?.copyWith(warranty: BasicTextField(e.value)),
        )),
        yearOfManufactureChanged: (e) async => emit(state.copyWith.product(
          brandInformation: state.product.brandInformation?.copyWith(yearOfManufacture: BasicTextField(e.value)),
        )),
        yearOfPurchaseChanged: (e) async => emit(state.copyWith.product(
          termsInformation: state.product.termsInformation?.copyWith(yearOfPurchase: BasicTextField(e.value)),
        )),
        colorChanged: (e) async => emit(state.copyWith.product(
          brandInformation: state.product.brandInformation?.copyWith(color: ColorField(e.value)),
        )),
        validate: (e) async => _validateFormInputs(e, emit),
      );
    }, transformer: concurrent());
    //
    on<_ClearFormFieldsEvent>((_, __) async => _resetForm(), transformer: sequential());
    //
    on<ProductGetEvent>((event, emit) async {
      await event.map(
        categories: (e) async => _asyncHandler(e, emit, before: (e) => e.copyWith(isLoading: false), runnable: _getCategories),
        getDealPlans: (e) async => _asyncHandler(e, emit, runnable: _getAvailableDealPlans),
      );
    });
    //
    on<ProductStructEvent>((event, emit) async {
      await event.map(
        store: (evt) async => _asyncHandler(
          evt,
          emit,
          before: (e) => e.copyWith(isLoading: false, isCreatingProduct: true, status: none()),
          after: (e) => e.copyWith(isLoading: false, isCreatingProduct: false),
          beforeRun: (_StoreNewProductEvent e, emit) {
            emit(state.copyWith(validate: true));
            return state.product.failure.isNone();
          },
          runnable: _storeProduct,
        ),
      );
    });
    //
    on<ProductPageControllerEvent>((event, emit) async {
      await event.map(
        attachListener: (_) async => _attachControllerListener(emit),
        animateTo: (e) async => _onAnimateToPage(e, emit),
        indexChanged: (e) async => _onPageIndexChanged(e, emit),
        next: (e) async => _next(e, emit),
        prev: (_) async => _prev(emit),
      );
    }, transformer: sequential());
    //
    on<ProductMediaEvents>((event, emit) async {
      await event.map(
        uploadMedia: (e) async => _uploadMedia(e, emit),
        pickCamera: (e) async => _pickCamera(e, emit),
        pickGallery: (e) async => _pickGallery(e, emit),
        removeMedia: (e) async => _removeMedia(e, emit),
      );
    }, transformer: sequential());
  }

  Future<void> _asyncHandler<Evt>(
    Evt event,
    Emitter<ProductState> emit, {
    bool clearStatus = true,
    ProductState Function(ProductState)? before,
    ProductState Function(ProductState)? after,
    bool Function(Evt, Emitter<ProductState>)? beforeRun,
    FutureOr<void> Function(Evt, Emitter<ProductState>)? runnable,
    void Function(Evt, Emitter<ProductState>)? afterRun,
  }) async {
    final _res = beforeRun?.call(event, emit) ?? true;

    if (_res) {
      if (before != null)
        emit(before.call(state.copyWith(isLoading: true, status: clearStatus ? none() : state.status)));
      else
        emit(state.copyWith(isLoading: true, status: clearStatus ? none() : state.status));

      if (runnable != null) await runnable.call(event, emit);

      if (after != null)
        emit(after.call(state.copyWith(isLoading: false)));
      else
        emit(state.copyWith(isLoading: false));

      afterRun?.call(event, emit);
    }
  }

  void _getCategories(_GetCategoriesEvent evt, Emitter<ProductState> emit) async {
    emit(state.copyWith(isFetchingCategories: true, status: none()));

    final response = await _repository.categories();

    emit(response.fold(
      (e) => state.copyWith(status: optionOf(e), isFetchingCategories: false),
      (list) => state.copyWith(
        categories: list,
        isFetchingCategories: false,
        product: state.product.copyWith(category: state.product.category),
      ),
    ));
  }

  void _getAvailableDealPlans(_GetDealPlansEvent evt, Emitter<ProductState> emit) async {
    final response = await _repository.dealPlans();

    emit(response.fold(
      (e) => state.copyWith(status: optionOf(e), isLoading: false),
      (list) {
        final recommended = list.find((it) => it.isRecommended) ?? state.selectedPlan;

        return state.copyWith(
          dealPlans: list,
          selectedPlan: recommended,
          product: state.product.copyWith(deal: state.product.deal?.copyWith(dealPlan: recommended.name)),
          isLoading: false,
        );
      },
    ));
  }

  void _validateFormInputs(_ValidateFormFieldEvent evt, Emitter<ProductState> emit) async {
    emit(state.copyWith(status: none()));

    if (state.product.failure.isSome()) {
      emit(state.copyWith(status: some(AppHttpResponse.failure('Please fill all required fields!')), validate: true));
      return;
    } else if (state.product.photos.isEmpty()) {
      emit(state.copyWith(status: some(AppHttpResponse.failure('Please upload at least 1 photo!'))));
      return;
    }

    emit(state.copyWith(validate: evt.validate ?? !state.validate));
  }

  bool isLast<T>(List<T> items, int index) => index == items.length - 1;

  bool isFirst(int index) => index == 0;

  void _next(_OnNextPage e, Emitter<ProductState> emit) async {
    if (state.currentIndex != e.items.length - 1) {
      await state.controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      emit(state.copyWith(controller: state.controller));
    }
  }

  void _prev(Emitter<ProductState> emit) async {
    if (state.currentIndex != 0) {
      await state.controller.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
      emit(state.copyWith(controller: state.controller));
    }
  }

  void _onPageIndexChanged(_PageIndexChangedEvent evt, Emitter<ProductState> emit) async => emit(state.copyWith(currentIndex: evt.index));

  void _onAnimateToPage(_OnAnimateToPage evt, Emitter<ProductState> emit) async {
    if (state.controller.hasClients)
      await state.controller.animateToPage(
        evt.page,
        duration: evt.duration ?? const Duration(milliseconds: 300),
        curve: evt.curve ?? Curves.easeOut,
      );
    emit(state.copyWith(controller: state.controller, currentIndex: evt.page));
  }

  void _resetForm() async {
    state.itemNameTextController.clear();
    state.stateTextController.clear();
    state.townTextController.clear();
    state.descriptionTextController.clear();
    state.brandTextController.clear();
    state.brandModelTextController.clear();
    state.transmissionTextController.clear();
    state.shippingDescTextController.clear();
    state.weightTextController.clear();
    state.widthTextController.clear();
    state.heightTextController.clear();
    state.lengthTextController.clear();
    state.basePriceController.clear();
    state.addressTextController.clear();
    state.termsInfoTextController.clear();
    state.startDateTextController.clear();
    state.endDateTextController.clear();
    state.basePriceController.clear();

    add(const ProductPageControllerEvent.animateTo(0));
    add(const ProductPageControllerEvent.indexChanged(0));
    add(_ProductEmiiterEvent(state.copyWith(
      product: Product.sell(),
      selectedPlan: DealPlan.blank(),
      isLoading: false,
      isCreatingProduct: false,
      productCreated: false,
      isFetchingCategories: false,
      isSavingState: false,
      validate: false,
    )));

    await _localstore.collection(collection).doc(document).delete();
  }

  void _storeProduct(_StoreNewProductEvent evt, Emitter<ProductState> emit) async {
    final response = await _repository.createProduct(state.product);

    response.response.maybeMap(
      error: (_) => emit(state.copyWith(status: optionOf(response), validate: false)),
      orElse: () {
        evt.callback?.call(true);

        emit(state.copyWith(
          productCreated: true,
          status: some(AppHttpResponse.successful('Product created successfully!')),
        ));

        Future.delayed(const Duration(seconds: 2), () {
          _resetForm();
          add(const ProductSyncEvent.clearForm());
        });
      },
    );
  }

  void _uploadMedia(_UploadMediaEvent evt, Emitter<ProductState> emit) async {
    emit(state.copyWith(status: none()));

    try {
      final conn = await connection();

      await conn.fold(
        () async {
          final media = MediaField(null);
          final _id = UniqueId<String>.v4().value;

          if (evt.index == null) {
            // Append to list
            emit(state.copyWith.product(photos: state.product.photos.addMedia(media, id: _id)));
          } else {
            // Replace at index
            emit(state.copyWith.product(photos: state.product.photos.replaceMedia(media, id: _id, index: evt.index)));
          }

          final index = state.product.photos.indexOf(state.product.photos.first((e) => e.id == _id));

          final response = await _cloudinary.uploadFile(
            CloudinaryFile.fromFile(evt.file.path, resourceType: CloudinaryResourceType.Image),
            uploadPreset: env.uploadPreset,
            onProgress: (count, total) {
              add(_ProductEmiiterEvent(state.copyWith.product(
                photos: state.product.photos.replaceMedia(media, index: index, progress: SendProgressCallback(count, total)),
              )));
            },
          );

          final _uploaded = media.copyWith(response.secureUrl);

          emit(state.copyWith.product(photos: state.product.photos.replaceMedia(_uploaded, index: index)));
        },
        (f) async => emit(state.copyWith(status: optionOf(f))),
      );
    } on CloudinaryException catch (e, tr) {
      emit(state.copyWith(status: optionOf(AppHttpResponse.failure('Error ${e.statusCode}: ${e.message ?? e.responseString}'))));
      unawaited(App.report(exception: e, stack: tr));
    }
  }

  void _attachControllerListener(Emitter<ProductState> emit) => state.controller.addListener(() => _pageControllerListener(emit));

  void _pageControllerListener(Emitter<ProductState>? emit) {
    if (emit == null) return;

    if (state.controller.page != null && state.controller.page?.round() != state.currentIndex) {
      add(_ProductEmiiterEvent(state.copyWith(currentIndex: state.controller.page!.round())));
    }
  }

  @override
  Future<void> close() {
    state.controller.removeListener(() => _pageControllerListener(null));
    state.controller.dispose();
    return super.close();
  }

  @override
  ProductState? fromJson(Map<String, dynamic> _) {
    _localstore.collection(collection).doc(document).get().then((json) {
      final productJson = json != null && json.containsKey(_productKey) ? json[_productKey] as Map<String, dynamic>? : null;
      final pageIndex = json != null && json.containsKey(_indexKey) ? json[_indexKey] as int? : null;
      final countries = getIt<AuthWatcherCubit>().state.countries;

      if (productJson != null) {
        final product = ProductDTOData.fromJson(productJson).domain(countries);

        final startDate = product.deal?.startDate.getOrNull;
        final endDate = product.deal?.endDate.getOrNull;

        final s = state.copyWith(
          product: product,
          categories: state.categories,
          itemNameTextController: product.name.valueOrNull != null && product.name.isValid
              ? (state.itemNameTextController..text = product.name.getOrNull!)
              : state.itemNameTextController,
          stateTextController: product.state.valueOrNull != null && product.state.isValid
              ? (state.stateTextController..text = product.state.getOrNull!)
              : state.stateTextController,
          townTextController: product.lga.valueOrNull != null && product.lga.isValid
              ? (state.townTextController..text = product.lga.getOrNull!)
              : state.townTextController,
          descriptionTextController: product.description.valueOrNull != null && product.description.isValid
              ? (state.descriptionTextController..text = product.description.getOrNull!)
              : state.descriptionTextController,
          brandTextController: product.brandInformation?.brand.valueOrNull != null && product.brandInformation!.brand.isValid
              ? (state.brandTextController..text = product.brandInformation!.brand.getOrNull!)
              : state.brandTextController,
          brandModelTextController: product.brandInformation?.brandModel.valueOrNull != null && product.brandInformation!.brandModel.isValid
              ? (state.brandModelTextController..text = product.brandInformation!.brandModel.getOrNull!)
              : state.brandModelTextController,
          transmissionTextController:
              product.brandInformation?.transmission.valueOrNull != null && product.brandInformation!.transmission.isValid
                  ? (state.transmissionTextController..text = product.brandInformation!.transmission.getOrNull!)
                  : state.transmissionTextController,
          shippingDescTextController:
              product.shippingInformation?.description.valueOrNull != null && product.shippingInformation!.description.isValid
                  ? (state.shippingDescTextController..text = product.shippingInformation!.description.getOrNull!)
                  : state.shippingDescTextController,
          weightTextController: product.shippingInformation?.weight.valueOrNull != null && product.shippingInformation!.weight.isValid
              ? (state.weightTextController..text = product.shippingInformation!.weight.getOrNull.toString())
              : state.weightTextController,
          widthTextController: product.shippingInformation?.width.valueOrNull != null && product.shippingInformation!.width.isValid
              ? (state.widthTextController..text = product.shippingInformation!.width.getOrNull.toString())
              : state.widthTextController,
          heightTextController: product.shippingInformation?.height.valueOrNull != null && product.shippingInformation!.height.isValid
              ? (state.heightTextController..text = product.shippingInformation!.height.getOrNull.toString())
              : state.heightTextController,
          lengthTextController: product.shippingInformation?.length.valueOrNull != null && product.shippingInformation!.length.isValid
              ? (state.lengthTextController..text = product.shippingInformation!.length.getOrNull.toString())
              : state.lengthTextController,
          basePriceController: product.deal?.basePrice.valueOrNull != null && product.deal!.basePrice.isValid
              ? (state.basePriceController..text = product.deal!.basePrice.getOrNull.toInt().toString())
              : state.basePriceController,
          addressTextController: product.deal?.address.valueOrNull != null && product.deal!.address.isValid
              ? (state.addressTextController..text = product.deal!.address.getOrNull!)
              : state.addressTextController,
          termsInfoTextController:
              product.termsInformation?.otherInformation.valueOrNull != null && product.termsInformation!.otherInformation.isValid
                  ? (state.termsInfoTextController..text = product.termsInformation!.otherInformation.getOrNull!)
                  : state.termsInfoTextController,
          startDateTextController: state.startDateTextController
            ..text = startDate != null ? '${DateTimeUtils.dayOfMonth(startDate, addTime: true)}' : '',
          endDateTextController: state.endDateTextController
            ..text = endDate != null ? '${DateTimeUtils.dayOfMonth(endDate, addTime: true)}' : '',
        );

        add(_ProductEmiiterEvent(s));

        if (pageIndex != null) {
          add(ProductPageControllerEvent.animateTo(pageIndex));
          add(ProductPageControllerEvent.indexChanged(pageIndex));
        }

        if (product.country == null) {
          add(ProductSyncEvent.countryChanged(getIt<AuthWatcherCubit>().defaultCountry));
        }

        return s;
      }
    });
    return null;
  }

  @override
  Map<String, dynamic>? toJson(ProductState state) {
    var json = <String, dynamic>{};

    if (!state.product.isSellBlank) {
      json[_productKey] = ProductDTOData.fromDomain(state.product).toJson();
      json[_indexKey] = state.currentIndex;
      _localstore.collection(collection).doc(document).set(json);
    }

    return json;
  }
}
