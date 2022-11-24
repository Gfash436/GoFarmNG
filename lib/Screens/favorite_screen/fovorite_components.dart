import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Constants/size_config.dart';
import '../../Styles/colors.dart';
import '../../Widgets/myText.dart';
import 'containerBtn.dart';
import 'removeItemBtn.dart';

class FavComponents extends StatelessWidget {
  const FavComponents({
    super.key,
    // required this.icon,
  });

  // final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        getProportionateScreenWidth(
          16,
        ),
      ),
      margin: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(8),
      ),
      decoration: BoxDecoration(
        // color: Colors.brown,
        borderRadius: BorderRadius.circular(
          8,
        ),
        border: Border.all(
          color: grey,
          width: .5,
          strokeAlign: StrokeAlign.inside,
          style: BorderStyle.solid,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: getProportionateScreenWidth(
                    16,
                  ),
                ),
                height: getProportionateScreenWidth(55),
                width: getProportionateScreenWidth(55),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                ),
                child: Image.asset("assets/images/apple.png"),
              ),
              SizedBox(
                height: getProportionateScreenWidth(43),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myText(
                      text: "Farm fresh apple",
                      fontSize: getProportionateScreenWidth(
                        14,
                      ),
                      fontWeight: FontWeight.bold,
                    ),
                    Text.rich(
                      TextSpan(
                          text: "N1000",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(
                              12,
                            ),
                            color: const Color(0xff353535),
                            fontWeight: FontWeight.normal,
                          ),
                          children: [
                            TextSpan(
                              text: "/Pcs",
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(
                                  9,
                                ),
                                color: const Color(0xff353535),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerButton(
                ontap: () {},
                text: "Buy now",
              ),
              SizedBox(
                height: getProportionateScreenHeight(
                  8,
                ),
              ),
              RemoveItemBtn(
                ontap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
