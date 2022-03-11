library firebase_messaging_facade.dart;

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

abstract class MessagingFacade {
  const MessagingFacade();

  AwesomeNotifications get awesomeNotifications;

  static List<NotificationChannel> get channels => [
        defaultNotificationChannel,
        pushNotificationChannel,
      ];

  static NotificationChannel get defaultNotificationChannel =>
      NotificationChannel(
        channelKey: 'default_channel',
        channelName: 'Default',
        channelDescription: 'Receives notifications from the app',
        defaultColor: Palette.accentColor,
        importance: NotificationImportance.Default,
      );

  FirebaseMessaging get firebaseMessaging;

  static NotificationChannel get pushNotificationChannel => NotificationChannel(
        channelKey: 'push_notification',
        channelName: 'Push Notifications',
        importance: NotificationImportance.Max,
        defaultPrivacy: NotificationPrivacy.Private,
        channelDescription: 'Only when you receive a push notification.',
        soundSource: 'resource://raw/res_custom_notification',
        defaultColor: Palette.accentColor,
        channelShowBadge: true,
        playSound: true,
        enableVibration: true,
        enableLights: true,
      );

  Future<void> create();

  void dispose();

  Future<AppHttpResponse?> registerDevice();

  static Future<List<NotificationPermission>> requestPermission(
    BuildContext context, {
    // if you only intends to request the permissions until app level, set the channelKey value to null
    required String? channelKey,
    required List<NotificationPermission> permissionList,
  }) async {
    // Check if the basic permission was conceived by the user
    // if (!await requestBasicPermissionToSendNotifications(context)) return [];

    // Check which of the permissions you need are allowed at this time
    var permissionsAllowed = await AwesomeNotifications().checkPermissionList(
        channelKey: channelKey, permissions: permissionList);

    // If all permissions are allowed, there is nothing to do
    if (permissionsAllowed.length == permissionList.length)
      return permissionsAllowed;

    // Refresh the permission list with only the disallowed permissions
    var permissionsNeeded =
        permissionList.toSet().difference(permissionsAllowed.toSet()).toList();

    // Check if some of the permissions need to request user's intervention to be enabled
    var lockedPermissions = await AwesomeNotifications()
        .shouldShowRationaleToRequest(
            channelKey: channelKey, permissions: permissionsNeeded);

    if (!(await AwesomeNotifications().isNotificationAllowed())) {
      // If none, request directly
      if (lockedPermissions.isEmpty) {
        // Request the permission through native resources.
        await AwesomeNotifications().requestPermissionToSendNotifications(
            channelKey: channelKey, permissions: permissionsNeeded);

        // After the user comes back, check if the permissions has successfully enabled
        permissionsAllowed = await AwesomeNotifications().checkPermissionList(
            channelKey: channelKey, permissions: permissionsNeeded);
      } else {
        // If you need to show a rationale to educate the user to conceived the permission, show it
        await Utils.showAlertDialog<bool>(
            context: context,
            builder: (_) => AdaptiveAlertdialog<bool>(
                  // backgroundColor: Color(0xfffbfbfb),
                  width: 0.75.w,
                  title: 'Get Notified!',
                  defaultValue: false,
                  material: true,
                  useMaterialActions: true,
                  body: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //
                        0.02.verticalh,
                        //
                        AdaptiveText(
                          'Grant permission to receive latest posts and updates',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          isDefault: Utils.platform_(cupertino: true),
                        ),
                        //
                        0.01.verticalh,
                        //
                        AdaptiveText(
                          lockedPermissions
                              .join(', ')
                              .replaceAll('NotificationPermission.', ''),
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          isDefault: Utils.platform_(cupertino: true),
                        ),
                      ],
                    )
                  ],
                  disableSecondButton: true,
                  firstButtonText: 'Later',
                  onFirstPressed: () {
                    navigator.pop();
                    return true;
                  },
                  secondTextStyle: const TextStyle(color: Palette.accentColor),
                  secondButtonText: 'Sure',
                  onSecondPressedFuture: () async {
                    final result = getIt<AwesomeNotifications>()
                        .requestPermissionToSendNotifications(
                      channelKey: channelKey,
                      permissions: lockedPermissions,
                    );

                    await getIt<FirebaseMessaging>().requestPermission(
                      alert: true,
                      announcement: true,
                      badge: true,
                      carPlay: true,
                      criticalAlert: false,
                      provisional: false,
                      sound: true,
                    );

                    // After the user come back, check if the permissions has successfully enabled
                    permissionsAllowed =
                        await AwesomeNotifications().checkPermissionList(
                      channelKey: channelKey,
                      permissions: lockedPermissions,
                    );

                    return result;
                  },
                  buttonDirection: Axis.horizontal,
                ));
      }
    }

    // Return the updated list of allowed permissions
    return permissionsAllowed;
  }

  Future<void> setup(BuildContext context, [bool isAuthenticated = false]);
}
