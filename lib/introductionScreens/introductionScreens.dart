import 'package:flutter/material.dart';
import 'IntroductionScreensPage.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "IntroductionScreens",
      home: IntroductionScreensPage(),
    );
  }
}


