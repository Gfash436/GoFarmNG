import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:gofarmng/Screens/home_screen/home_screen.dart';
=======
import 'package:gofarmng/Screens/splashScreen.dart';
>>>>>>> 672c34a (new committed)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Nunito',
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
