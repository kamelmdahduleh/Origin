// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'dart:math' as math;

// Package
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';

//

// Pages
int visit = 0;
const List<TabItem> items = [
  TabItem(
    icon: Icons.home_rounded,
    title: 'Home',
  ),
  TabItem(
    icon: Icons.tag_faces_outlined,
    title: 'Mind',
  ),
  TabItem(
    icon: Icons.monitor_heart_rounded,
    title: 'Health',
  ),
  TabItem(
    icon: Icons.scale_rounded,
    title: 'Food Diary',
  ),
  TabItem(
    icon: Icons.account_box,
    title: 'profile',
  ),
];

class HomeScreen extends StatefulWidget {
  final String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //Bottom Navigation Bar still in development
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(bottom: 30, right: 32, left: 32),
          child: BottomBarDefault(
            items: items,
            backgroundColor: Colors.white,
            color: Colors.grey,
            colorSelected: Colors.deepPurple,
            indexSelected: visit,
            paddingVertical: 5,
            onTap: (int index) => setState(() {
              visit = index;
            }),
          ),
        ),

        //Work Above ...
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
        body: SingleChildScrollView(),
      ),
    );
  }
}
