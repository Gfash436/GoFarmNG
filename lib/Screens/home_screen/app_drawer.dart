import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gofarmng/Screens/cart_screen/cart_screen.dart';
import 'package:gofarmng/Widgets/myText.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../Constants/google_sign_in.dart';
import '../../Constants/size_config.dart';
import '../../Provider/AuthProvider/dbProvider.dart';
import '../../Utilities/routers.dart';
import '../Authentication/loginPage.dart';

class AppDrawer extends StatelessWidget {
  final GoogleSignInAccount? user;
  const AppDrawer({
    super.key,
    this.user,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(255),
      child: SafeArea(
        child: Drawer(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenHeight(56)),
            child: Column(
              children: [
                SizedBox(
                    width: getProportionateScreenHeight(100),
                    child: Column(children: [
                      CircleAvatar(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white,
                        radius: getProportionateScreenHeight(50),
                        backgroundImage:
                            const AssetImage("assets/images/profilePix.png"),
                      ),
                      SizedBox(height: getProportionateScreenHeight(8)),
                      myText(
                        text: "David",
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
                    itemCount: getList(context).length,
                    separatorBuilder: (context, index) => Divider(
                      thickness: .5,
                      height: getProportionateScreenWidth(16),
                    ),
                    itemBuilder: (context, index) => InkWell(
                      onTap: getList(context)[index]["onTap"],
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenWidth(6)),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "${getList(context)[index]["icon"]}",
                              height: getProportionateScreenWidth(21),
                              width: getProportionateScreenWidth(21),
                            ),
                            SizedBox(
                              width: getProportionateScreenWidth(
                                16,
                              ),
                            ),
                            myText(
                              text: "${getList(context)[index]["title"]}",
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

  List<Map<String, dynamic>> getList(BuildContext context) {
    return [
      {
        "icon": "assets/icons/Myprofile.svg",
        "title": "My Profile",
        "onTap": () {}
      },
      {
        "icon": "assets/icons/Myprofile.svg",
        "title": "Sell",
        "onTap": () {},
      },
      {
        "icon": "assets/icons/history.svg",
        "title": "Order History",
        "onTap": () {}
      },
      {
        "icon": "assets/icons/payment.svg",
        "title": "Payment",
        "onTap": () {},
      },
      {
        "icon": "assets/icons/location.svg",
        "title": "My Address",
        "onTap": () {}
      },
      {
        "icon": "assets/icons/track_order.svg",
        "title": "Track Order",
        "onTap": () {}
      },
      {
        "icon": "assets/icons/settings.svg",
        "title": "Settings",
        "onTap": () {}
      },
      {
        "icon": "assets/icons/help.svg",
        "title": "Help",
        "onTap": () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CartScreen(),
            ),
          );
        }
      },
      {
        "icon": "assets/icons/logout.svg",
        "title": "Logout",
        "onTap": () async {
          await GoogleSignInApi.logout();
          PageNavigator(ctx: context).nextPageOnly(
            page: const LoginPage(),
          );
        }
      },
    ];
  }
}
