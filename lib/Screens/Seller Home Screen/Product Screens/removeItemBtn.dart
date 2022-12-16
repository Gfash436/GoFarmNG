import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Widgets/myText.dart';

class RemoveItemBtn extends StatelessWidget {
  const RemoveItemBtn({
    super.key,
    required this.ontap,
  });
  final VoidCallback ontap;
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
            // color: green,
          ),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset("assets/icons/delete.svg"),
                myText(
                  text: "Remove",
                  fontSize: getProportionateScreenHeight(
                    12,
                  ),
                  // color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EditItemBtn extends StatelessWidget {
  const EditItemBtn({
    super.key,
    required this.ontap,
  });
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        height: getProportionateScreenWidth(30),
        width: getProportionateScreenWidth(80),
        child: SizedBox(
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/edit-2.svg"),
              myText(
                text: "Edit",
                fontSize: getProportionateScreenHeight(
                  12,
                ),
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
