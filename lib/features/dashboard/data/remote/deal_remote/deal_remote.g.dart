// GENERATED CODE - DO NOT MODIFY BY HAND

part of deal_remote.dart;

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _DealRemote implements DealRemote {
  _DealRemote(this._dio, {this.baseUrl});

  final AppHttpClient _dio;

  String? baseUrl;

  @override
  Future<DealListDTO> filterDeals(
      {population = _defaultPopulation,
      bidStatus,
      dealStatus,
      bidType,
      sortBy,
      isPrivate,
      sponsored,
      page,
      perPage}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'population': population,
      r'bidStatus': bidStatus,
      r'status': dealStatus,
      r'type': bidType,
      r'sort': sortBy,
      r'isPrivate': isPrivate,
      r'sponsored': sponsored,
      r'page': page,
      r'per_page': perPage
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DealListDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/deals',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeDealListDTO, _result.data!);
    return value;
  }

  @override
  Future<DealDTO> getDeal(id, {population = _singleDealPopulation}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'population': population};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DealDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/deals/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeDealDTO, _result.data!);
    return value;
  }

  @override
  Future<CategoryListDTO> categories() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CategoryListDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/categories',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeCategoryListDTO, _result.data!);
    return value;
  }

  @override
  Future<CategoryDTO> getCategory(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CategoryDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/categories/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeCategoryDTO, _result.data!);
    return value;
  }

  @override
  Future<CategoryListDTO> filterDealsByCategory(id,
      {isPrivate, isMobile = true, sponsored, page, perPage}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'isPrivate': isPrivate,
      r'isMobile': isMobile,
      r'sponsored': sponsored,
      r'page': page,
      r'per_page': perPage
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CategoryListDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/categories/${id}/deals',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeCategoryListDTO, _result.data!);
    return value;
  }

  @override
  Future<DealDTO> bid(id,
      {population = _defaultPopulation, required amount}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'population': population};
    final _headers = <String, dynamic>{};
    final _data = {'amount': amount};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DealDTO>(
            Options(method: 'PUT', headers: _headers, extra: _extra)
                .compose(_dio.options, '/deals/${id}/bid',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeDealDTO, _result.data!);
    return value;
  }

  @override
  Future<ProductDTO> storeProduct(dto) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(await compute(serializeProductDTOData, dto));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProductDTO>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/products/sponsored',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeProductDTO, _result.data!);
    return value;
  }

  @override
  Future<BidHistoryDTO> bidHistory(id,
      {population = _defaultPopulation, page, perPage}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'population': population,
      r'page': page,
      r'per_page': perPage
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BidHistoryDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/data/deals-histories/${id}/user/stats',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeBidHistoryDTO, _result.data!);
    return value;
  }

  @override
  Future<SellHistoryDTO> sellHistory(id,
      {population = _defaultPopulation, page, perPage}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'population': population,
      r'page': page,
      r'per_page': perPage
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SellHistoryDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/data/deals/${id}/user/stats',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeSellHistoryDTO, _result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> favorite(dealId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'deal': dealId};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/deals/me/wishlist',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeAppHttpResponse, _result.data!);
    return value;
  }

  @override
  Future<AppHttpResponse> unfavorite(dealId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'deal': dealId};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppHttpResponse>(
            Options(method: 'DELETE', headers: _headers, extra: _extra)
                .compose(_dio.options, '/deals/me/wishlist',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeAppHttpResponse, _result.data!);
    return value;
  }

  @override
  Future<WishListDTO> wishlist(
      {population = _wishlistPopulation, page, perPage}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'population': population,
      r'page': page,
      r'per_page': perPage
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<WishListDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/deals/me/wishlist',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeWishListDTO, _result.data!);
    return value;
  }

  @override
  Future<RatingDTO> myReviews(
      {population = _ratingPopulation, page, perPage}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'population': population,
      r'page': page,
      r'per_page': perPage
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RatingDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/ratings/get-rating',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeRatingDTO, _result.data!);
    return value;
  }

  @override
  Future<RatingDTO> dealReview(id,
      {population = _ratingPopulation, page, perPage}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'population': population,
      r'page': page,
      r'per_page': perPage
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RatingDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/ratings/get-rating/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeRatingDTO, _result.data!);
    return value;
  }

  @override
  Future<DealPlanListDTO> availablePlans({page, perPage}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'per_page': perPage
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DealPlanListDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/plans',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeDealPlanListDTO, _result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
