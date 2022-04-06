library utilities_repository.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kt_dart/collection.dart';

@injectable
class UtilitiesRepository extends BaseRepository {
  @override
  final InternetConnectionChecker connectionChecker;

  @override
  final Connectivity connectivity;

  UtilitiesRepository(this.connectionChecker, this.connectivity);

  Future<KtList<Country>> countries(BuildContext context) async {
    final response = await CountryDTO.countries(context);
    return response.map((e) => e.domain).toImmutableList();
  }
}
