library deal_remote.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/data/models/models.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'deal_remote.g.dart';

const String _defaultPopulation =
    '[{"path": "vendor"}, {"path" : "user" , "select" : "firstName lastName"}, {"path": "product", "populate" : ["category", "user"], "select": "-category -deal -user -vendor"}]';

const String _singleDealPopulation =
    '[{"path": "vendor"}, {"path" : "user" , "select" : "firstName lastName"}, {"path": "product", "populate" : ["category", "user", "vendor"], "select": "-deal"}]';

const String _wishlistPopulation =
    '[{"path": "user", "select": "firstName lastName"},{"path": "deal", "select": "-category -deal -user -vendor", "populate": {"path": "product", "select": "-category -deal -user -vendor"}}]';

const String _ratingPopulation = '["user", {"path" : "user" , "select" : "firstName lastName"}]';

@lazySingleton
@RestApi(parser: Parser.FlutterCompute)
abstract class DealRemote {
  @factoryMethod
  factory DealRemote(AppHttpClient dio) = _DealRemote;

  @GET(EndPoints.FIND_DEALS)
  Future<DealListDTO> filterDeals({
    @Query('population') String population = _defaultPopulation,
    @Query('bidStatus') String? bidStatus,
    @Query('status') String? dealStatus,
    @Query('type') String? bidType,
    @Query('sort') String? sortBy,
    @Query('isPrivate') bool? isPrivate,
    @Query('sponsored') bool? sponsored,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @GET(EndPoints.GET_SINGLE_DEAL)
  Future<DealDTO> getDeal(
    @Path() String id, {
    @Query('population') String population = _singleDealPopulation,
  });

  @GET(EndPoints.FIND_CATEGORIES)
  Future<CategoryListDTO> categories();

  @GET(EndPoints.GET_SINGLE_CATEGORY)
  Future<CategoryDTO> getCategory(@Path() String id);

  @GET(EndPoints.FILTER_BY_CATEGORY)
  Future<CategoryListDTO> filterDealsByCategory(
    @Path() String id, {
    @Query('isPrivate') bool? isPrivate,
    @Query('isMobile') bool isMobile = true,
    @Query('sponsored') bool? sponsored,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @PUT(EndPoints.PLACE_A_BID)
  Future<DealDTO> bid(
    @Path() String id, {
    @Query('population') String population = _defaultPopulation,
    @Field() required double amount,
  });

  @POST(EndPoints.CREATE_PRODUCT)
  Future<ProductDTO> storeProduct(@Body() ProductDTOData dto);

  @GET(EndPoints.BID_HISTORY)
  Future<BidHistoryDTO> bidHistory(
    @Path() String id, {
    @Query('population') String population = _defaultPopulation,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @GET(EndPoints.SELL_HISTORY)
  Future<SellHistoryDTO> sellHistory(
    @Path() String id, {
    @Query('population') String population = _defaultPopulation,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @POST(EndPoints.WISHLIST)
  Future<AppHttpResponse> favorite(@Field('deal') String dealId);

  @DELETE(EndPoints.WISHLIST)
  Future<AppHttpResponse> unfavorite(@Field('deal') String dealId);

  @GET(EndPoints.WISHLIST)
  Future<WishListDTO> wishlist({
    @Query('population') String population = _wishlistPopulation,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @GET(EndPoints.MY_REVIEWS)
  Future<RatingDTO> myReviews({
    @Query('population') String population = _ratingPopulation,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @GET(EndPoints.GET_DEAL_REVIEW)
  Future<RatingDTO> dealReview(
    @Path() String id, {
    @Query('population') String population = _ratingPopulation,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  @GET(EndPoints.GET_AVAILABLE_PLANS)
  Future<DealPlanListDTO> availablePlans({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });
}
