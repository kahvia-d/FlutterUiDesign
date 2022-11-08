import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import 'notification_test.dart';

void main(){
  AwesomeNotifications().initialize(
      "resource://drawable/test",
      [
        NotificationChannel(
          channelKey: "basic_channel",
          channelName: "BasicNotifications",
          channelDescription: "for message",
          defaultColor: Colors.teal,
          importance: NotificationImportance.High,
          channelShowBadge: true
        )
      ]
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      title: "awesome_notifications",
      home: const NotificationTestPage(),
    );
  }
}
