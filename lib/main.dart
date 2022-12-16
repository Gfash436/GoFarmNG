import 'package:flutter/material.dart';
import 'package:gofarmng/Provider/AuthProvider/dbProvider.dart';
import 'package:gofarmng/Provider/AuthProvider/logoutProvider.dart';
import 'package:gofarmng/Screens/splashScreen.dart';
import 'package:provider/provider.dart';

import 'Provider/AuthProvider/authProvider.dart';

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
        ChangeNotifierProvider(create: (_) => AuthenticationProvider()),
        ChangeNotifierProvider(create: (_) => LogoutProvider()),
        ChangeNotifierProvider(create: (_) => DatabaseProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Nunito',
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
