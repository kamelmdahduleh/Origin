// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';

//Packages

//Pages
import 'package:smpa_e_health/constants.dart';
//

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
                                      "Textttt",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      "4.7",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
                                    ),
                                    Text(
                                      '22 min',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Expanded(
                                  child: Container(
                                    height: 70,
                                    color: Colors.amber,
                                    child: Text('data'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // ListTile(
                          //   contentPadding: EdgeInsets.all(0),
                          //   visualDensity: VisualDensity.compact,
                          //   dense: true,
                          //   isThreeLine: true,
                          //   titleTextStyle:
                          //       Theme.of(context).textTheme.headlineLarge,
                          //   title: Text(
                          //     "Textttt",
                          //     style: TextStyle(fontSize: 15),
                          //   ),
                          //   subtitle: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       Text(
                          //         "4.7",
                          //         style: Theme.of(context).textTheme.labelSmall,
                          //       ),
                          //       Text(
                          //         '22 min',
                          //         style: Theme.of(context).textTheme.labelSmall,
                          //       ),
                          //     ],
                          //   ),
                          //   trailing: Container(
                          //     height: double.infinity,
                          //     width: 100,
                          //     color: Colors.amber,
                          //     // child: AspectRatio(
                          //     //   aspectRatio: 2,
                          //     // ),
                          //   ),
                          // ),
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
