import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Widgets/myText.dart';

import '../../Styles/colors.dart';
import '../../Widgets/search_textformfield.dart';
import 'app_bar.dart';
import 'bottom_navBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: Padding(
        padding: EdgeInsets.only(
          left: getProportionateScreenWidth(20),
          right: getProportionateScreenWidth(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myText(
              text: "Hey David!",
              fontSize: getProportionateScreenHeight(29),
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            const SearchTextFormField(),
            SizedBox(
              height: getProportionateScreenHeight(28),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myText(
                  text: "Popular Categories",
                  fontSize: getProportionateScreenHeight(16),
                ),
                myText(
                  text: "View all",
                  fontSize: getProportionateScreenHeight(12),
                  color: green,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                8,
              ),
            ),
            SizedBox(
              height: 72,
              width: getProportionateScreenHeight(48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: getProportionateScreenHeight(48),
                    width: getProportionateScreenHeight(48),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff111111).withOpacity(.25),
                          offset: const Offset(0, 1),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/orange.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(8),
                  ),
                  myText(
                    text: "Fruits",
                    color: const Color(0xff353535),
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(16),
            ),
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
              padding: EdgeInsets.all(getProportionateScreenWidth(16)),
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
                  Positioned(
                    bottom: getProportionateScreenHeight(96),
                    // width: getProportionateScreenWidth(140),
                    left: getProportionateScreenHeight(20),
                    right: getProportionateScreenHeight(20),
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
          ],
        ),
      ),
      bottomNavigationBar: const bottomNavBar(),
    );
  }
}
