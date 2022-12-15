import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gofarmng/Constants/size_config.dart';

import '../../../Styles/colors.dart';
import '../../../Widgets/button.dart';
import '../../../Widgets/myText.dart';

class MyAddress extends StatelessWidget {
  const MyAddress({super.key});

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
              width: getProportionateScreenWidth(333),
              height: getProportionateScreenHeight(171),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffcfcfcf),
                  width: .5,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton.icon(
                          style: TextButton.styleFrom(
                            foregroundColor: black,
                          ),
                          icon: SvgPicture.asset(
                            "assets/icons/delete.svg",
                            color: black,
                          ),
                          onPressed: () {},
                          label: const myText(
                            text: "Delete",
                          ),
                        ),
                        TextButton.icon(
                          style: TextButton.styleFrom(
                            foregroundColor: black,
                          ),
                          icon: SvgPicture.asset(
                            "assets/icons/edit.svg",
                            // color: black,
                          ),
                          onPressed: () {},
                          label: myText(
                            text: "Edit",
                            color: green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 0,
                    thickness: 1,
                    color: Color(0xffcfcfcf),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(16),
                        top: getProportionateScreenHeight(16),
                        bottom: getProportionateScreenHeight(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          IconTextWidget(
                            icon: "assets/icons/person.svg",
                            text: "David Olawale Monsur",
                          ),
                          IconTextWidget(
                            icon: "assets/icons/address_location.svg",
                            text:
                                "Salawu Olabode Avenue, Idi Aba, Abeokuta , Ogun\nstate",
                          ),
                          IconTextWidget(
                            icon: "assets/icons/phone.svg",
                            text: "08109090909",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            customButton(
              text: "Add new address",
              tap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    super.key,
    required this.icon,
    required this.text,
  });
  final String icon, text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        SizedBox(
          width: getProportionateScreenWidth(18),
        ),
        myText(
          text: text,
          fontSize: getProportionateScreenWidth(12),
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}
