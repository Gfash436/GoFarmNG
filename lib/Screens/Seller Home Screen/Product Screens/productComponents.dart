import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Screens/Seller%20Home%20Screen/Product%20Screens/removeItemBtn.dart';
import 'package:gofarmng/Styles/colors.dart';
import 'package:gofarmng/Widgets/myText.dart';

class ProductComponents extends StatelessWidget {
  const ProductComponents({
    super.key,
    // required this.icon,
  });

  // final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(
        getProportionateScreenWidth(16),
      ),
      margin: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(8),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8,
        ),
        border: Border.all(
          color: grey,
          width: .5,
          strokeAlign: BorderSide.strokeAlignInside,
          style: BorderStyle.solid,
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: getProportionateScreenWidth(
                16,
              ),
            ),
            height: getProportionateScreenWidth(55),
            width: getProportionateScreenWidth(55),
            decoration: BoxDecoration(
              color: grey,
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            child: Image.asset("assets/images/apple.png"),
          ),
          Column(
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    myText(
                      text: "Farm fresh apple",
                      fontSize: getProportionateScreenWidth(
                        14,
                      ),
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(width: 40),
                    myText(
                        text: 'Active',
                        color: green,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ],
                ),
              ),
              SizedBox(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text.rich(
                    TextSpan(
                        text: "N1000",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(
                            12,
                          ),
                          color: const Color(0xff353535),
                          fontWeight: FontWeight.normal,
                        ),
                        children: [
                          TextSpan(
                            text: "/Pcs",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(
                                9,
                              ),
                              color: const Color(0xff353535),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(width: getProportionateScreenWidth(95)),
                  EditItemBtn(
                    ontap: () {},
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
