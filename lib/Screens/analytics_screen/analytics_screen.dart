import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Screens/home_screen/app_bar.dart';
import 'package:gofarmng/Screens/home_screen/app_drawer.dart';

import '../../Styles/colors.dart';
import 'balances/balance_details.dart';
import 'line_chart/line_graph.dart';
import 'pie_chart/pie_chart.dart';
import 'recent_orders/recent_orders.dart';

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
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: BalanceDetails(),
                ),
              ),
              //LINE CHART ILLUSTRATION oR IMPLEMENTATION
              const AnalyticsLineGraph(),
              //PIE CHART ILLUSTRATION oR IMPLEMENTATION
              const AnalyticsPieChart(),
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
                // height: getProportionateScreenHeight(330),
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
                        "Recent Orders",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: getProportionateScreenWidth(
                            14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenWidth(
                          8,
                        ),
                      ),
                      ...List.generate(
                        4,
                        (index) => const RecentOrders(),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(
                          8,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "View All",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: getProportionateScreenWidth(
                                14,
                              ),
                              color: green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
