import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Screens/Authentication/loginPage.dart';

import '../../Styles/colors.dart';
import '../../Utilities/routers.dart';
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
                SizedBox(height: getProportionateScreenHeight(160)),
                Container(
                    child: Column(
                  children: [
                    image('assets/images/logo.png'),
                    SizedBox(height: getProportionateScreenHeight(8)),
                    myText(
                        text: 'GoFarmNG',
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: textColor),
                    SizedBox(height: getProportionateScreenHeight(8)),
                    myText(
                      text: 'Here for Your daily needs',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: textColor,
                    ),
                  ],
                )),
                SizedBox(height: getProportionateScreenHeight(80)),
                customButton2(context: context, tap: navigate),
                customButton(context: context, text: 'Sign Up')
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navigate() {
    Future.delayed(const Duration(seconds: 3), () {
      PageNavigator(ctx: context).nextPageOnly(page: const LoginPage());
    });
  }
}
