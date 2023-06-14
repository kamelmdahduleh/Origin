// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smpa_e_health/constants.dart';

class FoodDiaryScreen extends StatelessWidget {
  const FoodDiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FoodDiaryList();
  }
}

class FoodDiaryList extends StatefulWidget {
  const FoodDiaryList({super.key});

  @override
  State<FoodDiaryList> createState() => _FoodDiaryListState();
}

class ChartSampleData {
  String x;

  double y;

  ChartSampleData({required this.x, required this.y});
}

class _FoodDiaryListState extends State<FoodDiaryList> {
  List<ChartSampleData> chartData = <ChartSampleData>[
    ChartSampleData(x: '1', y: 1700),
    ChartSampleData(x: '2', y: 1650),
    ChartSampleData(x: '3', y: 1710),
    ChartSampleData(x: '4', y: 1670),
    ChartSampleData(x: '5', y: 1500),
    ChartSampleData(x: '6', y: 1510),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                height: 50,
                minWidth: MediaQuery.of(context).size.width,
                elevation: 0,
                color: const Color(0xFFE9E8F0),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FoodQuestionnaireForm();
                  }));
                },
                child: const Text(
                  'Food Questionnaire',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(
                      0xFF665D99,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // const Image(
            //   image: AssetImage('images/food_diary_screen_images/image_0.png'),
            // ),
            Container(
              child: Image(
                  image: AssetImage(
                      'images/food_diary_screen_images/image_0.png')),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Are you burning more than you eat? \nLog your meals to compare your calories in vs calories out.',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Weight Progress\n4Kg to meet your goal!',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Color(kMyPurple)),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    minWidth: MediaQuery.of(context).size.width,
                    elevation: 0,
                    onPressed: () {},
                    child: const Text(
                      'View Weight Progress',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(
                          0xFF665D99,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Recipes',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AspectRatio(
                    aspectRatio: 3,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: AspectRatio(
                            aspectRatio: 3 / 2,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Image.asset(
                                'images/food_diary_screen_images/food_pic1.jpg',
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.transparent,
                          width: 10,
                        ),
                        Flexible(
                          flex: 1,
                          child: AspectRatio(
                            aspectRatio: 3 / 2,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Image.asset(
                                'images/food_diary_screen_images/food_pic2.jpg',
                              ),
                            ),
                          ),
                        ),
                        // FittedBox(
                        //   fit: BoxFit.fitHeight,
                        //   child: Image(
                        //     image: AssetImage(
                        //         'images/food_diary_screen_images/food_pic1.jpg'),
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: 5,
                        // ),
                        // FittedBox(
                        //   fit: BoxFit.fitHeight,
                        //   child: Image(
                        //     image: AssetImage(
                        //         'images/food_diary_screen_images/food_pic2.jpg'),
                        //   ),
                        // )
                        // Expanded(
                        //   child: Image(
                        //     image: AssetImage(
                        //         'images/food_diary_screen_images/food_pic1.jpg'),
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: 5,
                        // ),
                        // Expanded(
                        //   child: Image(
                        //     image: AssetImage(
                        //         'images/food_diary_screen_images/food_pic2.jpg'),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodQuestionnaireForm extends StatefulWidget {
  const FoodQuestionnaireForm({super.key});

  @override
  State<FoodQuestionnaireForm> createState() => _FoodQuestionnaireFormState();
}

class _FoodQuestionnaireFormState extends State<FoodQuestionnaireForm> {
  List<bool> checkedValueY = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<bool> checkedValueN = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  final List<String> questionnaireFormList = [
    "Do you eat less than 5 portions of fruit and vegetables a day?",
    "Do you eat fried food every day?",
    "Do you drink fizzy drinks every day?",
    "Do you eat fast food more than once a week?",
    "Do you eat more than 2 bars of chocolate a week?",
    "Do you ever skip a breakfast?",
    "Do you often eat after 6PM?"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Text(
            'Cancel',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color(kMyPurple),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          MaterialButton(
            padding: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              'Submit',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(kMyPurple),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        leadingWidth: 100,
        title: const Text('Form'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: questionnaireFormList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  questionnaireFormList[index],
                  style: const TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'Yes',
                      style: TextStyle(fontSize: 18),
                    ),
                    Checkbox(
                      value: checkedValueY[index],
                      onChanged: (value) {
                        setState(() {
                          checkedValueY[index] = !checkedValueY[index];
                          checkedValueN[index] = !checkedValueY[index];
                        });
                      },
                    ),
                    const Text(
                      'No',
                      style: TextStyle(fontSize: 18),
                    ),
                    Checkbox(
                      value: checkedValueN[index],
                      onChanged: (value) {
                        setState(() {
                          checkedValueN[index] = !checkedValueN[index];
                          checkedValueY[index] = !checkedValueN[index];
                        });
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
