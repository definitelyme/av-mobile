import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:rxdart/rxdart.dart';

Future<Option<AppHttpResponse?>> _connection() async {
  final isConnected = (await getIt<Connectivity>().checkConnectivity()) != ConnectivityResult.none;

  if (!isConnected)
    return some(AppHttpResponse(AnyResponse.fromFailure(
      const NetworkFailure.notConnected(),
    )));

  final hasInternet = await getIt<InternetConnectionChecker>().hasConnection;

  if (isConnected && !hasInternet)
    return some(AppHttpResponse(AnyResponse.fromFailure(
      const NetworkFailure.poorInternet(),
    )));

  return none();
}

abstract class BaseBlocEvent {
  const BaseBlocEvent();
}

abstract class BaseBlocState {
  const BaseBlocState();

  bool get isLoading;
  bool get validate;
}

mixin BaseBloc<Event extends BaseBlocEvent, State extends BaseBlocState> on Bloc<Event, State> {
  EventTransformer<Evt> debounce<Evt>(Duration duration) => (events, transform) => events.debounceTime(duration).switchMap(transform);

  Future<Option<AppHttpResponse?>> connection() => _connection();
}

abstract class BaseSearchEvent {
  const BaseSearchEvent();
}

enum SearchModel { product, user }

abstract class BaseSearchState {
  const BaseSearchState();

  bool get isSearching;
  String? get searchQuery;
  SearchModel get model;
}

mixin BaseSearchBloc<Event extends BaseSearchEvent, State extends BaseSearchState> on Bloc<Event, State> {
  EventTransformer<Evt> debounceRestartable<Evt>(Duration duration) {
    // This feeds the debounced event stream to restartable() and returns that
    // as a transformer.
    return (events, mapper) => restartable<Evt>().call(events.debounceTime(duration), mapper);
  }

  Future<Option<AppHttpResponse?>> connection() => _connection();
}

extension SearchTabX on SearchModel {
  T? maybeWhen<T>({
    T Function()? user,
    T Function()? product,
  }) {
    switch (this) {
      case SearchModel.user:
        return user?.call();
      case SearchModel.product:
        return product?.call();
    }
  }

  T when<T>({
    required T Function() user,
    required T Function() product,
  }) {
    switch (this) {
      case SearchModel.user:
        return user.call();
      case SearchModel.product:
        return product.call();
    }
  }
}
