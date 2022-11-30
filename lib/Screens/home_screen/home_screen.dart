// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Screens/analytics_screen/analytics_screen.dart';
import 'package:gofarmng/Screens/favorite_screen/favorite_screen.dart';
// import 'package:gofarmng/Screens/wallet_screen/wallet_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'app_bar.dart';
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

  static final List<dynamic> _pages = [
    HomeScreenBody(),
    AnalyticsScreen(),
    const FavoriteScreen(),
    // Navigator.of(context as BuildContext).push(
    //   MaterialPageRoute(
    //     builder: (context) => const WalletScreen(),
    //   ),
    // ),
    // const WalletScreen(),
  ];
  void navigatoTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  late final GoogleSignInAccount user;

  @override
  Widget build(BuildContext context) {
    // final displayData = Provider.of<AuthenticationProvider>(context);
    SizeConfig.init(context);
    return Scaffold(
      appBar: appBar(context, scafoldKey),
      body: SafeArea(child: _pages[_selectedIndex]),
      bottomNavigationBar:
          NavBar(navigatoTo: navigatoTo, selectedIndex: _selectedIndex),
    );
  }
}
