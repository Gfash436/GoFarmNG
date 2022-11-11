import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Widgets/myText.dart';

import '../../Styles/colors.dart';
import '../../Widgets/search_textformfield.dart';
import 'app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  int _selectedIndex = 0;
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
                    color: Color(0xff111111).withOpacity(
                      .25,
                    ),
                    offset: Offset(
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: mainlightGrey),
                        child: SvgPicture.asset("assets/icons/love.svg"),
                        padding: EdgeInsets.all(
                          8,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) => setState(() {
        _selectedIndex = value;
      }),
      selectedItemColor: green,
      unselectedItemColor: grey,
      showUnselectedLabels: true,
      selectedLabelStyle: TextStyle(
        fontSize: getProportionateScreenWidth(10),
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: getProportionateScreenWidth(10),
        fontWeight: FontWeight.normal,
      ),
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/home.svg",
            color: grey,
          ),
          label: "Home",
          activeIcon: SvgPicture.asset(
            "assets/icons/home.svg",
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/analytics.svg",
            color: grey,
          ),
          label: "Analytics",
          activeIcon: SvgPicture.asset(
            "assets/icons/analytics.svg",
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/favorite.svg",
            color: grey,
          ),
          label: "Favorite",
          activeIcon: SvgPicture.asset(
            "assets/icons/favorite.svg",
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/wallet.svg",
            color: grey,
          ),
          label: "Wallet",
          activeIcon: SvgPicture.asset(
            "assets/icons/wallet.svg",
          ),
        ),
      ],
    );
  }
}
