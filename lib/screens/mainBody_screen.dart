// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

// Package
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
// Pages
import 'package:flutter/material.dart';
import 'package:smpa_e_health/constants.dart';
import 'package:smpa_e_health/screens/login_screen.dart';
import '../main.dart';
import 'food_diary_screen.dart';
import 'health_screen.dart';
import 'home_screen.dart';
import 'mind_screen.dart';
import 'profile_screen.dart';

//

int visit = 0;
const List<String> AppBarTitles = [
  "Home",
  "Mind",
  "Health",
  "Food Diary",
  "Profile"
];
List<Widget> pages = [
  HomeScreen(),
  MindScreen(),
  HealthScreen(),
  FoodDiaryScreen(),
  ProfileScreen(),
];
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

class BodyScreen extends StatefulWidget {
  final String id = 'home_screen';

  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => BodyScreenState();
}

class BodyScreenState extends State<BodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //Bottom Navigation Bar still in development
      bottomNavigationBar: Container(
        child: BottomBarDefault(
          animated: true,
          items: items,
          backgroundColor: Colors.white,
          color: Colors.grey,
          colorSelected: Color(kMyPurple),
          indexSelected: visit,
          paddingVertical: 5,
          onTap: (int index) => setState(
            () {
              visit = index;
            },
          ),
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          elevation: 0,
          child: FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              color: Colors.white,
              child: SideMenu(),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        actions: visit == 4 ? [Icon(Icons.edit)] : null,
        scrolledUnderElevation: 0,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Color(kMyPurple)),
        backgroundColor: Colors.white,
        title: Text(
          AppBarTitles.elementAt(visit),
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: pages.elementAt(visit),
      ),
    );
  }
}

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/man_smiling.jpg'),
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Test User',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                'test.user@gmail.com',
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              )
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 50,
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ComingSoonScreen()),
                  );
                },
                child: Row(
                  children: [
                    Positioned(child: Stack()),
                    Icon(Icons.settings_rounded),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Settings',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17)),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ComingSoonScreen()),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.ios_share_rounded,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('About',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17)),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.exit_to_app_rounded),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Sign Out',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
