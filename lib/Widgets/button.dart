import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gofarmng/Styles/colors.dart';

import '../Constants/size_config.dart';
import 'image.dart';
import 'myText.dart';

Widget customButton(
    {VoidCallback? tap,
    bool? status = false,
    double? height = 49,
    String? text = 'Sign Up',
    bool? isValid = false,
    BuildContext? context}) {
  return GestureDetector(
    onTap: status == true ? null : tap,
    child: Container(
      height: height,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: status == false ? green : grey,
          borderRadius: BorderRadius.circular(8)),
      child: Text(
        status == false ? text! : 'Please wait...',
        style:
            TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.w700),
      ),
    ),
  );
}

Widget customButton2(
    {VoidCallback? tap,
    bool? status = false,
    String? text = 'Sign In',
    bool? isValid = false,
    BuildContext? context}) {
  return GestureDetector(
    onTap: status == true ? null : tap,
    child: Container(
      height: 49,
      margin: const EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: status == false ? white : green,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: green)),
      width: MediaQuery.of(context!).size.width,
      child: Text(
        status == false ? text! : 'Please wait...',
        style: TextStyle(
            color: textColor, fontSize: 16, fontWeight: FontWeight.w700),
      ),
    ),
  );
}

Widget googleButton(
    {VoidCallback? tap,
    bool? status = false,
    String? text = 'Sign in with Google',
    bool? isValid = false,
    BuildContext? context}) {
  return GestureDetector(
    onTap: status == true ? null : tap,
    child: Container(
      height: 49,
      margin: const EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: status == false ? white : green,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: grey)),
      width: MediaQuery.of(context!).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image('assets/images/googleIcon.png'),
          const SizedBox(width: 12),
          Text(
            status == false ? text! : 'Please wait...',
            style: TextStyle(
                color: textColor, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    ),
  );
}

Column drawerButton(
    BuildContext context, String title, String icon, VoidCallback tap) {
  return Column(
    children: [
      GestureDetector(
        onTap: tap,
        child: SizedBox(
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                height: getProportionateScreenWidth(21),
                width: getProportionateScreenWidth(21),
              ),
              SizedBox(
                width: getProportionateScreenWidth(
                  16,
                ),
              ),
              myText(
                text: title,
                fontSize: getProportionateScreenWidth(14),
              ),
            ],
          ),
        ),
      ),
      Divider(
        thickness: .5,
        height: getProportionateScreenWidth(16),
      ),
    ],
  );
}
