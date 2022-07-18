// ignore_for_file: unused_local_variable

part of 'modules.dart';

class _HttpClients {
  static final BaseOptions _options = BaseOptions(
    baseUrl: env.baseUri.toString(),
    contentType: 'application/json',
    connectTimeout: env.connectTimeout,
    receiveTimeout: env.receiveTimeout,
    headers: {
      'content-type': 'application/json',
      'x-api-key': env.appApiKey,
    },
  );

  static List<Interceptor> _interceptors(Dio dio) {
    final list = <Interceptor>[];

    final _cacheOptions = CacheOptions(
      // A default store is required for interceptor.
      store: MemCacheStore(),
      // Default.
      policy: CachePolicy.request,
      // Optional. Returns a cached response on error but for statuses 401 & 403.
      hitCacheOnErrorExcept: [401, 403],
      // Optional. Overrides any HTTP directive to delete entry past this duration.
      maxStale: const Duration(days: 14),
      // Default. Allows 3 cache sets and ease cleanup.
      priority: CachePriority.normal,
      // Default. Key builder to retrieve requests.
      keyBuilder: CacheOptions.defaultCacheKeyBuilder,
      // Default. Allows to cache POST requests.
      // Overriding [keyBuilder] is strongly recommended.
      allowPostMethod: false,
    );

    // Attach cache interceptor
    list.add(DioCacheInterceptor(options: _cacheOptions));

    if (kDebugMode)
      list.add(PrettyDioLogger(
        request: false,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 100,
      ));

    list.add(AuthorizationInterceptor());

    return list;
  }

  static AppHttpClient _clientv2() {
    final dio = Dio(_options);

    dio.interceptors.addAll(_interceptors(dio));

    final client = AppHttpClient(client: dio, mapper: AppHttpResponse.fromDioResponse);

    return client;
  }
}
