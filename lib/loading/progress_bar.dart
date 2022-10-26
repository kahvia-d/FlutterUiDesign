import 'package:flutter/material.dart';
import 'package:flutter_ui_design/loading/progress_bar_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "progress_bar",
      home: ProgressBarPage(),
    );
  }
}
