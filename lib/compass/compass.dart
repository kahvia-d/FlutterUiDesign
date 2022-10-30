import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'compassPage.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

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
