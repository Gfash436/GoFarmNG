import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Screens/home_screen/app_bar.dart';
import 'package:gofarmng/Screens/home_screen/app_drawer.dart';

import '../../Styles/colors.dart';
import '../../Widgets/myText.dart';

class AnalyticsScreen extends StatelessWidget {
  AnalyticsScreen({super.key});
  final scafoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      appBar: appBar(context, scafoldKey),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenHeight(20),
          vertical: getProportionateScreenHeight(24.0),
        ),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: getProportionateScreenWidth(169),
                    height: getProportionateScreenWidth(64),
                    padding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(
                        12.8,
                      ),
                      horizontal: getProportionateScreenWidth(15.28),
                    ),
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(
                            0,
                            0,
                          ),
                          blurRadius: .64,
                          spreadRadius: 0,
                          color: const Color(0xff111111).withOpacity(.26),
                        )
                      ],
                      borderRadius: BorderRadius.circular(5.12),
                    ),
                    child: SizedBox(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(
                              getProportionateScreenHeight(8.32),
                            ),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffCBC8FF),
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/dollar_circle.svg",
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(15.36),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              myText(
                                text: "Useable Balance",
                                color: const Color(0xff353535),
                                fontSize: getProportionateScreenWidth(8.96),
                                fontWeight: FontWeight.w400,
                              ),
                              myText(
                                text: "N49,650.23",
                                color: const Color(0xff353535),
                                fontSize: getProportionateScreenWidth(15.36),
                                fontWeight: FontWeight.w800,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenHeight(15.36),
                  ),
                  Container(
                    width: getProportionateScreenWidth(169),
                    height: getProportionateScreenWidth(64),
                    padding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(
                        12.8,
                      ),
                      horizontal: getProportionateScreenWidth(15.28),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(
                            0,
                            0,
                          ),
                          blurRadius: .64,
                          spreadRadius: 0,
                          color: const Color(0xff111111).withOpacity(.26),
                        )
                      ],
                      borderRadius: BorderRadius.circular(5.12),
                    ),
                    child: SizedBox(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(
                              getProportionateScreenHeight(8.32),
                            ),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffC2E3FF),
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/dollar_circle.svg",
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(15.36),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              myText(
                                text: "Total Deposit",
                                color: const Color(0xff353535),
                                fontSize: getProportionateScreenHeight(8.96),
                                fontWeight: FontWeight.w400,
                              ),
                              myText(
                                text: "N400,000.00",
                                color: const Color(0xff353535),
                                fontSize: getProportionateScreenHeight(15.36),
                                fontWeight: FontWeight.w800,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenHeight(15.36),
                  ),
                  Container(
                    width: getProportionateScreenWidth(169),
                    height: getProportionateScreenWidth(64),
                    padding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(
                        12.8,
                      ),
                      horizontal: getProportionateScreenWidth(15.28),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(
                            0,
                            0,
                          ),
                          blurRadius: .64,
                          spreadRadius: 0,
                          color: const Color(0xff111111).withOpacity(.26),
                        )
                      ],
                      borderRadius: BorderRadius.circular(5.12),
                    ),
                    child: SizedBox(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(
                              getProportionateScreenHeight(8.32),
                            ),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffCBC8FF),
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/dollar_circle.svg",
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(15.36),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              myText(
                                text: "Monthly spending",
                                color: const Color(0xff353535),
                                fontSize: getProportionateScreenWidth(8.96),
                                fontWeight: FontWeight.w400,
                              ),
                              myText(
                                text: "N99,550.00",
                                color: const Color(0xff353535),
                                fontSize: getProportionateScreenWidth(15.36),
                                fontWeight: FontWeight.w800,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenHeight(15.36),
                  ),
                  Container(
                    width: getProportionateScreenWidth(169),
                    height: getProportionateScreenWidth(64),
                    padding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(
                        12.8,
                      ),
                      horizontal: getProportionateScreenWidth(15.28),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(
                            0,
                            0,
                          ),
                          blurRadius: .64,
                          spreadRadius: 0,
                          color: const Color(0xff111111).withOpacity(.26),
                        )
                      ],
                      borderRadius: BorderRadius.circular(5.12),
                    ),
                    child: SizedBox(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(
                              getProportionateScreenHeight(8.32),
                            ),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffC2E3FF),
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/dollar_circle.svg",
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(15.36),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              myText(
                                text: "Savings",
                                color: const Color(0xff353535),
                                fontSize: getProportionateScreenHeight(8.96),
                                fontWeight: FontWeight.w400,
                              ),
                              myText(
                                text: "N110,500.00",
                                color: const Color(0xff353535),
                                fontSize: getProportionateScreenHeight(15.36),
                                fontWeight: FontWeight.w800,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
