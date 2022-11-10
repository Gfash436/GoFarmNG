import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Widgets/myText.dart';

import '../../Styles/colors.dart';
import '../../Widgets/search_textformfield.dart';

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
            const SearchTextFormField()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}

AppBar appBar() {
  return AppBar(
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
      SizedBox(
        width: getProportionateScreenWidth(20),
      ),
      SvgPicture.asset(
        "assets/icons/cart.svg",
      ),
      SizedBox(
        width: getProportionateScreenWidth(20),
      ),
    ],
  );
}
