// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Screens/analytics_screen/analytics_screen.dart';
import 'package:gofarmng/Screens/favorite_screen/favorite_screen.dart';
import 'package:gofarmng/Screens/wallet_screen/wallet_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'app_bar.dart';
import 'app_drawer.dart';
import 'bottom_navBar.dart';
import 'home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final TextEditingController searchController = TextEditingController();
  int _selectedIndex = 0;
  final scafoldKey = GlobalKey<ScaffoldState>();

  List<dynamic> _pages(BuildContext context) {
    return [
      HomeScreenBody(),
      const AnalyticsScreen(),
      const FavoriteScreen(),
      const WalletScreen(),
    ];
  }

  void navigatoTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final displayData = Provider.of<AuthenticationProvider>(context);
    SizeConfig.init(context);
    return Scaffold(
      key: scafoldKey,
      appBar: appBar(context, scafoldKey),
      drawer: const AppDrawer(),
      body: SafeArea(
        child: _pages(context)[_selectedIndex],
      ),
      bottomNavigationBar:
          NavBar(navigatoTo: navigatoTo, selectedIndex: _selectedIndex),
    );
  }
}
