import 'package:flutter/material.dart';

import '../../../Constants/size_config.dart';
import 'reuseable_balance_container.dart';

class BalanceDetails extends StatelessWidget {
  const BalanceDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ReuseableBalanceContainer(
          title: "Useable Balance",
          amount: "N49,650.23",
          imgColor: Color(0xffCBC8FF),
        ),
        SizedBox(
          width: getProportionateScreenHeight(15.36),
        ),
        const ReuseableBalanceContainer(
          title: "Total Deposit",
          amount: "N400,000.00",
          imgColor: Color(0xffC2E3FF),
        ),
        SizedBox(
          width: getProportionateScreenHeight(15.36),
        ),
        const ReuseableBalanceContainer(
          title: "Monthly spending",
          amount: "N99,550.00",
          imgColor: Color(0xffCBC8FF),
        ),
        SizedBox(
          width: getProportionateScreenHeight(15.36),
        ),
        const ReuseableBalanceContainer(
          title: "Savings",
          amount: "N110,500.00",
          imgColor: Color(0xffC2E3FF),
        ),
      ],
    );
  }
}