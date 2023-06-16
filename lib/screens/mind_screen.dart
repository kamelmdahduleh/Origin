// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable
import 'package:flutter/material.dart';
import 'package:smpa_e_health/constants.dart';
//Packages
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

//Pages
import '../main.dart';

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
List<String> listVidDescription = [
  "This Mindfulness Meditation will help you to appreciate life in the present moment and release anxiety as you connect with your thoughts and feelings.",
  "This Deep Healing will help you to appreciate life in the present moment and release anxiety as you connect with your thoughts and feelings.",
  "This Decrease Anxiety & Increase Peace will help you to appreciate life in the present moment and release anxiety as you connect with your thoughts and feelings.",
  "This Relieving Anxiety - Feeling Grounded will help you to appreciate life in the present moment and release anxiety as you connect with your thoughts and feelings.",
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ComingSoonScreen()),
                            );
                          },
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Color(kMyPurple),
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    ListView.builder(
                      itemExtent: 100.0,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MindVideoScreen(
                                  vidTitle: listTitle[index],
                                  vidDuration: listDuration[index],
                                  vidDescription: listVidDescription[index],
                                  vidRating: listRating[index],
                                  vidUrl: listImagePath[index],
                                ),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        margin: EdgeInsets.all(5),
                                        height: 70,
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Image.asset(
                                            listImagePath[index],
                                          ),
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
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            Column(
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
          ],
        ),
      ),
    );
  }
}

class MindVideoScreen extends StatefulWidget {
  String vidTitle;
  String vidDuration;
  String vidDescription;
  double vidRating;
  String vidUrl;
  MindVideoScreen({
    super.key,
    required this.vidTitle,
    required this.vidDuration,
    required this.vidDescription,
    required this.vidRating,
    required this.vidUrl,
  });

  @override
  State<MindVideoScreen> createState() => _MindVideoScreenState();
}

class _MindVideoScreenState extends State<MindVideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        title: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            widget.vidTitle,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          SizedBox(
            width: 50,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                widget.vidTitle,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            AspectRatio(
              aspectRatio: (5 / 2) / 2,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Image.asset(widget.vidUrl),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                widget.vidDuration,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                widget.vidDescription,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                widget.vidRating.toString(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(kMyPurple),
                borderRadius: BorderRadius.circular(12),
              ),
              width: double.infinity,
              child: Center(
                  child: Text(
                'Play',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              )),
            )
          ],
        ),
      ),
    );
  }
}
