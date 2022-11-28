import 'package:flutter/material.dart';
import 'package:gofarmng/Provider/AuthProvider/authProvider.dart';
import 'package:gofarmng/Screens/home_screen/app_bar.dart';
import 'package:gofarmng/Screens/home_screen/app_drawer.dart';
import 'package:provider/provider.dart';

import '../../Constants/size_config.dart';
import '../../Provider/AuthProvider/fetchdata_provider.dart';
import '../../Styles/colors.dart';
import '../../Widgets/myText.dart';
import '../../Widgets/search_textformfield.dart';
import '../../models/products.dart';
import '../analytics_screen/balances/balance_details.dart';
import 'newest_arrival.dart';
import 'popular_categories.dart';
import 'top_selling_products.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  // late List<Data> allproducts;
  final scafoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    // fetchAllProducts();
    print("welcome");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      appBar: appBar(context, scafoldKey),
      drawer: AppDrawer(),
      body: Consumer<AuthenticationProvider>(builder: (_, data, __) {
        // final data = Provider.of<AuthenticationProvider>(context);
        // .fetchAllProducts();
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

// Future<List<ProductDetails>> fetchAllProducts() async {
//   // http.Client client;
//   // List<ProductDetails> products = [];
//   const String url = "https://gofarmng.herokuapp.com/api/v1/findall";
//   String accessToken = await DatabaseProvider().getToken();
//   print("This is the gotten token: $accessToken");
//   final headers = {
//     "Content-type": "application/json; charset=utf-8",
//     "Accept": "/",
//     "Authorization": "Bearer $accessToken",
//   };

//   final response = await http.get(
//     Uri.parse(url),
//     headers: headers,
//   );
//   if (response.statusCode == 200) {
//     List productsList = jsonDecode(response.body)["data"];
//     print("This is the product list: $productsList");
//     return productsList.map((e) => ProductDetails.fromJson(e)).toList();
//   } else {
//     throw Exception(response.reasonPhrase);
//   }
// }


















  // return products;

  // try {

  // } catch (e) {
  //   print(e.toString());
  // }
  // final data = products.map((e) => e).toList();
  // return data;
  // try {} catch (e) {
  //   final response = await http.get(
  //     Uri.parse(url),
  //     headers: headers,
  //   );
  //   if (response.statusCode == 200) {
  //     List productsList = jsonDecode(response.body);
  //     for (var item in productsList) {
  //       products.add(ProductDetails.fromJson(item));
  //     }
  //     print("This is the product list: $productsList");
  //     return products;
  //   } else {
  //     throw Exception("Failed to load Products");
  //   }
  // }
  // return products;
