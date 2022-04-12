library deal_cubit.dart;

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/deal_repository.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
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

  KtList<Country> get _countries => getIt<AuthWatcherCubit>().state.countries;

  Future<void> fetchLiveDeals({
    int? perPage,
    bool nextPage = false,
    bool? sponsored,
    bool? isPrivate,
    String? sortBy,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
    bool? isHomePage,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    emit(state.copyWith(isLoading: true, status: none(), isLoadingSponsored: true));

    final response = await _repository.deals(
      bidStatus: BidStatus.live,
      perPage: perPage,
      nextPage: nextPage,
      sponsored: sponsored,
      isPrivate: isPrivate,
      sortBy: sortBy,
      countries: _countries,
    );

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (deals) {
        // if (isHomePage == null) return state.copyWith(deals: !nextPage ? deals : state.deals.plusIfAbsent(deals));

        if (isHomePage != null && isHomePage)
          return state.copyWith(homeDeals: !nextPage ? deals : state.homeDeals.plusIfAbsent(deals));
        else
          return state.copyWith(liveDeals: !nextPage ? deals : state.liveDeals.plusIfAbsent(deals));
      },
    ));

    emit(state.copyWith(isLoading: false, isLoadingSponsored: false));

    callback?.call(true);
  }

  Future<void> sponsoredDeals({
    bool? isPrivate,
    DealType? dealType,
    bool? sponsored,
    String? sortBy,
    int? perPage,
    bool nextPage = false,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    emit(state.copyWith(status: none(), isLoadingSponsored: true));

    final response = await _repository.deals(
      type: dealType,
      isPrivate: isPrivate,
      sponsored: sponsored,
      sortBy: sortBy,
      perPage: perPage,
      nextPage: nextPage,
      countries: _countries,
    );

    emit(response.fold(
      (e) => state.copyWith(status: some(e)),
      (deals) {
        final filtered = deals.filter((it) => it.product != null && it.product!.photos.isNotEmpty());
        return state.copyWith(homeSponsoredDeals: !nextPage ? filtered : state.homeSponsoredDeals.plusIfAbsent(filtered));
      },
    ));

    emit(state.copyWith(isLoadingSponsored: false));

    callback?.call(true);
  }

  void clearDealsList() => emit(state.copyWith(status: none(), dealsList: emptyList()));

  Future<void> filterDeals({
    bool? isPrivate,
    DealType? dealType,
    BidStatus? bidStatus,
    bool? sponsored,
    String? sortBy,
    int? perPage,
    bool nextPage = false,
    DealCategory? category,
    EndOfListCallback? endOfList,
    AwaitCallback? callback,
  }) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return endOfList?.call();

    toggleLoading(true, none());

    final Either<AppHttpResponse, KtList<Deal>> response;

    if (category == null)
      response = await _repository.deals(
        type: dealType,
        isPrivate: isPrivate,
        sponsored: sponsored,
        bidStatus: bidStatus,
        sortBy: sortBy,
        perPage: perPage,
        nextPage: nextPage,
        countries: _countries,
      );
    else
      response = await _repository.filterDealsByCategory(
        category,
        isPrivate: isPrivate,
        sponsored: sponsored,
        perPage: perPage,
        nextPage: nextPage,
        countries: _countries,
      );

    emit(response.fold(
      (e) => state.copyWith(status: some(e), isLoading: false),
      (deals) => state.copyWith(dealsList: !nextPage ? deals : state.dealsList.plusIfAbsent(deals), isLoading: false),
    ));

    callback?.call(true);
  }

  void bidChanged(String amount) {
    final toDouble = double.tryParse(amount) ?? state.currentDeal.lastPriceOffered.getOrNull;
    emit(state.copyWith(bidAmount: AmountField(toDouble)));
  }

  void increaseBid() {
    final percentage = state.currentDeal.product?.category?.percentageIncrease.getOrNull ?? 100;
    final factor = ((percentage / 100) * state.currentDeal.lastPriceOffered.getOrNull).ceil();

    // Add the factor to the current bid price
    // var bidAmount = state.bidAmount + factor;

    // Round to the nearest double
    // bidAmount = bidAmount.ceil();

    // if (bidAmount <= state.currentDeal.lastPriceOffered.getOrNull) {
    //   // If the bid is less than the last price offered, increament by 1
    //   bidAmount = bidAmount + 1;
    // }

    emit(state.copyWith(bidAmount: state.bidAmount + factor));
  }

  void decreaseBid() {
    final percentage = state.currentDeal.product?.category?.percentageIncrease.getOrNull ?? 100;
    final factor = ((percentage / 100) * state.currentDeal.lastPriceOffered.getOrNull).ceilToDouble();
    // Subtract the factor from the current bid price
    var bidAmount = state.bidAmount - factor;
    // Round to the nearest double
    // bidAmount = bidAmount.ceilToDouble();

    if (bidAmount.getOrNull < state.currentDeal.lastPriceOffered.getOrNull) {
      // If the bid is greater than the last price offered, decrement by 1
      bidAmount = state.currentDeal.lastPriceOffered;
    }

    emit(state.copyWith(bidAmount: bidAmount));
  }

  Future<void> showDeal(Deal deal) async {
    emit(state.copyWith(currentDeal: deal, isLoading: true, status: none(), bidAmount: deal.lastPriceOffered));

    final response = await _repository.getDeal(deal, countries: _countries);

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

    final response = await _repository.sendBid(state.currentDeal, state.bidAmount.getOrNull, countries: _countries);
    final newBidAmount = response.value2?.basePrice;
    final newLastPriceOffered = response.value2?.lastPriceOffered;

    emit(state.copyWith(
      isBidding: false,
      status: optionOf(response.value1),
      currentDeal: state.currentDeal.bid(amount: newBidAmount, lastPrice: newLastPriceOffered),
      dealsList: state.dealsList
          .map((it) => it.id.value == state.currentDeal.id.value ? it.bid(amount: newBidAmount, lastPrice: newLastPriceOffered) : it),
      homeDeals: state.homeDeals
          .map((it) => it.id.value == state.currentDeal.id.value ? it.bid(amount: newBidAmount, lastPrice: newLastPriceOffered) : it),
      liveDeals: state.liveDeals
          .map((it) => it.id.value == state.currentDeal.id.value ? it.bid(amount: newBidAmount, lastPrice: newLastPriceOffered) : it),
      homeSponsoredDeals: state.homeSponsoredDeals
          .map((it) => it.id.value == state.currentDeal.id.value ? it.bid(amount: newBidAmount, lastPrice: newLastPriceOffered) : it),
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

    final response = await _repository.bidHistory(user, perPage: perPage, nextPage: nextPage, countries: _countries);

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

    final response = await _repository.sellHistory(user, perPage: perPage, nextPage: nextPage, countries: _countries);

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
      dealsList: state.dealsList.map((a) => deal.id == a.id ? a.toggleFavorite() : a),
      homeDeals: state.homeDeals.map((a) => deal.id == a.id ? a.toggleFavorite() : a),
      homeSponsoredDeals: state.homeSponsoredDeals.map((a) => deal.id == a.id ? a.toggleFavorite() : a),
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

    final response = await _repository.wishlist(user, perPage: perPage, nextPage: nextPage, countries: _countries);

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
