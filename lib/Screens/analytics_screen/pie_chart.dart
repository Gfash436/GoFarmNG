// ignore_for_file: public_member_api_docs, sort_constructors_first
import "package:flutter/material.dart";
import 'package:fl_chart/fl_chart.dart';

import 'package:gofarmng/Constants/size_config.dart';

class PieChartComponent extends StatefulWidget {
  const PieChartComponent({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: getProportionateScreenWidth(134),
          width: getProportionateScreenWidth(134),
          child: AspectRatio(
            aspectRatio: 0.5,
            child: PieChart(
              PieChartData(
                  pieTouchData: PieTouchData(
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {
                    setState(() {
                      if (!event.isInterestedForInteractions ||
                          pieTouchResponse == null ||
                          pieTouchResponse.touchedSection == null) {
                        touchedIndex = -1;
                        return;
                      }
                      touchedIndex =
                          pieTouchResponse.touchedSection!.touchedSectionIndex;
                    });
                  }),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: double.infinity,
                  sections: showPieSections()),
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(
            105,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Indicator(
                text1: "Completed:  ",
                titleColor: Color(0xff149C08),
                text2: '63.7%',
              ),
              Indicator(
                text1: "Pending:",
                titleColor: Color(0xffFFD809),
                text2: '24.5%',
              ),
              Indicator(
                text1: "Canceled:",
                titleColor: Color(0xffF41515),
                text2: '11.4%',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

List<PieChartSectionData> showPieSections() {
  return List.generate(3, (i) {
    const fontSize = 16.0;
    const radius = 50.0;
    switch (i) {
      case 0:
        return PieChartSectionData(
          color: const Color(0xffF41515),
          value: 11.4,
          showTitle: false,
          title: "11.4%",
          radius: radius,
          titleStyle: const TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
          ),
        );
      case 1:
        return PieChartSectionData(
          color: const Color(0xffFFD809),
          value: 24.5,
          showTitle: false,
          title: "24.5%",
          radius: radius,
          titleStyle: const TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
          ),
        );
      case 2:
        return PieChartSectionData(
          color: const Color(0xff149C08),
          value: 63.7,
          showTitle: false,
          title: "63.7%",
          radius: radius,
          titleStyle: const TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
          ),
        );
      default:
        throw Error();
    }
  });
}

class Indicator extends StatelessWidget {
  const Indicator({
    Key? key,
    required this.text2,
    required this.titleColor,
    required this.text1,
  }) : super(key: key);
  final String text1, text2;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.right,
      TextSpan(
        text: text1,
        style: TextStyle(
          fontSize: getProportionateScreenWidth(
            14,
          ),
          color: titleColor,
          fontWeight: FontWeight.w400,
        ),
        children: [
          TextSpan(
            text: text2,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(
                14,
              ),
              color: const Color(0xff000000),
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
