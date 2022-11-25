import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'Constants/google_sign_in.dart';
import 'Screens/Authentication/loginPage.dart';
import 'Styles/colors.dart';
import 'Utilities/routers.dart';
import 'Widgets/myText.dart';

class TestGoogle extends StatelessWidget {
  final GoogleSignInAccount user;

  TestGoogle({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: grey,
        appBar: AppBar(title: const Text('Test Google')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: user.photoUrl == null
                        ? Text(user.email)
                        : CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(user.photoUrl!)),
                  ),
                  const SizedBox(height: 8),
                  myText(
                    text: "Hey ${user.displayName!} !",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () async {
                          await GoogleSignInApi.logout();

                          PageNavigator(ctx: context)
                              .nextPageOnly(page: const LoginPage());
                        },
                        child: const Text('Log out')),
                  )
                ]),
          ),
        ),
      );
}
