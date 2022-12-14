import 'package:flutter/material.dart';
import 'package:gofarmng/Provider/AuthProvider/authProvider.dart';
import 'package:gofarmng/Screens/home_screen/app_bar.dart';
import 'package:gofarmng/Screens/home_screen/app_drawer/app_drawer.dart';
import 'package:provider/provider.dart';

import '../../Constants/size_config.dart';
import '../../Widgets/myText.dart';
import '../../Widgets/search_textformfield.dart';
import '../analytics_screen/analytics_screen.dart';
import 'newest_arrival.dart';
import 'popular_categories.dart';
import 'top_selling_products.dart';

class HomeScreenBody extends StatelessWidget {
  HomeScreenBody({
    super.key,
  });
  final scafoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scafoldKey,
      // appBar: appBar(context, scafoldKey),
      // drawer: const AppDrawer(),
      body: Consumer<AuthenticationProvider>(builder: (_, data, __) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(20),
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
                const SearchTextFormField(),
                SizedBox(
                  height: getProportionateScreenHeight(28),
                ),
                // const PopularCategories(),
                // const PopularCategories(),
                const PopularCategories(),
                // const BalanceDetails(),
                // const PopularCategories(),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                const TopSellingProducts(),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                const NewestArrival(),
                SizedBox(
                  height: getProportionateScreenHeight(32),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
