import 'package:flutter/material.dart';

import '../../Constants/size_config.dart';
import '../../Styles/colors.dart';
import '../../Widgets/myText.dart';
import '../../Widgets/search_textformfield.dart';

class Fruits extends StatelessWidget {
  const Fruits({
    super.key,
    // required this.title,
  });
  // final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: black,
        elevation: 0,
        title: myText(
          text: "Categories",
          fontWeight: FontWeight.w700,
          fontSize: getProportionateScreenWidth(16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 17,
            ),
            const SearchTextFormField(),
          ],
        ),
      ),
    );
  }
}
