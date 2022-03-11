import 'dart:async';

import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kt_dart/kt.dart' hide StandardKt;
import 'package:rxdart/rxdart.dart';

Future<Option<AppHttpResponse?>> _connection() async {
  final isConnected = (await getIt<Connectivity>().checkConnectivity()) !=
      ConnectivityResult.none;

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

abstract class BaseState {
  const BaseState();

  bool get isLoading;
  bool get validate;
}

mixin BaseCubit<State extends BaseState> on Cubit<State> {
  Future<Option<AppHttpResponse?>> connection() => _connection();

  String get reference => '${DateTime.now().toIso8601String()}'
      '-_-${UniqueId<String>.v4().value}';

  @override
  void emit(State state) {
    if (!isClosed) super.emit(state);
  }
}

abstract class BaseAddressState extends BaseState {
  const BaseAddressState();

  KtList<GoogleMapPlace> get places;
  GoogleMapPlace? get selectedPlace;
  PlaceStatus get placeStatus;
  bool get isTyping;
  String? get searchQuery;
  bool get isLoadingMorePlaces;
}

mixin BaseAddressCubit<State extends BaseAddressState> on Cubit<State> {
  final _search$ = StreamController<Map<String, dynamic>>();

  late StreamSubscription<Map<String, dynamic>> _searchSubscription;

  void autocomplete(String query,
      {required BuildContext ctx,
      bool nextPage = false,
      VoidCallback? callback});

  void sink(String query,
          {required BuildContext ctx,
          bool nextPage = false,
          VoidCallback? callback}) =>
      _search$.add({
        'query': query,
        'ctx': ctx,
        'next_page': nextPage,
        'callback': callback
      });

  void createDebounce() => _searchSubscription = _search$.stream
      .debounceTime(const Duration(milliseconds: 500))
      .listen((data) => autocomplete(
            '${data['query']}',
            ctx: data['ctx'] as BuildContext,
            nextPage: data['next_page'] as bool,
            callback: data['callback'] as VoidCallback?,
          ));

  Future<Option<AppHttpResponse?>> connection() => _connection();

  void onQueryChanged(String value);

  @override
  void emit(State state) {
    if (!isClosed) super.emit(state);
  }

  @override
  Future<void> close() {
    _search$.close();
    _searchSubscription.cancel();
    return super.close();
  }
}
