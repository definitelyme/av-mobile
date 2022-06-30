library hive_client.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveClient {
  static const _hiveBoxPrefix = 'ac.village_hive_box';
  static const _userDTOBox = '${_hiveBoxPrefix}__user_dto';
  static const _tabNavigationIndexBox = '${_hiveBoxPrefix}__tab_navigation_cubit';

  const HiveClient._();

  static Box<UserDTO>? get userDTOBox => isOpen(_userDTOBox) ? box<UserDTO>(_userDTOBox) : null;
  static Box<int>? get tabNavBox => isOpen(_tabNavigationIndexBox) ? box<int>(_tabNavigationIndexBox) : null;

  static Future<void> _openHiveBoxes() async {
    try {
      await openBox<UserDTO>(_userDTOBox);
      await openBox<int>(_tabNavigationIndexBox);
    } on HiveError catch (e, tr) {
      await App.report(exception: e, stack: tr);
    }
  }

  /// Register all [Box]es that are used in the app
  static void _registerAdapters() async {
    try {
      AuthProvider.registerAdapter();
      UserDTO.registerAdapter();
    } on HiveError catch (e, tr) {
      await App.report(exception: e, stack: tr);
    }
  }

  static Box<E> box<E>(String name) => Hive.box<E>(name);

  /// This method should be called `once` preferably on app start
  ///
  /// - It initializes `Hive`
  ///
  /// - It opens all `Box`es that are used in the app
  ///
  /// - It registers all `TypeAdapter`s that are used in the app
  static Future<HiveClient> initialize() async {
    await Hive.initFlutter();
    HiveClient._registerAdapters();
    await HiveClient._openHiveBoxes();

    return const HiveClient._();
  }

  static bool isOpen(String name) => Hive.isBoxOpen(name);

  static Future<Box<E>?> openBox<E>(String name, {bool shouldRethrow = false}) async {
    try {
      return await Hive.openBox<E>(name);
    } on HiveError catch (e, tr) {
      await App.report(exception: e, stack: tr);

      if (!shouldRethrow)
        return null;
      else
        rethrow;
    }
  }
}
