import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Widgets/myText.dart';

import '../../Widgets/textField.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
          ),
          onPressed: () {},
        ),
        actions: [
          SvgPicture.asset(
            "assets/icons/notification.svg",
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          SvgPicture.asset(
            "assets/icons/cart.svg",
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: getProportionateScreenWidth(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myText(
              text: "Hey David!",
              fontSize: getProportionateScreenHeight(29),
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: getProportionateScreenHeight(11),
            ),
            const SearchTextFormField()
          ],
        ),
      ),
    );
  }
}

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
