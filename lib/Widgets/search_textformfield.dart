import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Constants/size_config.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(
        335,
      ),
      height: getProportionateScreenHeight(
        40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(
              290,
            ),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xfff6f6f6),
                hintText: "Search Products...",
                hintStyle: TextStyle(
                  fontSize: getProportionateScreenHeight(
                    13,
                  ),
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                prefix: SizedBox(
                    height: 24,
                    child: VerticalDivider(
                      color: Colors.red,
                      width: getProportionateScreenHeight(.5),
                    )),
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SvgPicture.asset(
                    "assets/icons/search.svg",
                    height: getProportionateScreenHeight(
                      16,
                    ),
                    width: getProportionateScreenWidth(
                      16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(
              40,
            ),
            width: getProportionateScreenHeight(
              37,
            ),
            child: Container(
              padding: EdgeInsets.all(
                getProportionateScreenWidth(
                  8,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                color: const Color(0xfff6f6f6),
              ),
              child: SvgPicture.asset(
                "assets/icons/filter.svg",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
