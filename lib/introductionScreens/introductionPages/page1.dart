import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroductionPage1 extends StatelessWidget {
  const IntroductionPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 30,),
            const Text(
              "It's Achat",
              style: TextStyle(
                fontFamily: "Bebas_Neue",
                fontSize: 70,
                color: Colors.white
              ),
            ),
            Lottie.asset("assets/lotties/talk-show2.json"),
            const SizedBox(height: 70,),
          ],
        ),
      ),
    );
  }
}
