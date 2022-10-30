import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:flutter_ui_design/compass/compass.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

class CompassPage extends StatelessWidget {
  const CompassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade300,
      body: Content(),
    );
  }
}

class Content extends StatefulWidget {

  Content({Key? key}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
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
    StreamController controller=StreamController();
    controller.stream.listen((CompassEvent) {
      context.read<CompassDirection>().setDirection(CompassEvent);
      print(CompassEvent);
    });

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<CompassEvent>(
            stream: FlutterCompass.events,
            builder: (context,snapshot){
              //流的单元出错
              if(snapshot.hasError){
                return Text("An error named ${snapshot.error}happened");
              }
              //等待流
              if(snapshot.connectionState==ConnectionState.waiting){
                return const Center(child: CircularProgressIndicator(),);
              }

              double? direction=snapshot.data!.heading;
              //没有方向，设备不支持
              if(direction==null){
                return const Text("No,you service can't do this");
              }
              // print(direction);
              // print((double.parse(direction.toStringAsFixed(1))-direction.toInt().toDouble()).abs());
              double delta=(double.parse(direction.toStringAsFixed(1))-direction.toInt().toDouble()).abs();
              if(delta>0.9){
                controller.sink.add(direction.round());
                // context.read<CompassDirection>().setDirection(direction.round());
              }
              return Container();
            },
          ),
          Compass()
        ],
      )
    );
  }
}

class Compass extends StatelessWidget {
  const Compass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int direction=context.watch<CompassDirection>().direction;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RepaintBoundary(
        child: Transform.rotate(
          angle: direction!*(pi/180)*-1,
          child: Image.asset("assets/images/compass.png",color: Colors.black,),
        ),
      ),
    );
  }
}





