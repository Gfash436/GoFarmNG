import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../cart_screen/cart_screen.dart';
import '../notification_screen/notification_screen.dart';

AppBar appBar(BuildContext context, final scafoldKey) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/menu.svg",
      ),
      onPressed: () => scafoldKey.currentState!.openDrawer(),
    ),
    actions: [
      // IconButton(
      //   icon: SvgPicture.asset(
      //     "assets/icons/notification.svg",
      //   ),
      //   onPressed: (){},
      // ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/notification.svg",
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const NotificationScreen(),
            ),
          );
        },
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/cart.svg",
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CartScreen(),
            ),
          );
        },
      ),
    ],
  );
}
