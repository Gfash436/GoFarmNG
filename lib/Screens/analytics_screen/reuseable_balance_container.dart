import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Constants/size_config.dart';
import '../../Styles/colors.dart';
import '../../Widgets/myText.dart';

class ReuseableBalanceContainer extends StatelessWidget {
  const ReuseableBalanceContainer({
    super.key,
    required this.title,
    required this.amount,
    required this.imgColor,
  });
  final String title, amount;
  final Color imgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(169),
      height: getProportionateScreenWidth(64),
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(
          12.8,
        ),
        horizontal: getProportionateScreenHeight(15.28),
      ),
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(
              0,
              0,
            ),
            blurRadius: .64,
            spreadRadius: 0,
            color: const Color(0xff111111).withOpacity(.26),
          )
        ],
        borderRadius: BorderRadius.circular(5.12),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(
              getProportionateScreenHeight(8.32),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: imgColor,
            ),
            child: SvgPicture.asset(
              "assets/icons/dollar_circle.svg",
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(15.36),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              myText(
                text: title,
                color: const Color(0xff353535),
                fontSize: getProportionateScreenWidth(8.96),
                fontWeight: FontWeight.w400,
              ),
              myText(
                text: amount,
                color: const Color(0xff353535),
                fontSize: getProportionateScreenWidth(15.36),
                fontWeight: FontWeight.w800,
              ),
            ],
          ),
        ],
      ),
    );
  }
}