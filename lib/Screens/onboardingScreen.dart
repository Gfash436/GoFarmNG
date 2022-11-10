// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../Constants/size_config.dart';
import '../Widgets/button.dart';
import '../Widgets/myText.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  bool isCurrentPage = true;
  final List<Map<String, String>> onboarding = [
    {
      "image": "assets/images/onb_img1.png",
      "title": "We sell incredibly fresh \nproduce",
      "desc":
          "We provide low to mid-income earners in urban cities\nwith accessible, affordable and quality poultry and fish\nproduce to their doorstep to ensure they are well-fed",
    },
    {
      "image": "assets/images/onb_img2.png",
      "title": "Providing a wide range of\n agriculture commodities",
      "desc":
          "We focus on the health of our soil and are pride ourselves\non being good stewards for all our resources.We enhance\nvalue by building connections across the food value chain",
    },
    {
      "image": "assets/images/onb_img3.png",
      "title": "Fresh from our Farm with\n love",
      "desc":
          "We are ready to optimise the entire value chain to \nmake farm produce sustainable, more accessible and \naffordable to Africans. A place you order easily.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Column(
        children: [
          PageView.builder(
            controller: pageController,
            itemBuilder: (context, index) => onboardingContent(
              image: "${onboarding[index]["image"]}",
              title: "${onboarding[index]["title"]}",
              desc: "${onboarding[index]["desc"]}",
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(78),
          ),
          customButton(
            text: "Next",
            tap: () => pageController.nextPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(36),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                onboarding.length,
                (index) => AnimatedContainer(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  width: isCurrentPage ? 32 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  duration: const Duration(
                    milliseconds: 200,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class onboardingContent extends StatelessWidget {
  const onboardingContent({
    Key? key,
    required this.desc,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image, title, desc;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
        ),
        SizedBox(
          height: getProportionateScreenHeight(36),
        ),
        myText(
          text: title,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: const Color(0xff353535),
        ),
        SizedBox(
          height: getProportionateScreenHeight(19),
        ),
        myText(
          text: desc,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: const Color(0xff353535),
        ),
      ],
    );
  }
}
