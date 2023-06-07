// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smpa_e_health/constants.dart';

List<String> days = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"];
List<Icon> progressIcons = [
  Icon(
    Icons.spa_outlined,
    size: 50,
    color: Color(kMyPurple),
  ),
  Icon(
    Icons.sports_gymnastics_rounded,
    size: 50,
    color: Color(kMyPurple),
  ),
  Icon(
    Icons.emoji_food_beverage_rounded,
    size: 50,
    color: Color(kMyPurple),
  )
];
List<String> progressText = [
  "Meditations",
  "Exercise",
  "Diet",
];
List<Icon> faceIcons = [Icon(Icons.face_2)];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 2,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.center,
              child: Image(
                image: AssetImage(
                  'images/logo_test.png',
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Emad',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'You can book your COVID-19 booster dose after February 25.',
                  style: Theme.of(context).textTheme.labelMedium,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            alignment: Alignment.centerLeft,
            // color: Colors.deepPurple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Friday, 18 February',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HRUPage()),
                    );
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    leading: Icon(
                      Icons.sentiment_very_satisfied_rounded,
                      size: 50,
                      color: Color(kMyPurple),
                    ),
                    title: Text(
                      'How are you feeling today?',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    subtitle: Text('DAILY CHECK IN'),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black12,
                  height: 0,
                  thickness: 2 / 3,
                  indent: 10,
                ),
              ],
            ),
          ),
          // SizedBox(height: 0),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            alignment: Alignment.centerLeft,
            // color: Colors.deepPurple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Progress',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(vertical: 5),
                          leading: progressIcons[index],
                          title: Text(
                            progressText[index],
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 18,
                            color: Colors.grey[400],
                          ),
                        ),
                        Divider(
                          color: Colors.black12,
                          height: 10,
                          thickness: 2 / 3,
                          indent: 10,
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HRUPage extends StatelessWidget {
  const HRUPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('How are you feeling today?'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'How are you today?',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            AspectRatio(
              aspectRatio: 3,
              child: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.tag_faces_rounded,
                      size: 80,
                      color: Colors.lightGreen,
                    ),
                    Text(
                      'Great',
                      style: TextStyle(color: Colors.lightGreen),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 50,
              thickness: 12,
              color: Color(kMyDividerColor),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mood Analysis',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'This Week',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(kMyDividerColor)),
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(kMyDividerColor)),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black26,
                              size: 20,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Divider(
                        height: 40,
                        thickness: 3,
                        color: Color(kMyDividerColor),
                      );
                    },
                  ),
                  Container(
                    height: 20,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('MON'),
                        Text('TUE'),
                        Text('WED'),
                        Text('THU'),
                        Text('FRI'),
                        Text('SAT'),
                        Text('SUN'),
                        // ListView.builder(
                        //   shrinkWrap: true,
                        //   physics: ScrollPhysics(),
                        //   itemCount: days.length,
                        //   scrollDirection: Axis.horizontal,
                        //   itemBuilder: (context, index) {
                        //     return Text(days[index]);
                        //   },
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
