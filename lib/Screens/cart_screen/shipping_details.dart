import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Styles/colors.dart';
import 'package:gofarmng/Widgets/textField.dart';

import '../../Widgets/myText.dart';

class ShippingDetails extends StatelessWidget {
  const ShippingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shipping Details"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20.0),
            vertical: getProportionateScreenHeight(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myText(
              text: "Shipping Details",
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: getProportionateScreenHeight(16),
            ),
            Column(
              children: [
                myText(
                  text: "House Address",
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff111111).withOpacity(.5),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
