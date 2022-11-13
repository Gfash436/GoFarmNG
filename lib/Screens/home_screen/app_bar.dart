import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Constants/size_config.dart';

AppBar appBar(BuildContext context,final scafoldKey) {
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
