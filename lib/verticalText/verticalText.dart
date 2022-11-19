import 'package:flutter/material.dart';
import 'mypage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Vertical Text",
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}
