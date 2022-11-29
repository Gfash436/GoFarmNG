import 'package:flutter/material.dart';
import 'package:gofarmng/Screens/home_screen/app_bar.dart';
import 'package:gofarmng/Screens/home_screen/app_drawer.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../Constants/size_config.dart';
import '../../Widgets/myText.dart';
import '../../Widgets/search_textformfield.dart';
import '../analytics_screen/analytics_screen.dart';
import 'newest_arrival.dart';
import 'popular_categories.dart';
import 'top_selling_products.dart';

class HomeScreenBody extends StatelessWidget {
  final scafoldKey = GlobalKey<ScaffoldState>();

  HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      appBar: appBar(context, scafoldKey),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
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
              const PopularCategories(),
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
      ),
    );
  }
}
