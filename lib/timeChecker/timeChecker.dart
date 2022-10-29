import 'package:flutter/material.dart';

import 'homepage.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "TimeChecker",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
