import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Styles/colors.dart';

import '../../Widgets/myText.dart';
import 'cart_component.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  final scafoldKey2 = GlobalKey<ScaffoldState>();
  void initState() {
    // showBottomSheet(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // SizeConfig.init(context);
    return Scaffold(
      // backgroundColor: Colors.brown,
      key: scafoldKey2,
      appBar: AppBar(
        backgroundColor: white,
        foregroundColor: black,
        elevation: 0,
        title: myText(
          text: "My Cart",
          fontSize: getProportionateScreenWidth(
            16,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              ...List.generate(8, (index) => const CartComponents()),
            ],
          ),
        ),
      ),
    );
  }
}
