import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterzhihuke/page/setting/account_and_security_page.dart';
import 'package:flutterzhihuke/page/setting/global_mail_setting_page.dart';
import 'package:flutterzhihuke/page/setting/global_push_notification_setting_page.dart';
import 'package:flutterzhihuke/page/setting/nearest_activity_history_page.dart';
import 'package:flutterzhihuke/page/setting/setting_page.dart';
import 'package:flutterzhihuke/page/setting/trusted_device_detail_page.dart';
import 'package:flutterzhihuke/page/setting/trusted_device_list_page.dart';
import 'package:flutterzhihuke/page/test_page.dart';
import 'package:flutterzhihuke/page/setting/video_auto_play_setting_page.dart';

void main() {
  runApp(MyApp());
}

StreamController themeStreamController = StreamController<bool>.broadcast();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      initialData: false,
      stream: themeStreamController.stream,
      builder: (context, snapshot) {
        return MaterialApp(
          title: '知乎',
          theme: _getThemeData(snapshot?.data ?? false, context).copyWith(
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: '/setting',
          routes: {
            "/setting": (_) => SettingPage(),
            '/setting/videoAutoPlaySetting': (_) => VideoAutoPlaySettingPage(),
            '/test': (_) => TestPage(),
            '/setting/globalMailSetting': (_) => GlobalMailSettingPage(),
            '/setting/accountAndSecurity': (_) => AccountAndSecurityPage(),
            '/setting/accountAndSecurity/trustedDeviceList': (_) =>
                TrustedDeviceListPage(),
            '/setting/accountAndSecurity/trustedDeviceDetail': (_) =>
                TrustedDeviceDetailPage(),
            '/setting/accountAndSecurity/nearestActivityHistory': (_) =>
                NearestActivityHistoryPage(),
            '/setting/globalPushNotificationSetting': (_) =>
                GlobalPushNotificationSettingPage()
          },
//          home: MyHomePage(title: 'Flutter Demo Home Page'),
        );
      },
    );
  }

  ThemeData _getThemeData(bool isDark, BuildContext context) {
    return isDark
        ? ThemeData(brightness: Brightness.dark)
        : ThemeData(primaryColor: Colors.white);
  }
}

Widget buildDivider() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Divider(
      height: 1,
    ),
  );
}

Widget buildListHeader(String name, BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 16, top: 16, bottom: 8),
    child: Text(
      name,
      style: Theme.of(context)
          .textTheme
          .subtitle2
          .copyWith(color: Colors.blueAccent),
    ),
  );
}
