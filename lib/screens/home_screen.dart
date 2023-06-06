// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

// Package
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';

// Pages
import 'package:flutter/material.dart';
import 'package:smpa_e_health/constants.dart';
import 'health_screen.dart';

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
  HomeScreenDetails(),
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
      backgroundColor: Colors.white,
      //Bottom Navigation Bar still in development
      bottomNavigationBar: Container(
        child: BottomBarDefault(
          animated: true,
          items: items,
          backgroundColor: Colors.white,
          color: Colors.grey,
          colorSelected: Colors.deepPurple,
          indexSelected: visit,
          paddingVertical: 5,
          onTap: (int index) => setState(
            () {
              visit = index;
            },
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 0,
        child: FractionallySizedBox(
          widthFactor: 1,
          child: Container(
            color: Color(
              kMyGrey,
            ),
            child: SideMenu(),
          ),
        ),
      ),
      appBar: AppBar(
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
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            children: [Text('Data ... '), Text('Data ... ')],
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 50,
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.settings_rounded),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Settings',
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.ios_share_rounded),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Settings',
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.exit_to_app_rounded),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Settings',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HomeScreenDetails extends StatelessWidget {
  const HomeScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Testinggg Health...'),
    );
  }
}

class MindScreen extends StatelessWidget {
  const MindScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Testinggg Minddd...'),
    );
  }
}

class FoodDiaryScreen extends StatelessWidget {
  const FoodDiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Testinggg Food Diary...'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Testinggg Profile...'),
    );
  }
}
