import 'package:flutter/material.dart';
import 'package:gofarmng/Widgets/myText.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../Constants/google_sign_in.dart';
import '../../Constants/size_config.dart';
import '../../Provider/AuthProvider/dbProvider.dart';
import '../../Utilities/routers.dart';
import '../../Widgets/button.dart';
import '../Authentication/loginPage.dart';

class AppDrawer extends StatelessWidget {
  final GoogleSignInAccount? user;

  AppDrawer({Key? key, this.user}) : super(key: key);

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
                          text: 'David',
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(24))
                    ])),
                SizedBox(height: getProportionateScreenHeight(32)),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        drawerButton(context, 'My Profile',
                            'assets/icons/Myprofile.svg', () {}),
                        // Divider(
                        //     thickness: .5,
                        //     height: getProportionateScreenWidth(16)),
                        drawerButton(context, 'Sell',
                            'assets/icons/Myprofile.svg', () {}),
                        Divider(
                            thickness: .5,
                            height: getProportionateScreenWidth(16)),
                        drawerButton(context, 'Order History',
                            'assets/icons/history.svg', () {}),
                        Divider(
                            thickness: .5,
                            height: getProportionateScreenWidth(16)),
                        drawerButton(context, 'Payment',
                            'assets/icons/payment.svg', () {}),
                        Divider(
                            thickness: .5,
                            height: getProportionateScreenWidth(16)),
                        drawerButton(context, 'My Address',
                            'assets/icons/location.svg', () {}),
                        Divider(
                            thickness: .5,
                            height: getProportionateScreenWidth(16)),
                        drawerButton(context, 'Settings',
                            'assets/icons/settings.svg', () {}),
                        Divider(
                            thickness: .5,
                            height: getProportionateScreenWidth(16)),
                        drawerButton(
                            context, 'Help', 'assets/icons/help.svg', () {}),
                        Divider(
                            thickness: .5,
                            height: getProportionateScreenWidth(16)),
                        drawerButton(
                            context, 'Logout', 'assets/icons/logout.svg', () {
                          DatabaseProvider().logOut(context);

                          PageNavigator(ctx: context)
                              .nextPageOnly(page: const LoginPage());
                        }),
                      ],
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
