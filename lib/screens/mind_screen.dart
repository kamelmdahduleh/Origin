// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';

//Packages

//Pages
import 'package:smpa_e_health/constants.dart';

//
class listRow {
  String? listTitle;
  double? listReview;
  String? listDuration;
  Color? listImage;
  listRow({this.listTitle, this.listReview, this.listDuration, this.listImage});
}

List<String> listTitle = [
  "Mindfulness for Releasing Anxiety",
  "Deep Healing",
  "Decrease Anxiery & Increase Peace",
  "Relieving Anxiety - Feeling Grounded",
];
List<double> listRating = [
  4.5,
  4.9,
  4.8,
  4.5,
];
List<String> listDuration = [
  "10 min",
  "23 min",
  "12 min",
  "17 min",
];
List<String> listImagePath = [
  "images/smpa_mind_pics/mindPic1.jpg",
  "images/smpa_mind_pics/mindPic2.jpg",
  "images/smpa_mind_pics/mindPic3.jpg",
  "images/smpa_mind_pics/mindPic4.jpg",
];
List RowList = [
  listRow(
    listTitle: "Mindfulness for Releasing Anxiety",
    listReview: 4.5,
    listDuration: "10 min",
    listImage: Color(kMyPurple),
  ),
  listRow(
    listTitle: "Mindfulness for Releasing Anxiety",
    listReview: 4.5,
    listDuration: "10 min",
    listImage: Color(kMyPurple),
  ),
  listRow(
    listTitle: "Mindfulness for Releasing Anxiety",
    listReview: 4.5,
    listDuration: "10 min",
    listImage: Color(kMyPurple),
  ),
  listRow(
    listTitle: "Mindfulness for Releasing Anxiety",
    listReview: 4.5,
    listDuration: "10 min",
    listImage: Color(kMyPurple),
  ),
  listRow(
    listTitle: "Mindfulness for Releasing Anxiety",
    listReview: 4.5,
    listDuration: "10 min",
    listImage: Color(kMyPurple),
  ),
];

class MindScreen extends StatelessWidget {
  const MindScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Colors.blue,
            alignment: Alignment.centerLeft,
            child: Text(
              'Top Rated Meditations',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Container(
            // color: Colors.brown,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            alignment: Alignment.centerLeft,
            child: AspectRatio(
              aspectRatio: 4 / 5,
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.centerRight, child: Text('See All')),
                  ListView.builder(
                    itemExtent: 100.0,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listTitle[index],
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      listRating[index].toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
                                    ),
                                    Text(
                                      listDuration[index],
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: FractionallySizedBox(
                                  widthFactor: 1,
                                  child: Container(
                                    height: 70,
                                    // width: 100,
                                    // color: Colors.red,
                                    child: FittedBox(
                                      fit: BoxFit.cover,
                                      child: Image.asset(listImagePath[index]),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
