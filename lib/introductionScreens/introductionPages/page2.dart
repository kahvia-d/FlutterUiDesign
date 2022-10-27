import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroductionPage2 extends StatelessWidget {
  const IntroductionPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple.shade300,
      child: Lottie.asset("assets/lotties/send-message-text.json"),
    );
  }
}
