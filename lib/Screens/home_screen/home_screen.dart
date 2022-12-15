import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Screens/analytics_screen/analytics_screen.dart';
import 'package:gofarmng/Screens/favorite_screen/favorite_screen.dart';
import 'package:gofarmng/Screens/wallet_screen/wallet_screen.dart';
import 'package:gofarmng/Widgets/myText.dart';

import '../../Widgets/search_textformfield.dart';
import 'app_bar.dart';
import 'app_drawer/app_drawer.dart';
import 'bottom_navBar.dart';
import 'home_screen_body.dart';
import 'newest_arrival.dart';
import 'popular_categories.dart';
import 'top_selling_products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final TextEditingController searchController = TextEditingController();
  int _selectedIndex = 0;
  final scafoldKey = GlobalKey<ScaffoldState>();
  static final List<Widget> _pages = [
    HomeScreenBody(),
    const AnalyticsScreen(),
    const FavoriteScreen(),
    const WalletScreen(),
  ];
  void navigatoTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scafoldKey,
      appBar: appBar(context, scafoldKey),
      drawer: AppDrawer(),
      body: SafeArea(child: _pages[_selectedIndex]),
      bottomNavigationBar:
          NavBar(navigatoTo: navigatoTo, selectedIndex: _selectedIndex),
    );
  }
}
