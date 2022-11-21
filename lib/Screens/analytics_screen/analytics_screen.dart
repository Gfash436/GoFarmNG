import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Screens/home_screen/app_bar.dart';
import 'package:gofarmng/Screens/home_screen/app_drawer.dart';

import '../../Widgets/myText.dart';
import 'graph.dart';
import 'graphic.dart';
import 'pie_chart.dart';
import 'reuseable_balance_container.dart';

class AnalyticsScreen extends StatelessWidget {
  AnalyticsScreen({super.key});
  final scafoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
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
                margin: EdgeInsets.only(
                  bottom: getProportionateScreenHeight(16),
                ),
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
              Container(
                margin: EdgeInsets.only(
                  bottom: getProportionateScreenHeight(16),
                  top: getProportionateScreenHeight(16),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(16),
                  vertical: getProportionateScreenHeight(12),
                ),
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
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Analytics",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: getProportionateScreenWidth(
                                14,
                              )),
                        ),
                      ],
                    ),
                    const GraphComponent()
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: getProportionateScreenHeight(16),
                  top: getProportionateScreenHeight(16),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(
                    16,
                  ),
                  vertical: getProportionateScreenHeight(12),
                ),
                height: getProportionateScreenHeight(207),
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
                    ),
                  ],
                ),
                child: SizedBox(
                    // height: getProportionateScreenHeight(134),
                    width: getProportionateScreenHeight(134),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Order Status",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: getProportionateScreenWidth(
                                14,
                              )),
                        ),
                        SizedBox(
                          height: getProportionateScreenWidth(
                            16,
                          ),
                        ),
                        const PieChartComponent(),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
