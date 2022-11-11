import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Widgets/myText.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
          ),
          onPressed: () {},
        ),
        actions: [
          SvgPicture.asset(
            "assets/icons/notification.svg",
          ),
          SvgPicture.asset(
            "assets/icons/cart.svg",
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          // top: getPrgetProportionateScreenHeight(15),
          left: getProportionateScreenWidth(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Row(
            //       children: [],
            //     ),
            //   ],
            // ),
            const myText(
              text: "Hey David!",
              fontSize: 29,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
