import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Constants/size_config.dart';
import '../../Styles/colors.dart';


class bottomNavBar extends StatefulWidget {
  const bottomNavBar({
    super.key,
  });

  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      selectedItemColor: green,
      unselectedItemColor: grey,
      showUnselectedLabels: true,
      onTap: (value) => setState(() {
        _selectedIndex = value;
      }),
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
