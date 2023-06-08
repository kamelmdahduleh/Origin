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
                onPressed: () {},
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
                    height: 30,
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
                        width: 10,
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

class FoodQuestionaireForm extends StatelessWidget {
  const FoodQuestionaireForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
