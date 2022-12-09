import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';

import '../../../Styles/colors.dart';
import '../../../Widgets/myText.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: black,
        title: myText(
          text: "My Address",
          fontSize: getProportionateScreenWidth(16),
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(21),
        ),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(31),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(8),
              ),
              width: getProportionateScreenWidth(333),
              height: getProportionateScreenHeight(171),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffcfcfcf),
                  width: .5,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton.icon(
                        style: TextButton.styleFrom(foregroundColor: black),
                        icon: const Icon(
                          Icons.delete,
                        ),
                        onPressed: () {},
                        label: const myText(
                          text: "Delete",
                        ),
                      ),
                      TextButton.icon(
                        style: TextButton.styleFrom(foregroundColor: black),
                        icon: const Icon(Icons.edit_location_alt),
                        onPressed: () {},
                        label: const myText(
                          text: "Edit",
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
