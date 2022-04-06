library deal_cubit.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/deal_repository.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'deal_cubit.freezed.dart';
part 'deal_state.dart';

@injectable
class DealCubit extends Cubit<DealState> with BaseCubit {
  final DealRepository _repository;

  DealCubit(this._repository) : super(DealState.initial());

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading, status: status ?? state.status));

  Future<void> fetchLiveDeals({
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
    bool? isHomePage,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    toggleLoading(true, none());

    final response = await _repository.deals(bidStatus: BidStatus.live, perPage: perPage, nextPage: nextPage);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (deals) {
        if (isHomePage == null) return state.copyWith(deals: !nextPage ? deals : state.deals.plusIfAbsent(deals), isLoading: false);

        if (isHomePage)
          return state.copyWith(homeDeals: !nextPage ? deals : state.homeDeals.plusIfAbsent(deals), isLoading: false);
        else
          return state.copyWith(liveDeals: !nextPage ? deals : state.liveDeals.plusIfAbsent(deals), isLoading: false);
      },
    ));

    callback?.call(true);
  }

  Future<void> filterDeals({
    bool? isPrivate,
    DealType? dealType,
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    toggleLoading(true, none());

    final response = await _repository.deals(type: dealType, isPrivate: isPrivate, perPage: perPage, nextPage: nextPage);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (deals) => state.copyWith(deals: !nextPage ? deals : state.deals.plusIfAbsent(deals), isLoading: false),
    ));

    callback?.call(true);
  }

  void bidChanged(String amount) {
    final toDouble = double.tryParse(amount) ?? state.currentDeal.lastPriceOffered.getOrNull;
    emit(state.copyWith(bidAmount: AmountField(toDouble)));
  }

  void increaseBid() {
    final percentage = state.currentDeal.product?.category?.percentageIncrease.getOrNull ?? 100;
    final factor = (percentage / 100) * state.currentDeal.lastPriceOffered.getOrNull;
    emit(state.copyWith(bidAmount: state.bidAmount + factor));
  }

  void decreaseBid() {
    final percentage = state.currentDeal.product?.category?.percentageIncrease.getOrNull ?? 100;
    final factor = (percentage / 100) * state.currentDeal.lastPriceOffered.getOrNull;
    emit(state.copyWith(bidAmount: state.bidAmount - factor));
  }

  Future<void> showDeal(Deal deal) async {
    emit(state.copyWith(currentDeal: deal, isLoading: true, status: none(), bidAmount: deal.lastPriceOffered));

    final response = await _repository.getDeal(deal);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (deal) => state.copyWith(currentDeal: deal, isLoading: false, bidAmount: deal.lastPriceOffered),
    ));
  }

  Future<void> getCategories() async {
    toggleLoading(true, none());

    final response = await _repository.categories();

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (categories) => state.copyWith(categories: state.categories.plusIfAbsent(categories), isLoading: false),
    ));
  }

  Future<void> showCategory(DealCategory category) async {
    toggleLoading(true, none());

    final response = await _repository.getCategory(category);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (category) => state.copyWith(currentCategory: category, isLoading: false),
    ));
  }

  void sendBid() async {
    emit(state.copyWith(isBidding: true, status: none()));

    final response = await _repository.sendBid(state.currentDeal, state.bidAmount.getOrNull);

    emit(state.copyWith(
      isBidding: false,
      status: optionOf(response.value1),
      currentDeal: state.currentDeal.merge(response.value2),
    ));
  }

  Future<void> bidHistory(
    User? user, {
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    toggleLoading(true, none());

    final response = await _repository.bidHistory(user, perPage: perPage, nextPage: nextPage);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (history) {
        final value = state.bidHistory != null ? state.bidHistory?.merge(history, nextPage: nextPage) : history;
        return state.copyWith(bidHistory: value, isLoading: false);
      },
    ));

    callback?.call(true);
  }

  Future<void> sellHistory(
    User? user, {
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    toggleLoading(true, none());

    final response = await _repository.sellHistory(user, perPage: perPage, nextPage: nextPage);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (history) {
        final value = state.sellHistory != null ? state.sellHistory?.merge(history, nextPage: nextPage) : history;
        return state.copyWith(sellHistory: value, isLoading: false);
      },
    ));

    callback?.call(true);
  }

  void toggleFavorite([Deal? _deal]) async {
    final deal = _deal ?? state.currentDeal;

    emit(state.copyWith(
      deals: state.deals.map((a) => deal.id == a.id ? a.toggleFavorite() : a),
      homeDeals: state.homeDeals.map((a) => deal.id == a.id ? a.toggleFavorite() : a),
      liveDeals: state.liveDeals.map((a) => deal.id == a.id ? a.toggleFavorite() : a),
      currentDeal: deal.id == state.currentDeal.id ? state.currentDeal.toggleFavorite() : state.currentDeal,
    ));

    AppHttpResponse? response;

    if (deal.hasWish)
      response = await _repository.unfavorite(deal);
    else
      response = await _repository.favorite(deal);

    response?.response.mapOrNull(error: (_) => emit(state.copyWith(status: optionOf(response))));
  }

  Future<void> myWishlist(
    User? user, {
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    toggleLoading(true, none());

    final response = await _repository.wishlist(user, perPage: perPage, nextPage: nextPage);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (list) => state.copyWith(wishlist: !nextPage ? list : state.wishlist.plusIfAbsent(list), isLoading: false),
    ));

    callback?.call(true);
  }

  Future<void> availablePlans({
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    toggleLoading(true, none());

    final response = await _repository.availablePlans(nextPage: nextPage);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (list) => state.copyWith(dealPlans: !nextPage ? list : state.dealPlans.plusIfAbsent(list), isLoading: false),
    ));

    callback?.call(true);
  }

  Future<void> myRatings({
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    toggleLoading(true, none());

    final response = await _repository.myReviews(perPage: perPage, nextPage: nextPage);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (rating) {
        final value = state.rating != null ? state.rating?.merge(rating, nextPage: nextPage) : rating;
        return state.copyWith(rating: value, isLoading: false);
      },
    ));

    callback?.call(true);
  }

  Future<void> getDealRating(
    Deal deal, {
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    toggleLoading(true, none());

    final response = await _repository.getDealRating(deal, perPage: perPage, nextPage: nextPage);

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (rating) {
        final value = state.rating != null ? state.rating?.merge(rating, nextPage: nextPage) : rating;
        return state.copyWith(rating: value, isLoading: false);
      },
    ));

    callback?.call(true);
  }
}
