import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Styles/colors.dart';

import '../../Widgets/myText.dart';
import '../../Widgets/search_textformfield.dart';
import 'fruits.dart';

class ViewAllProducts extends StatelessWidget {
  const ViewAllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: black,
        elevation: 0,
        title: myText(
          text: "Categories",
          fontWeight: FontWeight.w700,
          fontSize: getProportionateScreenWidth(16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 17,
            ),
            const SearchTextFormField(),
            const SizedBox(
              height: 17,
            ),
            CategoriesComponents(),
            const SizedBox(
              height: 17,
            ),
            CategoriesComponents(),
            const SizedBox(
              height: 17,
            ),
            CategoriesComponents(),
            const SizedBox(
              height: 17,
            ),
            const CategoriesComponents(),
          ],
        ),
      ),
    );
  }
}

class CategoriesComponents extends StatefulWidget {
  const CategoriesComponents({
    super.key,
  });

  @override
  State<CategoriesComponents> createState() => _CategoriesComponentsState();
}

class _CategoriesComponentsState extends State<CategoriesComponents> {
  List categories = [
    const Fruits(),
    // const Dairy(),
    // const Bakery(),
    // const Spice(),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        4,
        (index) => GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => categories[index],
            ),
          ),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: getProportionateScreenHeight(64),
                  width: getProportionateScreenHeight(64),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x40111111),
                        offset: Offset(0, 1),
                        blurRadius: 4,
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.network(
                    "{product.productPicture}",
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                myText(
                  text: "Fruits",
                  color: const Color(0xff353535),
                  fontSize: getProportionateScreenWidth(12),
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
