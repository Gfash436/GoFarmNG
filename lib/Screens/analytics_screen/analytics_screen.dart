import 'package:flutter/material.dart';
import 'package:gofarmng/Screens/home_screen/app_bar.dart';
import 'package:gofarmng/Screens/home_screen/app_drawer.dart';

class AnalyticsScreen extends StatelessWidget {
  AnalyticsScreen({super.key});
  final scafoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      appBar: appBar(context, scafoldKey),
      drawer: AppDrawer(),
    );
  }
}
