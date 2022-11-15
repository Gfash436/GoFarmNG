import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constants/controllers.dart';
import '../../Styles/colors.dart';
import '../../Widgets/button.dart';
import '../../Widgets/myText.dart';
import '../../Widgets/textField.dart';
import 'newPassword.dart';
import 'signUpPage.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: white,
            body: SingleChildScrollView(
                child: Center(
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Column(children: [
                          myText(
                              text: 'Forgot Password',
                              color: textColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                          const SizedBox(height: 32),
                          customTextField(
                              title: 'Email Address',
                              hint: 'example@gmail.com',
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              myText(
                                  text:
                                      'A password reset link would be sent to your email.',
                                  color: grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ],
                          ),
                          const SizedBox(height: 24),
                          customButton(
                              context: context,
                              text: 'Continue',
                              tap: (() {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                            const NewPassword()));
                              })),
                          const SizedBox(height: 16),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => SignUpPage()));
                            },
                            child: myText(
                                text: 'Back to Sign In',
                                color: grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          )
                        ]))))));
  }
}
