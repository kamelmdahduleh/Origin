// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smpa_e_health/constants.dart';

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
                ListTile(
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
