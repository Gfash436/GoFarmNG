import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Styles/colors.dart';

Widget customTextField(
    {
      String? title,
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
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
      Container(
        margin:
            EdgeInsets.symmetric(vertical: getProportionateScreenHeight(10)),
        padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(5),
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
