library search_bloc.dart;

import 'package:auctionvillage/core/data/database/app_database.dart';
import 'package:auctionvillage/core/data/http_client/index.dart';
import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/data/remote/search/search.remote.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<_SearchEvent, SearchState> with BaseSearchBloc {
  final SearchRemote _remote;

  SearchBloc(this._remote) : super(SearchState.initial()) {
    on<SearchEmitterEvent>((event, emit) {
      emit(event.state);
      event.callback?.call(true);
    });

    on<_ClearHistoryEvent>((event, emit) => _onClearEvent(event, emit));

    on<_RefreshModelHistoryEvent>(
      (event, emit) => _onRefreshEvent(event, emit),
      transformer: debounceRestartable(const Duration(milliseconds: 200)),
    );

    on<___SearchEvent>(
      (event, emit) async => _onSearchEvent(event, emit),
      transformer: debounceRestartable(const Duration(milliseconds: 300)),
    );
  }

  PaginationDTO? _usersMeta;
  PaginationDTO? _productsMeta;

  KtList<Country> get _countries => getIt<AuthWatcherCubit>().state.countries;

  void _onRefreshEvent(_RefreshModelHistoryEvent evt, Emitter<SearchState> emit) async {
    emit(state.copyWith(model: evt.model));

    if (state.searchQuery != null && state.searchQuery!.isNotEmpty) {
      await __runRequest(
        state.searchQuery!,
        emit,
        callback: evt.callback,
      );
    }
  }

  void _onClearEvent(_ClearHistoryEvent evt, Emitter<SearchState> emit) {
    if (evt.model == null) {
      emit(state.copyWith(
        users: const KtList.empty(),
        products: const KtList.empty(),
        searchQuery: null,
        isSearching: false,
      ));
    } else {
      emit(evt.model!.when(
        user: () => state.copyWith(
          users: const KtList.empty(),
          searchQuery: null,
          isSearching: false,
        ),
        product: () => state.copyWith(
          products: const KtList.empty(),
          searchQuery: null,
          isSearching: false,
        ),
      ));
    }
  }

  void _onSearchEvent(___SearchEvent evt, Emitter<SearchState> emit) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && evt.nextPage && evt.model == state.model) return evt.callback?.call(false);

    if (!evt.nextPage) {
      if ((evt.model == null && evt.query == state.searchQuery) || evt.query.isEmpty) return evt.callback?.call(false);

      if ((evt.model == state.model && evt.query == state.searchQuery) || evt.query.isEmpty) return evt.callback?.call(false);
    }

    if (evt.query.isEmpty) return evt.callback?.call(false);

    if (evt.model != null) emit(state.copyWith(model: evt.model!));

    await __runRequest(
      evt.query,
      emit,
      perPage: evt.perPage,
      nextPage: evt.nextPage,
      callback: evt.callback,
    );
  }

  Future<void> __runRequest(
    String query,
    Emitter<SearchState> emit, {
    int? perPage,
    bool nextPage = false,
    AwaitCallback? callback,
  }) async {
    final _perPage = perPage ?? Const.kPerPage;

    final _connected = await connection();

    await _connected.fold(
      () async {
        try {
          emit(state.copyWith(isSearching: true));

          await state.model.when(
            user: () async {
              UserListDTO? listDTO;

              if (nextPage) {
                assert(_usersMeta != null);

                if (_usersMeta?.next == null) {
                  listDTO = await _remote.users(
                    param: query,
                    page: _usersMeta!.currentPage! + 1,
                    perPage: _perPage,
                  );

                  emit(state.copyWith(users: state.users.plusIfAbsent(listDTO.domain), isSearching: false, searchQuery: query));
                } else
                  emit(state.copyWith(status: some(AppHttpResponse.endOfList)));
              } else {
                final _perPageValue = _usersMeta?.currentPage != null ? _usersMeta!.currentPage! * _perPage : _perPage;

                listDTO = await _remote.users(param: query, perPage: _perPageValue);

                emit(state.copyWith(
                  users: listDTO.data.isEmpty ? const KtList.empty() : listDTO.domain,
                  isSearching: false,
                  searchQuery: query,
                ));
              }

              // Save new meta data
              if (listDTO != null) _usersMeta = listDTO.meta?.pagination;
            },
            product: () async {
              ProductListDTO? listDTO;

              if (nextPage) {
                assert(_productsMeta != null);

                if (_productsMeta?.next == null) {
                  listDTO = await _remote.products(
                    param: query,
                    page: _productsMeta!.currentPage! + 1,
                    perPage: _perPage,
                  );

                  emit(state.copyWith(
                    products: state.products.plusIfAbsent(listDTO.domain(_countries)),
                    isSearching: false,
                    searchQuery: query,
                  ));
                } else
                  emit(state.copyWith(status: some(AppHttpResponse.endOfList)));
              } else {
                final _perPageValue = _productsMeta?.currentPage != null ? _productsMeta!.currentPage! * _perPage : _perPage;

                listDTO = await _remote.products(param: query, perPage: _perPageValue);

                emit(state.copyWith(
                  products: listDTO.data.isEmpty ? const KtList.empty() : listDTO.domain(_countries),
                  isSearching: false,
                  searchQuery: query,
                ));
              }

              // Save new meta data
              if (listDTO != null) _productsMeta = listDTO.meta?.pagination;
            },
          );
        } on AppHttpResponse catch (e) {
          return emit(state.copyWith(status: optionOf(e), isSearching: false));
        } on AppNetworkException catch (e) {
          return emit(state.copyWith(status: optionOf(e.asResponse()), isSearching: false));
        }
      },
      (failure) async => emit(state.copyWith(status: optionOf(failure))),
    );

    callback?.call(true);
  }
}
