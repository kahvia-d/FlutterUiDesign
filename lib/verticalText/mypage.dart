import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<VerticalText> poetry=const[
      VerticalText("将进酒，"),
      VerticalText("杯莫停。"),
      VerticalText("与君歌一曲,"),
      VerticalText("请君为我倾耳听。")
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("test"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.from(poetry.reversed) ,
        ),
      ),
    );
  }
}

class VerticalText extends StatelessWidget {
  final String text;
  const VerticalText(this.text,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //分割字符串为单字，每个字包裹一个Text组件，作为Wrap组件的子组件
    List<Text> texts=text.split("").map((string) => Text(string, style: const TextStyle(fontSize: 17))).toList();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Wrap(
        //排列方式，vertical代表竖着排，排不够就往旁边排
        direction: Axis.vertical,
        //主轴方向上间距
        spacing: 20,
        //交叉轴方向上间距
        runSpacing: 30,
        alignment: WrapAlignment.center,
        children: texts,
      ),
    );
  }
}


