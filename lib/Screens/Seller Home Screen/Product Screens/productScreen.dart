import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Screens/Seller%20Home%20Screen/Product%20Screens/newProducts.dart';
import 'package:gofarmng/Screens/Seller%20Home%20Screen/Product%20Screens/productComponents.dart';
import 'package:gofarmng/Utilities/routers.dart';
import 'package:gofarmng/Widgets/button.dart';
import 'package:gofarmng/Widgets/search_textformfield.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  // final scafoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scafoldKey,
      // appBar: appBar(context, scafoldKey),
      // drawer: const AppDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(16),
        ),
        child: Column(
          children: [
            const SearchTextFormField(),
            SizedBox(
              height: getProportionateScreenHeight(
                16,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      ...List.generate(
                        15,
                        (index) => const ProductComponents(),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: customButton(
            tap: () {
              PageNavigator(ctx: context).nextPage(page: const NewProducts());
            },
            height: 40,
            text: 'Upload new product'),
      ),
    );
  }
}
