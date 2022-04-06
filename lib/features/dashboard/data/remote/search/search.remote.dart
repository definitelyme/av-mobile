library search.remote.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'search.remote.g.dart';

@lazySingleton
@RestApi(parser: Parser.FlutterCompute)
abstract class SearchRemote {
  @factoryMethod
  factory SearchRemote(AppHttpClient dio) = _SearchRemote;

  @GET('EndPoints.SEARCH_FOR_ANYTHING')
  Future<UserListDTO> users({
    @Query('model') String model = 'user',
    @Query('searchParam') required String param,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @GET('EndPoints.SEARCH_FOR_ANYTHING')
  Future<ProductListDTO> products({
    @Query('model') String model = 'product',
    @Query('searchParam') required String param,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });
}
