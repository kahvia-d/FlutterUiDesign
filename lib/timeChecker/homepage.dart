import 'package:flutter/material.dart';
import 'package:flutter_ui_design/timeChecker/ampm.dart';
import 'package:flutter_ui_design/timeChecker/hour.dart';
import 'package:flutter_ui_design/timeChecker/minute.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: const Checker(),
    );
  }
}

class Checker extends StatelessWidget {
  const Checker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //层叠布局，用一个阴影来标注当前选项
    return Stack(
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                child:ListWheelScrollView.useDelegate(
                  //固定距离滚动，这样可以刚好停留在一个选项上
                    physics: const FixedExtentScrollPhysics(),
                    //透视程度。0代表从无限远的地方观察圆柱，而1代表从无限近的地方观察，近到无法渲染
                    //可选择的范围是(0,0.01]，隔得越远，弧线角度变化越不明显，看到的范围也就越大
                    perspective: 0.005,
                    //直径比，默认为2。可以代表这个圆柱截面圆的直径。
                    //在某个固定的地方观察圆柱，圆柱截面直径越大，角度变化越不明显。列表看起来越像直线，看的范围反而好像变大了。
                    diameterRatio: 1.2,
                    //每个选项的高度
                    itemExtent: 50,
                    //子选项构造器
                    childDelegate: ListWheelChildBuilderDelegate(
                        childCount: 13,
                        builder: (context,index)=>Hour(hour: index,)
                    )
                ),
              ),
              SizedBox(
                width: 100,
                child: ListWheelScrollView.useDelegate(
                    physics: const FixedExtentScrollPhysics(),
                    // perspective: 0.01,
                    // diameterRatio: 2,
                    perspective: 0.005,
                    diameterRatio: 1.2,
                    itemExtent: 50,
                    childDelegate: ListWheelChildBuilderDelegate(
                        childCount: 60,
                        builder: (context,index)=>Minute(minute: index)
                    )
                ),
              ),
              SizedBox(
                width: 100,
                child: ListWheelScrollView.useDelegate(
                    physics: const FixedExtentScrollPhysics(),
                    perspective: 0.005,
                    diameterRatio: 1.2,
                    itemExtent: 50,
                    childDelegate: ListWheelChildBuilderDelegate(
                        childCount: 2,
                        builder: (context,index){
                          return AmPm(am: index==0);
                        }
                    )
                ),
              )
            ],
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.3),
              borderRadius: BorderRadius.circular(24)
            ),
            height: 50,
          ),
        )
      ],
    );
  }
}

