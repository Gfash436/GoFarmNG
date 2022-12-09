import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gofarmng/Widgets/myText.dart';

import '../../Constants/size_config.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({
    super.key,
  });
  final List<Map<String, dynamic>> drawerList = [
    {
      "icon": "assets/icons/Myprofile.svg",
      "title": "My Profile",
    },
    {
      "icon": "assets/icons/Myprofile.svg",
      "title": "Sell",
    },
    {
      "icon": "assets/icons/history.svg",
      "title": "Order History",
    },
    {
      "icon": "assets/icons/payment.svg",
      "title": "Payment",
    },
    {
      "icon": "assets/icons/location.svg",
      "title": "My Address",
    },
    {
      "icon": "assets/icons/track_order.svg",
      "title": "Track Order",
    },
    {
      "icon": "assets/icons/settings.svg",
      "title": "Settings",
    },
    {
      "icon": "assets/icons/help.svg",
      "title": "Help",
    },
    {
      "icon": "assets/icons/logout.svg",
      "title": "Logout",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(255),
      child: SafeArea(
        child: Drawer(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                  20,
                ),
                vertical: getProportionateScreenHeight(
                  56,
                )),
            child: Column(
              children: [
                Container(
                  // height: getProportionateScreenHeight(141),
                  width: getProportionateScreenHeight(100),
                  child: Column(
                    children: [
                      CircleAvatar(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white,
                        radius: getProportionateScreenHeight(50),
                        backgroundImage:
                            const AssetImage("assets/images/profilePix.png"),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(
                          8,
                        ),
                      ),
                      myText(
                        text: 'David',
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(
                          24,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(
                    32,
                  ),
                ),
                Expanded(
                  // height: getProportionateScreenHeight(360),
                  child: ListView.separated(
                    itemCount: drawerList.length,
                    separatorBuilder: (context, index) => Divider(
                      thickness: .5,
                      height: getProportionateScreenWidth(16),
                    ),
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: getProportionateScreenWidth(6)),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "${drawerList[index]["icon"]}",
                            height: getProportionateScreenWidth(21),
                            width: getProportionateScreenWidth(21),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(
                              16,
                            ),
                          ),
                          myText(
                            text: "${drawerList[index]["title"]}",
                            fontSize: getProportionateScreenWidth(14),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
