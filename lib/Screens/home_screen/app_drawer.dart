import 'package:flutter/material.dart';

import '../../Constants/size_config.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                  20,
                ),
                vertical: getProportionateScreenHeight(
                  56,
                )),
          ),
        ],
      ),
    );
  }
}