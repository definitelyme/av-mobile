library app_update.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:new_version/new_version.dart';

class AppUpdate {
  static NewVersion newVersion = NewVersion(iOSAppStoreCountry: 'us');

  static Future<void> checkForUpdates([bool? forceUpdate]) async {
    try {
      if (env.flavor == BuildFlavor.prod && kReleaseMode) {
        if (App.platform.isAndroid) {
          final _forceUpdate = forceUpdate ?? false;
          final info = await InAppUpdate.checkForUpdate();
          final updateAvailable = info.updateAvailability == UpdateAvailability.updateAvailable;

          if (updateAvailable && _forceUpdate) {
            await InAppUpdate.performImmediateUpdate();
          } else if (updateAvailable && !_forceUpdate) {
            final status = await InAppUpdate.startFlexibleUpdate();
            if (status == AppUpdateResult.success)
              await InAppUpdate.completeFlexibleUpdate();
            else if (status == AppUpdateResult.inAppUpdateFailed || status == AppUpdateResult.userDeniedUpdate) {
              await PopupDialog.info(message: 'Update failed. Please try again later.').render();
            }
          }
        } else if (App.platform.isIOS) {
          final context = navigator.navigatorKey.currentContext;
          await context?.let((it) async => await newVersion.showAlertIfNecessary(context: it));
        }
      }
    } catch (e, tr) {
      await App.report(e, tr, reason: 'AppUpdate.checkForUpdates($forceUpdate)');
    }
  }
}
