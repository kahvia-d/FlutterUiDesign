import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:smooth_compass/utils/src/compass_ui.dart';

class CompassPage2 extends StatefulWidget {
  const CompassPage2({Key? key}) : super(key: key);

  @override
  State<CompassPage2> createState() => _CompassPage2State();
}

class _CompassPage2State extends State<CompassPage2> {
  bool _hasPermission=false;
  @override
  void initState() {
    super.initState();
    _fetchPermissionStatus();
  }
  void _fetchPermissionStatus(){
    //指南针初始化状态的时候，先确认权限，有没有获得授权
    Permission.locationWhenInUse.status.then((status) async {
      //用mounted是为了确认此时super.initState()已经完毕
      if(mounted){
        //保存当前权限获取的状态，已授权或者未授权
        _hasPermission=status==PermissionStatus.granted;
        //未授权则尝试获取一次权限
        if(_hasPermission==false){
          if(await Permission.locationWhenInUse.request().isGranted){
            _hasPermission=true;
          }
        }
        // setState(()  {});
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade400,
      body: Center(
        child: SmoothCompass(
          rotationSpeed: 200,
          compassAsset:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(height: 0,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Image.asset("assets/images/compass.png",color: Colors.black,),
              ),
              const SizedBox(height: 20,)
            ],
          ),
          compassBuilder: (context,AsyncSnapshot<CompassModel>? compassData,Widget compassAsset){
            // print();
            return compassAsset;
          },
        ),
      ),
    );
  }
}
