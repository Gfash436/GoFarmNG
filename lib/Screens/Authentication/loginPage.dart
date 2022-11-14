import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Widgets/textField.dart';

import '../../Constants/controllers.dart';
import '../../Styles/colors.dart';
import '../../Widgets/button.dart';
import '../../Widgets/myText.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: white,
            body: SingleChildScrollView(
              child: Center(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Column(children: [
                        myText(
                            text: 'Sign Up',
                            color: textColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                        const SizedBox(height: 32),
                        customTextField(
                            title: 'Email Address',
                            hint: 'example@gmail.com',
                            controller: emailController),
                        const SizedBox(height: 16),
                        passwordTextField(
                            title: 'Password',
                            hint: 'enter password',
                            controller: passwordController),
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
                          SizedBox(
                            width: getProportionateScreenWidth(280),
                            child: Row(
                              children: [
                                myText(
                                    text: 'Remember me',
                                    color: grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {},
                                  child: myText(
                                      text: 'Forgot Password',
                                      color: green,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ]),
                        const SizedBox(height: 24),
                        customButton(context: context, text: 'Sign in'),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: getProportionateScreenWidth(300),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Divider(
                                color: green,
                                thickness: 5,
                                indent: 3,
                              ),
                              myText(
                                  text: 'or',
                                  color: textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                              Divider(
                                color: green,
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        googleButton(context: context),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const myText(
                              text: "Don't have an account? ",
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                            myText(
                                text: 'Sign Up.',
                                color: green,
                                fontSize: 13,
                                fontWeight: FontWeight.w400)
                          ],
                        )
                      ]))),
            )));
  }
}
