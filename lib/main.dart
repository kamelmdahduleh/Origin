// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:smpa_e_health/constants.dart';
import 'package:smpa_e_health/screens/health_screen.dart';

import 'screens/login_screen.dart';
import 'screens/mainBody_screen.dart';

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
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: TextStyle(
              fontSize: 17, color: Colors.black, fontWeight: FontWeight.w600),
          labelMedium: TextStyle(fontSize: 15, color: Colors.black),
          labelSmall: TextStyle(fontSize: 12, color: Colors.black38),
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

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: const [
            SizedBox(
              height: 100,
            ),
            Image(
              image: AssetImage('images/logo.png'),
              height: 150,
            ),
            // Text(
            //   'Coming Soon ... ',
            //   style: TextStyle(
            //     fontSize: 32,
            //     color: Color(kMyPurple),
            //     fontWeight: FontWeight.w600,
            //   ),
            // ),
            SizedBox(
              height: 100,
            ),
            SpinKitFadingCircle(
              color: Color(0xFF5e2eba),
              size: 115,
            ),
            Expanded(
                child: SizedBox(
              height: 10,
            )),
            Text(
              "Please wait ",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF5120ae),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Working on the Task",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF485d98),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
