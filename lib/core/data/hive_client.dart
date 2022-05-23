library hive_client.dart;

import 'package:hive_flutter/hive_flutter.dart';
import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';

class HiveClient {
  static const _hiveBoxPrefix = 'ac.village_hive_box';
  static const _userDTOBox = '${_hiveBoxPrefix}__user_dto';
  static const tabNavigationIndexBox = '${_hiveBoxPrefix}__tab_navigation_cubit';

  HiveClient._();

  Box<UserDTO> get userDTOBox => Hive.box<UserDTO>(HiveClient._userDTOBox);
  Box<int> get tabNavBox => Hive.box<int>(HiveClient.tabNavigationIndexBox);

  static Future<HiveClient> initialize() async {
    await Hive.initFlutter();
    HiveClient._registerAdapters();
    await HiveClient._openHiveBoxes();

    return HiveClient._();
  }

  static void _registerAdapters() {
    AuthProvider.registerAdapter();
    UserDTO.registerAdapter();
  }

  /// Should be called just [once] preferably on app start
  static Future<void> _openHiveBoxes() async {
    await Hive.openBox<UserDTO>(HiveClient._userDTOBox);
    await Hive.openBox<int>(HiveClient.tabNavigationIndexBox);
  }
}
