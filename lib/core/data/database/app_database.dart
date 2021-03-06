library app_database.dart;

import 'dart:async';

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/manager/serializer/serializers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:floor/floor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.freezed.dart';
part 'app_database.g.dart';
part 'base_dao.dart';
part 'package:auctionvillage/core/data/models/user/user_dto.dart';

@TypeConverters([
  TimestampFloorConverter,
  CountryDTOFloorConverter,
  AuthProviderFloorConverter,
])
@Database(version: 1, entities: [
  _$_UserDTO,
])
abstract class AppDatabase extends FloorDatabase {
  UserDAO get userDAO;
}
