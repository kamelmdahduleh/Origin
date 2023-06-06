// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smpa_e_health/constants.dart';
import 'package:smpa_e_health/screens/health_screen.dart';
import 'screens/mainBody_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          headlineSmall: TextStyle(
              fontSize: 17, color: Colors.black, fontWeight: FontWeight.w600),
          labelMedium: TextStyle(fontSize: 15, color: Colors.black),
        ),
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            systemNavigationBarColor: Colors.white,
          ),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: BodyScreen(),
      // home: LoginScreen(),
    );
  }
}
