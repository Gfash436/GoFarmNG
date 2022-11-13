import 'package:flutter/material.dart';

import '../home_screen/app_bar.dart';
import '../home_screen/app_drawer.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});

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
