import 'package:flutter/material.dart';
import 'package:gofarmng/Widgets/myText.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../Constants/google_sign_in.dart';
import '../../Constants/size_config.dart';
import '../../Utilities/routers.dart';
import '../../Widgets/button.dart';
import '../Authentication/loginPage.dart';

class AppDrawer extends StatelessWidget {
  final GoogleSignInAccount? user;
  const AppDrawer({Key? key, this.user}) : super(key: key);

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
                  child: Column(
                    children: [
                      drawerButton(context, 'My Profile',
                          'assets/icons/Myprofile.svg', () {}),
                      drawerButton(context, 'Order History',
                          'assets/icons/history.svg', () {}),
                      drawerButton(context, 'Payment',
                          'assets/icons/payment.svg', () {}),
                      drawerButton(context, 'My Address',
                          'assets/icons/location.svg', () {}),
                      drawerButton(context, 'Settings',
                          'assets/icons/settings.svg', () {}),
                      drawerButton(
                          context, 'Help', 'assets/icons/help.svg', () {}),
                      drawerButton(context, 'Logout', 'assets/icons/logout.svg',
                          () async {
                        await GoogleSignInApi.logout();

                        PageNavigator(ctx: context)
                            .nextPageOnly(page: const LoginPage());
                      }),
                    ],
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
