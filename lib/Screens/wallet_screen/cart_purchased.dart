import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Constants/size_config.dart';
import '../../Styles/colors.dart';
import '../../Widgets/myText.dart';

class CartTransactionDetails extends StatelessWidget {
  const CartTransactionDetails({
    super.key,
    // required this.icon,
  });

  // final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        getProportionateScreenWidth(
          8,
        ),
      ),
      margin: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(8),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8,
        ),
        border: Border.all(
          color: grey,
          width: .5,
          strokeAlign: StrokeAlign.inside,
          style: BorderStyle.solid,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(
                  4,
                ),
                height: 24,
                width: 24,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffFFBDBD),
                ),
                child: SvgPicture.asset(
                  "assets/icons/cart-transaction.svg",
                  color: black,
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(16),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myText(
                    text: "Cart Purchased",
                    fontSize: getProportionateScreenWidth(
                      14,
                    ),
                    fontWeight: FontWeight.w500,
                  ),
                  myText(
                    text: "10:32am",
                    fontSize: getProportionateScreenWidth(
                      12,
                    ),
                    color: const Color(0xff959595),
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ],
          ),
          myText(
            text: "N20,000.00",
            fontSize: getProportionateScreenWidth(
              14,
            ),
            fontWeight: FontWeight.w500,
            color: const Color(0xfff41515),
          ),
        ],
      ),
    );
  }
}
