import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressBarPage extends StatelessWidget {
  const ProgressBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: ProgressBarPageContent(),
    );
  }
}

class ProgressBarPageContent extends StatefulWidget {
  const ProgressBarPageContent({Key? key}) : super(key: key);
  @override
  State<ProgressBarPageContent> createState() => _ProgressBarPageContentState();
}

class _ProgressBarPageContentState extends State<ProgressBarPageContent> {
  double progress=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularPercentIndicator(
            //开启过渡动画
            animation: true,
            //动画起点从上一次动画终点开始。默认从0开始。
            animateFromLastPercent: true,
            //圆环底色
            backgroundColor: Colors.red[200]!,
            //外圆半径
            radius: 150,
            //圆环宽度
            lineWidth: 10,
            //圆环线帽设置，也就是进度条的尾部，多出一部分用作线帽，线帽的形状
            circularStrokeCap: CircularStrokeCap.round,
            //这里圆环中间可放置任意元素。
            center: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/nilu.png"),
              radius: 140,
            ),
            //percent为进度
            percent: progress
          ),
          const SizedBox(height: 10,),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.redAccent)
            ),
            onPressed: (){
              setState(() {
                if(progress==1) {
                  progress=0;
                } else {
                  progress=1;
                }
              });
            },
            child: const Text("Show Progress")
          )
        ],
      ),
    );
  }
}

