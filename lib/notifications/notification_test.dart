import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import 'notifications.dart';

class NotificationTestPage extends StatefulWidget {
  const NotificationTestPage({Key? key}) : super(key: key);

  @override
  State<NotificationTestPage> createState() => _NotificationTestPageState();
}

class _NotificationTestPageState extends State<NotificationTestPage> {
  @override
  void initState() {
    super.initState();
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if(!isAllowed){
        showDialog(
          context: context,
          builder: (context)=> AlertDialog(
            title: const Text("Please give me the power !"),
            content: const Text("I would like to send you a notification"),
            actions: [
              TextButton(
                  onPressed: (){Navigator.pop(context);},
                  child: const Text(
                      "No",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  )
              ),
              TextButton(
                onPressed: (){
                  AwesomeNotifications().requestPermissionToSendNotifications().then((value) => Navigator.pop(context));
                },
                child: const Text(
                  "Allow",
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold
                  ),
                )
              )
            ],
          )
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ElevatedButton(
        onPressed: createAnNotification,
        child: Text("Hello")
      ),
    );
  }
}
