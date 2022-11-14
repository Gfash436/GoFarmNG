import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Styles/colors.dart';

Widget customTextField(
    {String? title,
    String? hint,
    TextEditingController? controller,
    int? maxlines = 1}) {
  return Column(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          title!,
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ),
      const SizedBox(height: 8),
      Container(
        height: getProportionateScreenHeight(54),
        // margin:
        //     EdgeInsets.symmetric(vertical: getProportionateScreenHeight(10)),
        padding: EdgeInsets.symmetric(
            // vertical: getProportionateScreenHeight(5),
            horizontal: getProportionateScreenWidth(10)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: lightGrey),
        child: TextFormField(
          controller: controller,
          maxLines: maxlines,
          decoration: InputDecoration(hintText: hint, border: InputBorder.none),
        ),
      )
    ],
  );
}

Widget passwordTextField(
    {String? title,
    String? hint,
    TextEditingController? controller,
    int? maxlines = 1}) {
  return Column(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          title!,
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ),
      const SizedBox(height: 8),
      Container(
        height: getProportionateScreenHeight(54),
        // margin:
        //     EdgeInsets.symmetric(vertical: getProportionateScreenHeight(50)),
        padding: EdgeInsets.symmetric(
            // vertical: getProportionateScreenHeight(5),
            horizontal: getProportionateScreenWidth(10)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: lightGrey),
        child: TextFormField(
          obscureText: true,
          controller: controller,
          maxLines: maxlines,
          decoration: InputDecoration(
              hintText: hint,
              border: InputBorder.none,
              suffixIcon: const Icon(Icons.visibility)),
        ),
      )
    ],
  );
}
