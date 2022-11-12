import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Widgets/myText.dart';

import '../../Widgets/search_textformfield.dart';
import 'app_bar.dart';
import 'bottom_navBar.dart';
import 'newest_arrival.dart';
import 'popular_categories.dart';
import 'top_selling_products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
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
      bottomNavigationBar: const bottomNavBar(),
    );
  }
}
