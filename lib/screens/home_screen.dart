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
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepPurple[600]),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
