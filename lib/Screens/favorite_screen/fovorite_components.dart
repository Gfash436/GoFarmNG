import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Constants/size_config.dart';
import '../../Styles/colors.dart';
import '../../Widgets/myText.dart';

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
          strokeAlign: BorderSide.strokeAlignInside,
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
              InkWell(
                onTap: () {},
                child: SizedBox(
                  height: getProportionateScreenWidth(30),
                  width: getProportionateScreenWidth(80),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: green,
                    ),
                    child: Center(
                      child: myText(
                        text: "Buy now",
                        color: white,
                        fontSize: getProportionateScreenWidth(
                          12,
                        ),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(
                  8,
                ),
              ),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  height: getProportionateScreenWidth(30),
                  width: getProportionateScreenWidth(80),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      // color: green,
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset("assets/icons/delete.svg"),
                          myText(
                            text: "Remove",
                            fontSize: getProportionateScreenHeight(
                              12,
                            ),
                            // color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
