// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Constants/size_config.dart';
import '../../Styles/colors.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
    required this.navigatoTo,
    required this.selectedIndex,
  }) : super(key: key);
  final Function(int index) navigatoTo;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      selectedItemColor: green,
      unselectedItemColor: grey,
      showUnselectedLabels: true,
      onTap: navigatoTo,
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
            "assets/icons/history.svg",
            color: grey,
          ),
          label: "Order history",
          activeIcon: SvgPicture.asset(
            "assets/icons/history.svg",
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/favorite.svg",
            color: grey,
          ),
          label: "Products",
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
