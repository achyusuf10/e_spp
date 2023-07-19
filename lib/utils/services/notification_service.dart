import 'dart:async';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationServices {
  /// * Flutter Local Notification

  static final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> initNotification() async {
    // var res = notificationsPlugin
    //     .resolvePlatformSpecificImplementation<
    //         AndroidFlutterLocalNotificationsPlugin>().
    // .requestPermission();
    _configureLocalTimeZone();
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');

    var initializationSettings = const InitializationSettings(
      android: initializationSettingsAndroid,
    );
    await notificationsPlugin.initialize(
      initializationSettings,
    );
  }

  static notificationDetails({
    bool useSound = true,
  }) {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        'Prayer Time ID',
        'Prayer Time Config',
        importance: Importance.max,
        priority: Priority.max,
        enableLights: true,
        playSound: useSound,
        visibility: NotificationVisibility.public,
      ),
    );
  }

  static Future<void> _configureLocalTimeZone() async {
    tz.initializeTimeZones();
    final String timeZone = await FlutterNativeTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(timeZone));
  }

  static Future<void> cancel({
    required int id,
  }) async {
    return notificationsPlugin.cancel(id);
  }
}
