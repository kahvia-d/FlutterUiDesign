
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter_ui_design/notifications/utils/createAnId.dart';

Future<void> createAnNotification() async{
 await AwesomeNotifications().createNotification(
     content: NotificationContent(
       id: createAnId(),
       channelKey: "basic_channel",
       title: "Hey,Someone sent you a message",
       body: "Never give up, kahvia. That's what you need. You must be happy enough so that you can face anything",
       bigPicture: "assets://images/girlandcat",
       notificationLayout: NotificationLayout.BigPicture
     )
 ) ;
}