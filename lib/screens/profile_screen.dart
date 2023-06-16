import 'package:flutter/material.dart';
import 'package:smpa_e_health/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyList(),
    );
  }
}

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  final List<String> titlesList = [
    ('MEDICAL HISTORY'),
    ('TEST RESULTS'),
    ('IMMUNIZATION PLAN'),
    ('FAMILY RECORD'),
  ];

  final titleStyle = const TextStyle(fontSize: 18, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: titlesList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MedicalHistory();
                  },
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image(
                    image: AssetImage(
                      'images/profile_screen_images/image_$index.png',
                    ),
                    height: 150,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      titlesList[index],
                      style: titleStyle,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class MedicalHistory extends StatelessWidget {
  MedicalHistory({super.key});

  final List<String> medicalHistoryList = [
    'Visits',
    'Diagnoses',
    'Meditations',
    'Treatment Plans',
    'Allergies'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Color(kMyPurple),
              ),
            ),
            const Text(
              'Back',
              style: TextStyle(
                fontSize: 18,
                color: Color(kMyPurple),
              ),
            )
          ],
        ),
        title: const Text(
          'Medical History',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: medicalHistoryList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(
                  medicalHistoryList[index],
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFF9E9E9E),
                  size: 20,
                ),
              ),
              const Divider(
                thickness: 2,
                color: Color(kMyGrey),
              )
            ],
          );
        },
      ),
    );
  }
}
