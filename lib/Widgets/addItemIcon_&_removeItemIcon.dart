import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/size_config.dart';

class ContainerAddItemIcon extends StatelessWidget {
  const ContainerAddItemIcon({
    super.key,
    required this.ontap,
  });
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xffE5F7E1),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(8),
          ),
          child: SvgPicture.asset(
            "assets/icons/addItem.svg",
          ),
        ),
      ),
    );
  }
}

class ContainerRemoveItemIcon extends StatelessWidget {
  const ContainerRemoveItemIcon({
    super.key,
    required this.ontap,
  });
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xffE5F7E1),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(8),
          ),
          child: SvgPicture.asset(
            "assets/icons/removeItem.svg",
          ),
        ),
      ),
    );
  }
}
