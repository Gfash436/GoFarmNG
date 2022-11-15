import 'package:flutter/material.dart';

import '../../Constants/size_config.dart';
import '../../Styles/colors.dart';
import '../../Widgets/myText.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    super.key,
    required this.ontap,
    required this.text,
    this.btnColor,
    this.ktextColor,
  });
  final VoidCallback ontap;
  final String text;
  final Color? btnColor;
  final Color? ktextColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        height: getProportionateScreenWidth(30),
        width: getProportionateScreenWidth(80),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: btnColor ?? green,
          ),
          child: Center(
            child: myText(
              text: text,
              color: ktextColor ?? white,
              fontSize: getProportionateScreenWidth(
                12,
              ),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}