import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Utilities/routers.dart';

import '../Styles/colors.dart';
import '../Widgets/image.dart';
import '../Widgets/myText.dart';
import 'onboardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image('assets/images/logo.png'),
            myText(
              text: 'GoFarmNG',
              fontSize: 32,
              fontWeight: FontWeight.w800,
              color: textColor,
            ),
            myText(
              text: 'Here for Your daily needs',
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: textColor,
            )
          ],
        ),
      ),
    );
  }

  void navigate() {
    Future.delayed(const Duration(seconds: 3), () {
      PageNavigator(ctx: context).nextPageOnly(page: const OnboardingScreen());
    });
  }
}
