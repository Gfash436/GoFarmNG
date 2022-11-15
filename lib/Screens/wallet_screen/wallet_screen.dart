import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Screens/wallet_screen/cart_purchased.dart';
import 'package:gofarmng/Styles/colors.dart';
import 'package:gofarmng/Widgets/myText.dart';

import 'fund_transactions.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: myText(
          text: "Wallet",
          fontSize: getProportionateScreenWidth(
            16,
          ),
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: getProportionateScreenWidth(double.infinity),
              height: getProportionateScreenHeight(136),
              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.circular(
                  8,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myText(
                    text: "Total balance",
                    color: white,
                    fontSize: getProportionateScreenHeight(
                      16,
                    ),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(4),
                  ),
                  myText(
                    text: "N49,650.23",
                    color: white,
                    fontSize: getProportionateScreenHeight(
                      40,
                    ),
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(24),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: const EdgeInsets.all(
                          4,
                        ),
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: green,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/arrow-down.svg",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(8),
                    ),
                    myText(
                      text: "Deposit",
                      fontSize: getProportionateScreenWidth(
                        13,
                      ),
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                SizedBox(
                  width: getProportionateScreenWidth(40),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(
                        4,
                      ),
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: red,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/arrow-up.svg",
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(8),
                    ),
                    myText(
                      text: "Withdraw",
                      fontSize: getProportionateScreenWidth(
                        13,
                      ),
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(24),
            ),
            myText(
              text: "Recent Transactions",
              fontSize: getProportionateScreenWidth(
                19,
              ),
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: getProportionateScreenHeight(16),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myText(
                      text: "4th Nov, 2022",
                      fontSize: getProportionateScreenWidth(
                        12,
                      ),
                      fontWeight: FontWeight.normal,
                    ),
                    const RecentTransactionComponents(
                      isDeposit: false,
                    ),
                    const RecentTransactionComponents(
                      isDeposit: true,
                    ),
                    const RecentTransactionComponents(
                      isDeposit: true,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(8),
                    ),
                    myText(
                      text: "2nd Nov, 2022",
                      fontSize: getProportionateScreenWidth(
                        12,
                      ),
                      fontWeight: FontWeight.normal,
                    ),
                    const CartTransactionDetails(),
                    const CartTransactionDetails(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
