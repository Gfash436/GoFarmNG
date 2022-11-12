import 'package:flutter/material.dart';

import '../../Constants/size_config.dart';
import '../../Styles/colors.dart';
import '../../Widgets/myText.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            myText(
              text: "Popular Categories",
              fontSize: getProportionateScreenHeight(16),
            ),
            myText(
              text: "View all",
              fontSize: getProportionateScreenHeight(12),
              color: green,
            ),
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(
            8,
          ),
        ),
        ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            width: getProportionateScreenWidth(10),
          ),
          itemBuilder: (BuildContext context, int index) => SizedBox(
            // height: 72,
            width: getProportionateScreenHeight(48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: getProportionateScreenHeight(48),
                  width: getProportionateScreenHeight(48),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff111111).withOpacity(.25),
                        offset: const Offset(0, 1),
                        blurRadius: 4,
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/orange.png"),
                    ),
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
      ],
    );
  }
}
