import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Styles/colors.dart';
// import 'package:gofarmng/Widgets/textField.dart';

import '../../Widgets/button.dart';
import '../../Widgets/myText.dart';
import 'payment_details.dart';

class ShippingDetails extends StatelessWidget {
  const ShippingDetails({super.key});
  // TextEditingController _loginEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shipping Details"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20.0),
            vertical: getProportionateScreenHeight(16)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              myText(
                text: "Shipping Details",
                fontSize: getProportionateScreenWidth(14),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: getProportionateScreenHeight(16),
              ),
              const CustomTextFormField(
                hint: 'House Address....',
                title: "House Address",
              ),
              SizedBox(
                height: getProportionateScreenHeight(8),
              ),
              const CustomTextFormField(
                hint: 'Enter Zip Code',
                title: "Zip Code",
              ),
              SizedBox(
                height: getProportionateScreenHeight(8),
              ),
              const CustomTextFormField(
                hint: 'Enter City',
                title: "City",
              ),
              SizedBox(
                height: getProportionateScreenHeight(8),
              ),
              const CustomTextFormField(
                hint: 'Select Country',
                title: "Country",
              ),
              SizedBox(
                height: getProportionateScreenHeight(32),
              ),
              customButton(
                height: 53,
                text: "Continue",
                tap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PaymentDetails(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.title,
  });

  // final TextEditingController _loginEmailController;
  final String hint, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myText(
          text: title,
          fontSize: getProportionateScreenWidth(16),
          fontWeight: FontWeight.w400,
          color: const Color(0xff111111).withOpacity(.5),
        ),
        SizedBox(
          height: getProportionateScreenHeight(8),
        ),
        SizedBox(
          height: getProportionateScreenHeight(54),
          width: getProportionateScreenWidth(double.infinity),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: black,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: black,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
