// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smpa_e_health/constants.dart';
import 'package:smpa_e_health/main.dart';

List<bool> isClicked = [
  false,
  false,
  false,
  false,
];

List<String> moodsPath = [
  "images/emotions/sleeping_hires.png",
  "images/emotions/happy_hires.png",
  "images/emotions/neutral-emoticon_hires.png",
  "images/emotions/confused_hires.png",
  "images/emotions/sad_hires.png",
];

List<String> moods = [
  "GREAT",
  "GOOD",
  "OKAY",
  "BAD",
  "AWFUL",
];
List<Color> moodsColor = [
  Colors.green,
  Colors.lime,
  Colors.amber,
  Colors.lightBlue,
  Colors.deepPurple
];
List<String> days = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"];
List<bool> chosen = [false, false, false, false, false];
List<Icon> progressIcons = [
  // Icon(
  //   Icons.spa_outlined,
  //   size: 50,
  //   // color: Color(kMyPurple),
  //   color: isClicked[1] ? Color(0xFF50B964) : Color(kMyPurple),
  // ),
  // Icon(
  //   Icons.sports_gymnastics_rounded,
  //   size: 50,
  //   // color: Color(kMyPurple),
  //   color: isClicked[2] ? Color(0xFF50B964) : Color(kMyPurple),
  // ),
  // Icon(
  //   Icons.emoji_food_beverage_rounded,
  //   size: 50,
  //   // color: Color(kMyPurple),
  //   color: isClicked[3] ? Color(0xFF50B964) : Color(kMyPurple),
  // )
];

List<String> progressText = [
  "Meditations",
  "Exercise",
  "Diet",
];
List<Icon> faceIcons = [Icon(Icons.face_2)];

// Date
String dateString = DateFormat("EEEEE, dd, MMMM").format(DateTime.now());

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  // 'Friday, 18 February',
                  dateString,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isClicked[0] = true;
                    });
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
                      // color: Color(kMyPurple),
                      color:
                          isClicked[0] ? Color(0xFF50B964) : Color(kMyPurple),
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
                // ListView.builder(
                //   physics: ScrollPhysics(),
                //   shrinkWrap: true,
                //   itemCount: 3,
                //   itemBuilder: (context, index) {
                //     return Column(
                //       children: [
                //         GestureDetector(
                //           onTap: () {
                //             setState(() {
                //               isClicked[1] = true;
                //             });
                //
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (context) => ComingSoonScreen()),
                //             );
                //           },
                //           child: ListTile(
                //             contentPadding: EdgeInsets.symmetric(vertical: 5),
                //             leading: progressIcons[index],
                //             title: Text(
                //               progressText[index],
                //               style: Theme.of(context).textTheme.headlineSmall,
                //             ),
                //             trailing: Icon(
                //               Icons.arrow_forward_ios_rounded,
                //               size: 18,
                //               color: Colors.grey[400],
                //             ),
                //           ),
                //         ),
                //         Divider(
                //           color: Colors.black12,
                //           height: 10,
                //           thickness: 2 / 3,
                //           indent: 10,
                //         ),
                //       ],
                //     );
                //   },
                // ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isClicked[1] = true;
                        });

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ComingSoonScreen()),
                        );
                      },
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                        leading: Icon(
                          Icons.spa_outlined,
                          size: 50,
                          // color: Color(kMyPurple),
                          color: isClicked[1]
                              ? Color(0xFF50B964)
                              : Color(kMyPurple),
                        ),
                        title: Text(
                          progressText[0],
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isClicked[2] = true;
                        });

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ComingSoonScreen()),
                        );
                      },
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                        leading: Icon(
                          Icons.sports_gymnastics_rounded,
                          size: 50,
                          // color: Color(kMyPurple),
                          color: isClicked[2]
                              ? Color(0xFF50B964)
                              : Color(kMyPurple),
                        ),
                        title: Text(
                          progressText[1],
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isClicked[3] = true;
                        });

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ComingSoonScreen()),
                        );
                      },
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                        leading: Icon(
                          Icons.emoji_food_beverage_rounded,
                          size: 50,
                          // color: Color(kMyPurple),
                          color: isClicked[3]
                              ? Color(0xFF50B964)
                              : Color(kMyPurple),
                        ),
                        title: Text(
                          progressText[2],
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black12,
                      height: 10,
                      thickness: 2 / 3,
                      indent: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HRUPage extends StatefulWidget {
  const HRUPage({super.key});

  @override
  State<HRUPage> createState() => _HRUPageState();
}

class _HRUPageState extends State<HRUPage> {
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
                itemCount: moodsPath.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          chosen = [false, false, false, false, false];
                          chosen[index] = true;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: 70,
                        height: 70,
                        child: chosen[index] == false
                            ? ColorFiltered(
                                colorFilter: ColorFilter.matrix(<double>[
                                  0.2126,
                                  0.7152,
                                  0.0722,
                                  0,
                                  0,
                                  0.2126,
                                  0.7152,
                                  0.0722,
                                  0,
                                  0,
                                  0.2126,
                                  0.7152,
                                  0.0722,
                                  0,
                                  0,
                                  0,
                                  0,
                                  0,
                                  1,
                                  0,
                                ]),
                                child: Image.asset(
                                  moodsPath[index],
                                ),
                              )
                            : Image.asset(
                                moodsPath[index],
                              ),
                      ),
                    ),
                    // Icon(
                    //   Icons.tag_faces_rounded,
                    //   size: 80,
                    //   color: Colors.lightGreen,
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      moods[index],
                      style: TextStyle(color: moodsColor[index]),
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
                    margin: EdgeInsets.only(top: 20),
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
