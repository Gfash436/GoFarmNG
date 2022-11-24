import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Constants/size_config.dart';
import '../../Styles/colors.dart';
import '../../Widgets/myText.dart';

class RecentTransactionComponents extends StatelessWidget {
  const RecentTransactionComponents({
    super.key, required this.isDeposit,
    // required this.iconColor,
    // required this.icon,
    // required this.title,
    // required this.subtitle,
    // required this.trailing,
    // required this.trailingColor,
    // required this.shapeColor,
  });
  final bool isDeposit;
  // final Color iconColor, trailingColor, shapeColor;
  // final String title, icon, subtitle, trailing;
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
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isDeposit? const Color(0xffE5F7E1) :const Color(0xffFFBDBD),
                ),
                child: SvgPicture.asset(
                  isDeposit? "assets/icons/arrow-down.svg" : "assets/icons/arrow-up.svg",
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
                    text: isDeposit? "Funds Deposit" : "Funds Withdrawn",
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
            color: isDeposit? const Color(0xff149c08) : const Color(0xfff41515),
          ),
        ],
      ),
    );
  }
}
