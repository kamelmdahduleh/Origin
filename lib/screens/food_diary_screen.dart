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

class _FoodDiaryListState extends State<FoodDiaryList> {
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
            const Image(
                image:
                    AssetImage('images/food_diary_screen_images/image_0.png')),
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
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Image(
                          image: AssetImage(
                              'images/food_diary_screen_images/image_1.png'),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Image(
                          image: AssetImage(
                              'images/food_diary_screen_images/image_2.png'),
                        ),
                      )
                    ],
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

class FoodQuestionnaireForm extends StatelessWidget {
  FoodQuestionnaireForm({super.key});

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
        leading: TextButton(
          child: const Text(
            'Cancel',
            style: TextStyle(fontSize: 17),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            child: const Text(
              'Submit',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
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
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text(
                      'No',
                      style: TextStyle(fontSize: 18),
                    ),
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
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
