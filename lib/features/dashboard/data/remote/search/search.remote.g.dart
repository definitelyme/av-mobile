// GENERATED CODE - DO NOT MODIFY BY HAND

part of search.remote.dart;

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _SearchRemote implements SearchRemote {
  _SearchRemote(this._dio, {this.baseUrl});

  final AppHttpClient _dio;

  String? baseUrl;

  @override
  Future<UserListDTO> users(
      {model = 'user', required param, page, perPage}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'model': model,
      r'searchParam': param,
      r'page': page,
      r'per_page': perPage
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserListDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'EndPoints.SEARCH_FOR_ANYTHING',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeUserListDTO, _result.data!);
    return value;
  }

  @override
  Future<ProductListDTO> products(
      {model = 'product', required param, page, perPage}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'model': model,
      r'searchParam': param,
      r'page': page,
      r'per_page': perPage
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProductListDTO>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'EndPoints.SEARCH_FOR_ANYTHING',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = await compute(deserializeProductListDTO, _result.data!);
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
