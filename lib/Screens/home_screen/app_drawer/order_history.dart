import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';

import '../../../Styles/colors.dart';
import '../../../Widgets/myText.dart';
import '../../../Widgets/search_textformfield.dart';
import '../../analytics_screen/recent_orders/recent_orders.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: black,
        title: myText(
          text: "Order History",
          fontSize: getProportionateScreenWidth(16),
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(21),
        ),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(17),
            ),
            const SearchTextFormField(),
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(16),
                        vertical: getProportionateScreenWidth(8),
                      ),
                      width: getProportionateScreenWidth(333),
                      height: getProportionateScreenHeight(90),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff111111).withOpacity(.25),
                            offset: const Offset(0, 0),
                            blurRadius: 2,
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              myText(
                                text: "Order #HI6364474746454",
                                fontSize: getProportionateScreenWidth(12),
                                fontWeight: FontWeight.w400,
                              ),
                              myText(
                                text: "20/10/2022",
                                fontSize: getProportionateScreenWidth(8),
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          myText(
                            text: "Grazac, idi aba, Abeokuta, Ogun state",
                            fontSize: getProportionateScreenWidth(8),
                            fontWeight: FontWeight.w400,
                          ),
                          myText(
                            text: "5 Items",
                            fontSize: getProportionateScreenWidth(8),
                            fontWeight: FontWeight.w400,
                          ),
                          myText(
                            text: "#25,000",
                            fontSize: getProportionateScreenWidth(12),
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    ...List.generate(
                      8,
                      (index) => const RecentOrders(),
                    ),
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
