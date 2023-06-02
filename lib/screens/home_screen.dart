// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math' as math;

// Package
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';

//

// Pages

const List<TabItem> items = [
  TabItem(
    icon: Icons.home,
    // title: 'Home',
  ),
  TabItem(
    icon: Icons.search_sharp,
    title: 'Shop',
  ),
  TabItem(
    icon: Icons.favorite_border,
    title: 'Wishlist',
  ),
  TabItem(
    icon: Icons.shopping_cart_outlined,
    title: 'Cart',
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
          child: BottomBarFloating(
            items: items,
            backgroundColor: Colors.green,
            color: Colors.white,
            colorSelected: Colors.orange,
            // indexSelected: visit,
            paddingVertical: 5,
            onTap: (int index) => setState(() {
              // visit = index;
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 2,
                child: Container(
                  // color: Colors.red[200],
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Device Connected',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 40,
                        // color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Apple Watch',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black87,
                              ),
                            ),
                            Transform.rotate(
                              angle: 180 * math.pi / 120,
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                size: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            7,
                          ),
                          color: Colors.deepPurple[50],
                        ),
                        height: 50,
                        width: double.infinity,
                        child: Center(
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              'Connect a New Device',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19,
                                  color: Colors.deepPurple[600]),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Health',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 10),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 10,
                          ),
                          child: Container(
                            // color: Colors.deepPurple[100],
                            child: ListTile(
                              leading: Icon(
                                Icons.directions_run_rounded,
                                size: 50,
                                color: Colors.deepPurple,
                              ),
                              title: Text(
                                'Exercising',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.grey[500],
                                size: 20,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
