import 'package:flutter/material.dart';
import 'CompassPage2.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "compass",
      debugShowCheckedModeBanner: false,
      home: CompassPage2(),
    );
  }
}
