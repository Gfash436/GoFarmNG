import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Screens/Authentication/loginPage.dart';
import 'package:gofarmng/Screens/Authentication/verification.dart';
import 'package:gofarmng/Widgets/textField.dart';

import '../../Styles/colors.dart';
import '../../Widgets/button.dart';
import '../../Widgets/myText.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _fullNameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _checked = false;

  @override
  void dispose() {
    _fullNameController.clear();
    _emailController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: white,
            body: SingleChildScrollView(
              child: Center(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                      child: Column(children: [
                        myText(
                            text: 'Create an Account',
                            color: textColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                        const SizedBox(height: 32),
                        customTextField(
                            title: 'Full name',
                            hint: 'Enter full name',
                            controller: _fullNameController,
                            keyboardType: TextInputType.name),
                        const SizedBox(height: 8),
                        customTextField(
                            title: 'Email Address',
                            hint: 'example@gmail.com',
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress),
                        const SizedBox(height: 8),
                        passwordTextField(
                            title: 'Password',
                            hint: 'enter password',
                            controller: _passwordController),
                        const SizedBox(height: 8),
                        passwordTextField(
                            title: 'Confirm Password',
                            hint: 'enter password',
                            controller: _confirmPasswordController),
                        Row(children: [
                          Checkbox(
                            value: _checked,
                            onChanged: (
                              bool? value,
                            ) {
                              setState(() {
                                _checked = !_checked;
                              });
                            },
                          ),
                          Expanded(
                            child: myText(
                                text:
                                    'I agree to GoFarmNG terms of service and private\n policy',
                                color: grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                        const SizedBox(height: 8),
                        customButton(
                            context: context,
                            text: 'Sign Up',
                            tap: (() {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) =>
                                          const Verification()));
                            })),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: getProportionateScreenWidth(300),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Divider(
                                thickness: 1,
                                color: grey,
                              )),
                              myText(
                                  text: ' or ',
                                  color: textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                              Expanded(
                                child: Divider(
                                  color: grey,
                                  thickness: 1,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        googleButton(context: context),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const myText(
                                text: "Already have an account? ",
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              child: myText(
                                  text: 'Sign In.',
                                  color: green,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ]))),
            )));
  }
}
