import 'package:flutter/material.dart';
import 'package:flutter_ui_design/login_2/components/textField.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/girlandcat.jpg"),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            //拓展的留空部分，展现背景图片
            Expanded(child: Container()),
            //登录主体
            Padding(
              //卡片两边留空
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                //卡片也给内边距，控制密码框宽度
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  //卡片内部组件采用列布局，标题，两个输入框，一个登录按钮
                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      const Text(
                        "Login Now",
                        style: TextStyle(
                            fontFamily: "Bebas_Neue",
                            fontSize: 40
                        ),
                      ),
                      const SizedBox(height: 15,),
                      WritingArea(icon: Icon(Icons.email,color: Colors.grey.shade700,),obscure: false,),
                      const SizedBox(height: 20,),
                      WritingArea(icon: Icon(Icons.lock,color: Colors.grey.shade700,),obscure: true,),
                      const SizedBox(height: 10,),
                      OutlinedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(const Size(310, 40)),
                            backgroundColor: MaterialStateProperty.all(Colors.blueAccent.shade700)
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
