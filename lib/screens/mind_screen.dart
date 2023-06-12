// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';

//Packages
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
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
  "images/smpa_mind_pics/mind_pic1.jpg",
  "images/smpa_mind_pics/mind_pic2.jpg",
  "images/smpa_mind_pics/mind_pic3.jpg",
  "images/smpa_mind_pics/mind_pic4.jpeg",
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

class MindScreen extends StatefulWidget {
  const MindScreen({super.key});

  @override
  State<MindScreen> createState() => _MindScreenState();
}

class _MindScreenState extends State<MindScreen> {
  late YoutubePlayerController youtubeController;
  @override
  void deactivate() {
    youtubeController.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    youtubeController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    youtubeController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(
            'https://www.youtube.com/embed/inpok4MKVLM')!,
        flags: YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: false,
        ));
  }

  @override
  Widget build(BuildContext context) {
    // YoutubePlayerController ytController = YoutubePlayerController(
    //   initialVideoId: 'iLnmTe5Q2Qw',
    //   // flags: YoutubePLayerFlags(
    //   // isLive: true,
    //   // ),
    // );

    return YoutubePlayerBuilder(
      player: YoutubePlayer(controller: youtubeController),
      builder: (context, player) => SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              // color: Colors.blue,
              alignment: Alignment.centerLeft,
              child: Text(
                'Top Rated Meditations',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            Container(
              // color: Colors.brown,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              alignment: Alignment.centerLeft,
              child: AspectRatio(
                aspectRatio: 4 / 5,
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerRight,
                        child: Text('See All')),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        child:
                                            Image.asset(listImagePath[index]),
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
            AspectRatio(
              aspectRatio: 3 / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 10),
                    child: Text(
                      'Recommended For You',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  YoutubePlayer(
                    controller: youtubeController,
                    showVideoProgressIndicator: true,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
