import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Constants/size_config.dart';
import '../../Styles/colors.dart';
import '../../Widgets/myText.dart';

class TopSellingProducts extends StatelessWidget {
  const TopSellingProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            myText(
              text: "Top selling products",
              fontSize: getProportionateScreenHeight(16),
            ),
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(8),
        ),
        Container(
          color: Colors.white,
          height: getProportionateScreenWidth(
            190.57,
          ),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            itemBuilder: (BuildContext context, int index) => Container(
              padding: EdgeInsets.all(
                getProportionateScreenWidth(16),
              ),
              height: getProportionateScreenWidth(
                190.57,
              ),
              width: getProportionateScreenWidth(140),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff111111).withOpacity(
                      .25,
                    ),
                    offset: const Offset(
                      0,
                      1,
                    ),
                    blurRadius: 4,
                    spreadRadius: 0,
                  )
                ],
                borderRadius: BorderRadius.circular(
                  8,
                ),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: mainlightGrey),
                          padding: const EdgeInsets.all(
                            8,
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/love.svg",
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Positioned(
                  //   bottom: getProportionateScreenHeight(96),
                  //   // width: getProportionateScreenWidth(140),
                  //   left: getProportionateScreenHeight(20),
                  //   right: getProportionateScreenHeight(20),
                  //   child: Image.asset(
                  //     "assets/images/banana.png",
                  //   ),
                  // ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      "assets/images/banana.png",
                    ),
                  ),
                  Positioned(
                    bottom: getProportionateScreenHeight(72),
                    width: getProportionateScreenWidth(75),
                    // left: getProportionateScreenWidth(32.5),
                    right: getProportionateScreenWidth(18.5),
                    child: Text("Fresh Banana",
                        // maxLines: 1,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(
                            12,
                          ),
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  Positioned(
                    left: getProportionateScreenWidth(40),
                    // right: getProportionateScreenWidth(25),
                    // top: getProportionateScreenHeight(126.57),
                    bottom: getProportionateScreenHeight(48),
                    // width: getProportionateScreenWidth(36),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        myText(
                          text: "4.5",
                          fontSize: getProportionateScreenWidth(
                            11,
                          ),
                          fontWeight: FontWeight.w400,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: SvgPicture.asset(
                            "assets/icons/star.svg",
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: getProportionateScreenHeight(
                  //     8,
                  //   ),
                  // ),
                  Positioned(
                    bottom: 0,
                    width: getProportionateScreenWidth(108),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: "N1,000",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(
                                12,
                              ),
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(
                                text: "/Kg",
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(
                                    8,
                                  ),
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xffE5F7E1),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Color(0xff353535),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
