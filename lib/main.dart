import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'compass/compassPage.dart';

void main(){
  debugRepaintRainbowEnabled=true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>CompassDirection(),
      child: const MaterialApp(
        title: "Compass",
        debugShowCheckedModeBanner: false,
        home: CompassPage(),
      ),
    );
  }
}

class CompassDirection extends ChangeNotifier{
  int _direction=0;

  int get direction=>_direction;

  void setDirection(int direct){
    _direction=direct;
    notifyListeners();
  }
}
