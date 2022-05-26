library app_update.dart;

import 'package:flutter/foundation.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:in_app_update/in_app_update.dart';

class AppUpdate {
  static Future<void> checkForUpdates([bool? flexible]) async {
    if (App.platform.isAndroid && env.flavor == BuildFlavor.prod && kReleaseMode) {
      final _flexible = flexible ?? true;
      final info = await InAppUpdate.checkForUpdate();

      if (info.updateAvailability == UpdateAvailability.updateAvailable && !_flexible) {
        await InAppUpdate.performImmediateUpdate();
      } else if (info.updateAvailability == UpdateAvailability.updateAvailable && _flexible) {
        try {
          final flexible = await InAppUpdate.startFlexibleUpdate();
          if (flexible == AppUpdateResult.success) await InAppUpdate.completeFlexibleUpdate();
        } catch (_) {}
      }
    }
  }
}
