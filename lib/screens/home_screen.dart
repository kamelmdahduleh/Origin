// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

// Packages

// Pages

class HomeScreen extends StatefulWidget {
  final String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Home',
          ),
        ),
      ),
    );
  }
}
