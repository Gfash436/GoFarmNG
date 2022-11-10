import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Utilities/routers.dart';

import '../../Styles/colors.dart';
import '../../Widgets/button.dart';
import '../../Widgets/image.dart';
import '../../Widgets/myText.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: getPrgetProportionateScreenHeight(160)),
                Container(
                    child: Column(
                  children: [
                    image('assets/images/logo.png'),
                    SizedBox(height: getPrgetProportionateScreenHeight(8)),
                    myText(
                        text: 'GoFarmNG',
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: textColor),
                    SizedBox(height: getPrgetProportionateScreenHeight(8)),
                    myText(
                      text: 'Here for Your daily needs',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: textColor,
                    ),
                  ],
                )),
                SizedBox(height: getPrgetProportionateScreenHeight(80)),
                customButton2(context: context),
                customButton(context: context, text: 'Sign Up')
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navigate() {
    // Future.delayed(const Duration(seconds: 3), () {
    //   PageNavigator(ctx: context).nextPageOnly(page: const OnboardingScreen());
    // });
  }
}
