import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_ui_design/introductionScreens/introductionPages/page1.dart';
import 'package:flutter_ui_design/introductionScreens/introductionPages/page2.dart';
import 'package:flutter_ui_design/introductionScreens/introductionPages/page3.dart';

class IntroductionScreensPage extends StatelessWidget {
  //the page controller is essential
  final PageController _controller=PageController();

  IntroductionScreensPage({super.key});

  @override
  Widget build(BuildContext context) {
    //only using the stack layout can make the dots bar shown correctly on the screen
    //因为用column会超出屏幕，然后报错
    return Stack(
      alignment: const AlignmentDirectional(0, 0.75),
      children: [
        PageView(
          controller: _controller,
          children: const [
            IntroductionPage1(),
            IntroductionPage2(),
            IntroductionPage3()
          ],
        ),
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          onDotClicked: (index){
            _controller.jumpToPage(index);
          },
          //是特效！我加了特效！
          //ExpandingDotsEffect,ColorTransitionEffect,JumpingDotEffect...
          effect: SwapEffect(
            activeDotColor: Colors.deepPurple,
            dotColor: Colors.deepPurple.shade200
          ),
        )
      ],
    );
  }
}
