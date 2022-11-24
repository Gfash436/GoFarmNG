import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Screens/home_screen/app_bar.dart';
import 'package:gofarmng/Screens/home_screen/app_drawer.dart';

import '../../Styles/colors.dart';
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
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: BalanceDetails(),
                ),
              ),
              const AnalyticsLineGraph(),
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
            children: [
              Text(
                "Farm fresh oranges",
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(
                    12,
                  ),
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(
                  4,
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

class AnalyticsPieChart extends StatelessWidget {
  const AnalyticsPieChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(
                  16,
                ),
              ),
              const PieChartComponent(),
            ],
          )),
    );
  }
}

class AnalyticsLineGraph extends StatelessWidget {
  const AnalyticsLineGraph({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

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
