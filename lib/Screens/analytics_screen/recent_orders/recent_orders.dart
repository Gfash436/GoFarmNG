import 'package:flutter/material.dart';

import '../../../Constants/size_config.dart';
import '../../../Widgets/myText.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(8),
      ),
      height: getProportionateScreenHeight(
        47,
      ),
      width: getProportionateScreenWidth(
        303,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffcfcfcf),
          width: .5,
        ),
        borderRadius: BorderRadius.circular(
          8,
        ),
        // color: Colors.red,
      ),
      child: Row(
        children: [
          Container(
            width: getProportionateScreenWidth(24),
            height: getProportionateScreenWidth(24),
            decoration: BoxDecoration(
              // color: Colors.white,
              image: const DecorationImage(
                image: AssetImage("assets/images/orange.png"),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(
              16,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Farm fresh oranges",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(
                    12,
                  ),
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "10:25 am",
                style: TextStyle(
                    fontSize: getProportionateScreenHeight(
                      8,
                    ),
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff959595)),
              ),
            ],
          ),
          SizedBox(
            width: getProportionateScreenWidth(
              31,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              myText(
                text: '20Pcs',
                fontSize: getProportionateScreenHeight(
                  12,
                ),
                fontWeight: FontWeight.w400,
                color: const Color(0xff353535),
              ),
              SizedBox(
                width: getProportionateScreenWidth(
                  31,
                ),
              ),
              myText(
                text: 'N5000',
                fontSize: getProportionateScreenHeight(
                  14,
                ),
                fontWeight: FontWeight.w400,
                color: const Color(0xff353535),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
