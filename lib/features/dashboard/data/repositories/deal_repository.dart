library deal_repository.dart;

import 'package:auctionvillage/core/data/http_client/index.dart';
import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/repository/base_repo.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/features/dashboard/data/remote/deal_remote/deal_remote.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kt_dart/collection.dart';

@injectable
class DealRepository extends BaseRepository {
  @override
  final InternetConnectionChecker connectionChecker;

  @override
  final Connectivity connectivity;

  PaginationDTO? _dealsMeta;
  PaginationDTO? _categoryDealsMeta;
  PaginationDTO? _bidsHistoryMeta;
  PaginationDTO? _sellHistoryMeta;
  PaginationDTO? _wishlistMeta;
  PaginationDTO? _ratingsMeta;
  PaginationDTO? _availablePlans;

  final DealRemote remote;

  DealRepository(this.connectionChecker, this.connectivity, this.remote);

  Future<Either<AppHttpResponse, KtList<Deal>>> deals({
    BidStatus? bidStatus,
    DealType? type,
    DealStatus dealStatus = DealStatus.approved,
    String? sortBy,
    bool? isPrivate,
    bool? sponsored,
    int? perPage,
    bool nextPage = false,
    KtList<Country>? countries,
  }) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        final DealListDTO _list;

        try {
          if (nextPage) {
            assert(_dealsMeta != null);

            if (_dealsMeta?.next != null)
              _list = await remote.filterDeals(
                bidStatus: bidStatus?.name.toUpperCase(),
                bidType: type?.name.toUpperCase(),
                dealStatus: dealStatus.name.toUpperCase(),
                isPrivate: isPrivate,
                sponsored: sponsored,
                sortBy: sortBy,
                page: _dealsMeta!.next,
                perPage: perPage ?? _dealsMeta?.perPage,
              );
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _dealsMeta?.currentPage != null ? _dealsMeta!.currentPage! * _perPage : _perPage;
            _list = await remote.filterDeals(
              bidStatus: bidStatus?.name.toUpperCase(),
              bidType: type?.name.toUpperCase(),
              dealStatus: dealStatus.name.toUpperCase(),
              isPrivate: isPrivate,
              sponsored: sponsored,
              sortBy: sortBy,
              perPage: _perPageValue,
            );
          }

          // Save new meta data
          _dealsMeta = _list.meta?.pagination;
          return right(_list.domain(countries));
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, KtList<Deal>>> filterDealsByCategory(
    DealCategory? category, {
    bool? isPrivate,
    bool? sponsored,
    int? perPage,
    bool nextPage = false,
    KtList<Country>? countries,
  }) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        final CategoryListDTO _list;

        assert(category != null);

        try {
          if (nextPage) {
            assert(_categoryDealsMeta != null);

            if (_categoryDealsMeta?.next != null)
              _list = await remote.filterDealsByCategory(
                '${category!.id.value}',
                isPrivate: isPrivate,
                sponsored: sponsored,
                page: _categoryDealsMeta!.next,
                perPage: perPage ?? _categoryDealsMeta?.perPage,
              );
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _categoryDealsMeta?.currentPage != null ? _categoryDealsMeta!.currentPage! * _perPage : _perPage;
            _list = await remote.filterDealsByCategory('${category!.id.value}',
                isPrivate: isPrivate, sponsored: sponsored, perPage: _perPageValue);
          }

          // Save new meta data
          _categoryDealsMeta = _list.meta?.pagination;
          return right(_list.data.toImmutableList().filter((e) => e.deal != null).map((i) => i.deal!.domain(countries)));
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, Deal>> getDeal(Deal deal, {KtList<Country>? countries}) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        try {
          final _result = await remote.getDeal('${deal.id.value}');
          return right(_result.domain(countries));
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, KtList<DealCategory>>> categories() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        try {
          final _list = await remote.categories();
          return right(_list.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, KtList<DealPlan>>> dealPlans({int? perPage, bool nextPage = false}) async {
    final _perPage = perPage ?? 10;
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        final DealPlanListDTO _list;

        try {
          if (nextPage) {
            assert(_availablePlans != null);

            if (_availablePlans?.next != null)
              _list = await remote.availablePlans(page: _availablePlans!.next, perPage: perPage ?? _availablePlans?.perPage);
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _availablePlans?.currentPage != null ? _availablePlans!.currentPage! * _perPage : _perPage;
            _list = await remote.availablePlans(perPage: _perPageValue);
          }

          // Save new meta data
          _availablePlans = _list.meta?.pagination;
          return right(_list.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, DealCategory>> getCategory(DealCategory category) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        try {
          final _result = await remote.getCategory('${category.id.value}');
          return right(_result.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, BidHistory>> bidHistory(User? user,
      {int? perPage, bool nextPage = false, KtList<Country>? countries}) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        final BidHistoryDTO dto;

        try {
          if (nextPage) {
            assert(_bidsHistoryMeta != null);

            if (_bidsHistoryMeta?.next != null)
              dto = await remote.bidHistory(
                '${user?.id.value}',
                page: _bidsHistoryMeta!.next,
                perPage: perPage ?? _bidsHistoryMeta?.perPage,
              );
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _bidsHistoryMeta?.currentPage != null ? _bidsHistoryMeta!.currentPage! * _perPage : _perPage;
            dto = await remote.bidHistory('${user?.id.value}', perPage: _perPageValue);
          }

          // Save new meta data
          _bidsHistoryMeta = dto.meta?.pagination;
          return right(dto.domain(countries));
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, SellHistory>> sellHistory(User? user,
      {int? perPage, bool nextPage = false, KtList<Country>? countries}) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        final SellHistoryDTO dto;

        try {
          if (nextPage) {
            assert(_sellHistoryMeta != null);

            if (_sellHistoryMeta?.next != null)
              dto = await remote.sellHistory(
                '${user?.id.value}',
                page: _sellHistoryMeta!.next,
                perPage: perPage ?? _sellHistoryMeta?.perPage,
              );
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _sellHistoryMeta?.currentPage != null ? _sellHistoryMeta!.currentPage! * _perPage : _perPage;
            dto = await remote.sellHistory('${user?.id.value}', perPage: _perPageValue);
          }

          // Save new meta data
          _sellHistoryMeta = dto.meta?.pagination;
          return right(dto.domain(countries));
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, KtList<MyWish>>> wishlist(User? user,
      {int? perPage, bool nextPage = false, KtList<Country>? countries}) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        final WishListDTO _list;

        try {
          if (nextPage) {
            assert(_wishlistMeta != null);

            if (_wishlistMeta?.next != null)
              _list = await remote.wishlist(page: _wishlistMeta!.next, perPage: perPage ?? _wishlistMeta?.perPage);
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _wishlistMeta?.currentPage != null ? _wishlistMeta!.currentPage! * _perPage : _perPage;
            _list = await remote.wishlist(perPage: _perPageValue);
          }

          // Save new meta data
          _wishlistMeta = _list.meta?.pagination;
          return right(_list.domain(countries));
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, Rating>> myReviews({int? perPage, bool nextPage = false}) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        final RatingDTO _dto;

        try {
          if (nextPage) {
            assert(_ratingsMeta != null);

            if (_ratingsMeta?.next != null)
              _dto = await remote.myReviews(page: _ratingsMeta!.next, perPage: perPage ?? _ratingsMeta?.perPage);
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _ratingsMeta?.currentPage != null ? _ratingsMeta!.currentPage! * _perPage : _perPage;
            _dto = await remote.myReviews(perPage: _perPageValue);
          }

          // Save new meta data
          _ratingsMeta = _dto.meta?.pagination;
          return right(_dto.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, Rating>> getDealRating(Deal deal, {int? perPage, bool nextPage = false}) async {
    final _perPage = perPage ?? Const.kPerPage;
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        final RatingDTO _dto;

        try {
          if (nextPage) {
            assert(_ratingsMeta != null);

            if (_ratingsMeta?.next != null)
              _dto = await remote.dealReview('${deal.id.value}', page: _ratingsMeta!.next, perPage: perPage ?? _ratingsMeta?.perPage);
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _ratingsMeta?.currentPage != null ? _ratingsMeta!.currentPage! * _perPage : _perPage;
            _dto = await remote.dealReview('${deal.id.value}', perPage: _perPageValue);
          }

          // Save new meta data
          _ratingsMeta = _dto.meta?.pagination;
          return right(_dto.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Either<AppHttpResponse, KtList<DealPlan>>> availablePlans({int perPage = 20, bool nextPage = false}) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => left(f),
      (_) async {
        final DealPlanListDTO _list;

        try {
          if (nextPage) {
            assert(_availablePlans != null);

            if (_availablePlans?.next != null)
              _list = await remote.availablePlans(page: _availablePlans!.next, perPage: perPage);
            else
              return left(AppHttpResponse.endOfList);
          } else {
            final _perPageValue = _availablePlans?.currentPage != null ? _availablePlans!.currentPage! * perPage : perPage;
            _list = await remote.availablePlans(perPage: _perPageValue);
          }

          // Save new meta data
          _availablePlans = _list.meta?.pagination;
          return right(_list.domain);
        } on AppHttpResponse catch (e) {
          return left(e);
        } on AppNetworkException catch (e) {
          return left(e.asResponse());
        }
      },
    );
  }

  Future<Tuple2<AppHttpResponse?, Deal?>> sendBid(Deal deal, double amount, {KtList<Country>? countries}) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => Tuple2(f, null),
      (_) async {
        try {
          final result = await remote.bid('${deal.id.value}', amount: amount);
          final domain = result.data.domain;
          final response = AppHttpResponse.successful(result.meta?.message);

          return Tuple2(response, domain(countries));
        } on AppHttpResponse catch (e) {
          return Tuple2(e, null);
        } on AppNetworkException catch (e) {
          return Tuple2(e.asResponse(), null);
        }
      },
    );
  }

  Future<AppHttpResponse> createProduct(Product product) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => f,
      (_) async {
        try {
          final result = await remote.storeProduct(ProductDTOData.fromDomain(product));
          final response = AppHttpResponse.successful(result.meta?.message);
          return response;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse?> favorite(Deal deal) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => f,
      (_) async {
        try {
          await remote.favorite('${deal.id.value}');
          return null;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }

  Future<AppHttpResponse?> unfavorite(Deal deal) async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      (f) => f,
      (_) async {
        try {
          await remote.unfavorite('${deal.id.value}');
          return null;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
    );
  }
}
