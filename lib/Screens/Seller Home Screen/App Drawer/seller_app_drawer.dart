import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gofarmng/Provider/AuthProvider/dbProvider.dart';
import 'package:gofarmng/Provider/AuthProvider/logoutProvider.dart';
import 'package:gofarmng/Screens/analytics_screen/analytics_screen.dart';
import 'package:gofarmng/Screens/buyer_home_screen/home_screen.dart';
import 'package:gofarmng/Screens/wallet_screen/wallet_screen.dart';
import 'package:gofarmng/Utilities/routers.dart';
import 'package:gofarmng/Widgets/myText.dart';
import 'package:provider/provider.dart';

import '../../../Constants/size_config.dart';
import 'my_address.dart';
import 'order_history.dart';

class SellerAppDrawer extends StatelessWidget {
  const SellerAppDrawer({
    super.key,
  });
  List<Map<String, dynamic>> drawerList(BuildContext context) {
    return <Map<String, dynamic>>[
      {
        "icon": "assets/icons/Myprofile.svg",
        "title": "My Profile",
        "onTap": () {},
      },
      {
        "icon": "assets/icons/Myprofile.svg",
        "title": "Switch to Buyer",
        "onTap": () {
          PageNavigator(ctx: context).nextPageOnly(page: const HomeScreen());
        },
      },
      {
        "icon": "assets/icons/payment.svg",
        "title": "Upload Products",
        "onTap": () {},
      },
      {
        "icon": "assets/icons/history.svg",
        "title": "Order History",
        "onTap": () {
          PageNavigator(ctx: context).nextPageOnly(page: const OrderHistory());
        },
      },
      {
        "icon": "assets/icons/analytics.svg",
        "title": "Analytics",
        "onTap": () {
          PageNavigator(ctx: context)
              .nextPageOnly(page: const AnalyticsScreen());
        },
      },
      {
        "icon": "assets/icons/settings.svg",
        "title": "Settings",
        "onTap": () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const WalletScreen(),
            ),
          );
        },
      },
      {
        "icon": "assets/icons/help.svg",
        "title": "Help",
        "onTap": () {},
      },
      {
        "icon": "assets/icons/logout.svg",
        "title": "Logout",
        "onTap": () {
          context.read<DatabaseProvider>().logOut(context);
        },
      },
    ];
  }

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
                    itemCount: drawerList(context).length,
                    separatorBuilder: (context, index) => Divider(
                      thickness: .5,
                      height: getProportionateScreenWidth(16),
                    ),
                    itemBuilder: (context, index) => InkWell(
                      onTap: drawerList(context)[index]["onTap"],
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenWidth(6)),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "${drawerList(context)[index]["icon"]}",
                              height: getProportionateScreenWidth(21),
                              width: getProportionateScreenWidth(21),
                            ),
                            SizedBox(
                              width: getProportionateScreenWidth(
                                16,
                              ),
                            ),
                            myText(
                              text: "${drawerList(context)[index]["title"]}",
                              fontSize: getProportionateScreenWidth(14),
                            )
                          ],
                        ),
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
