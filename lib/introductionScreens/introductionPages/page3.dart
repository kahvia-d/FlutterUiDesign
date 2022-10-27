import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroductionPage3 extends StatelessWidget {
  const IntroductionPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple.shade300,
      child: Lottie.asset("assets/lotties/wifi-high-speed-internet.json"),
    );
  }
}
