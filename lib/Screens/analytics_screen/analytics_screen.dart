import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Screens/home_screen/app_bar.dart';
import 'package:gofarmng/Screens/home_screen/app_drawer.dart';

import 'reuseable_balance_container.dart';

class AnalyticsScreen extends StatelessWidget {
  AnalyticsScreen({super.key});
  final scafoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      appBar: appBar(context, scafoldKey),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenHeight(20),
          vertical: getProportionateScreenHeight(24.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin:
                    EdgeInsets.only(bottom: getProportionateScreenHeight(16)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenHeight(16),
              ),
              Container(
                height: getProportionateScreenHeight(286),
                width: getProportionateScreenWidth(335),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(
                        0,
                        0,
                      ),
                      blurRadius: 2,
                      spreadRadius: 0,
                      color: const Color(0xff111111).withOpacity(.25),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: getProportionateScreenHeight(16),
              ),
              Container(
                height: getProportionateScreenHeight(286),
                width: getProportionateScreenWidth(335),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(
                        0,
                        0,
                      ),
                      blurRadius: 2,
                      spreadRadius: 0,
                      color: const Color(0xff111111).withOpacity(.25),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
