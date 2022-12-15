// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Screens/Seller%20Home%20Screen/Product%20Screens/productScreen.dart';
import 'package:gofarmng/Screens/analytics_screen/analytics_screen.dart';
import 'package:gofarmng/Screens/wallet_screen/wallet_screen.dart';

import 'App Drawer/seller_app_drawer.dart';
import 'app_bar.dart';
import 'bottom_navBar.dart';
import 'home_screen_body.dart';

class SellerHomeScreen extends StatefulWidget {
  const SellerHomeScreen({super.key});

  @override
  State<SellerHomeScreen> createState() => _SellerHomeScreenState();
}

class _SellerHomeScreenState extends State<SellerHomeScreen> {
  // final TextEditingController searchController = TextEditingController();
  int _selectedIndex = 0;
  final scafoldKey = GlobalKey<ScaffoldState>();

  static final List<dynamic> _pages = [
    SellerHomeScreenBody(),
    const AnalyticsScreen(),
    const ProductScreen(),
    const WalletScreen(),
  ];
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
      drawer: const SellerAppDrawer(),
      body: SafeArea(child: _pages[_selectedIndex]),
      bottomNavigationBar:
          NavBar(navigatoTo: navigatoTo, selectedIndex: _selectedIndex),
    );
  }
}
