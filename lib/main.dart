import 'package:flutter/material.dart';
import 'package:gofarmng/Screens/Authentication/loginPage.dart';
import 'package:provider/provider.dart';

import 'Screens/analytics_screen/analytics_screen.dart';
import 'Provider/AuthProvider/authProvider.dart';
import 'Screens/splashScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthenticationProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Nunito',
          primarySwatch: Colors.blue,
        ),
        home: const LoginPage(),
      ),
    );
  }
}
