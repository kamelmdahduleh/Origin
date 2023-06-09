// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, unused_local_variable

import 'dart:math' as math;

// Package
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:fl_chart/fl_chart.dart';
// Pages
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:smpa_e_health/constants.dart';
import 'package:smpa_e_health/main.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

bool isVisible = false;

int visit = 0;
const List<TabItem> items = [
  TabItem(
    icon: Icons.home_rounded,
    title: 'Home',
  ),
  TabItem(
    icon: Icons.tag_faces_outlined,
    title: 'Mind',
  ),
  TabItem(
    icon: Icons.monitor_heart_rounded,
    title: 'Health',
  ),
  TabItem(
    icon: Icons.scale_rounded,
    title: 'Food Diary',
  ),
  TabItem(
    icon: Icons.account_box,
    title: 'profile',
  ),
];
List<String> healthTitles = [
  "Exercising",
  "Heart Rate",
  "Calories",
  "Sleep",
  "Blood Pressure",
  "Temperature"
];
List<Icon> healthIcons = [
  Icon(
    Icons.directions_run_rounded,
    size: 40,
    color: Colors.deepPurple,
  ),
  Icon(
    Icons.monitor_heart_rounded,
    size: 40,
    color: Colors.deepPurple,
  ),
  Icon(
    MdiIcons.fire,
    size: 40,
    color: Colors.deepPurple,
  ),
  Icon(
    Icons.nightlight_round_sharp,
    size: 40,
    color: Colors.deepPurple,
  ),
  Icon(
    MdiIcons.heartPulse,
    size: 40,
    color: Colors.deepPurple,
  ),
  Icon(
    Icons.device_thermostat_outlined,
    size: 40,
    color: Colors.deepPurple,
  ),
];

class HealthScreen extends StatefulWidget {
  final String id = 'health_screen';

  const HealthScreen({super.key});

  @override
  State<HealthScreen> createState() => HealthScreenState();
}

class HealthScreenState extends State<HealthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        //Bottom Navigation Bar still in development
        // bottomNavigationBar: Container(
        //   child: BottomBarDefault(
        //     animated: true,
        //     items: items,
        //     backgroundColor: Colors.white,
        //     color: Colors.grey,
        //     colorSelected: Colors.deepPurple,
        //     indexSelected: visit,
        //     paddingVertical: 5,
        //     onTap: (int index) => setState(
        //       () {
        //         visit = index;
        //       },
        //     ),
        //   ),
        // ),

        //Work Above ...
        // drawer: Drawer(),
        // appBar: AppBar(
        //   elevation: 0,
        //   iconTheme: IconThemeData(color: Color(kMyPurple)),
        //   backgroundColor: Colors.white,
        //   title: Center(
        //     child: Text(
        //       'Health',
        //       style: TextStyle(color: Colors.black),
        //     ),
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 5 / 2,
                child: Container(
                  // color: Colors.red[200],
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Visibility(
                              visible: isVisible,
                              child: Text('Connecting...',
                                  style:
                                      Theme.of(context).textTheme.labelLarge),
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          color: Color.fromARGB(118, 237, 231, 246),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Text(
                                'Apple Watch',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black87,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  isVisible = true;
                                });
                              },
                            ),
                            Transform.rotate(
                              angle: 180 * math.pi / 120,
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                size: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ComingSoonScreen()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            color: Colors.deepPurple[50],
                          ),
                          height: 50,
                          width: double.infinity,
                          child: Center(
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Text(
                                'Connect a New Device',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19,
                                    color: Colors.deepPurple[600]),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Health',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 10),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 10,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              healthTitles[index] == 'Sleep'
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SleepPage()),
                                    )
                                  : Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ComingSoonScreen()),
                                    );
                            },
                            child: Container(
                              // color: Colors.deepPurple[100],
                              child: ListTile(
                                leading: healthIcons[index],
                                title: Text(
                                  healthTitles[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xFF9E9E9E),
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ComingSoonScreen()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color: Color(0xFF443A82),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Text(
                            'Health Risk Assessment',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final dynamic x;
  final dynamic y;
}

class ChartSampleData {
  String x;
  double y;
  ChartSampleData({required this.x, required this.y});
}

class SleepPage extends StatefulWidget {
  const SleepPage({super.key});

  @override
  State<SleepPage> createState() => _SleepPageState();
}

class _SleepPageState extends State<SleepPage> {
  @override
  Widget build(BuildContext context) {
    List<ChartSampleData> chartData = <ChartSampleData>[
      ChartSampleData(x: '1', y: 1700),
      ChartSampleData(x: '2', y: 1650),
      ChartSampleData(x: '3', y: 1710),
      ChartSampleData(x: '4', y: 1670),
      ChartSampleData(x: '5', y: 1500),
      ChartSampleData(x: '6', y: 1510),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
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
          'Sleep',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 40,
              ),
              child: SfCartesianChart(
                title: ChartTitle(
                  text: 'Cal in vs. Out',
                  textStyle: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color(kMyPurple),
                primaryXAxis: CategoryAxis(
                  isVisible: false,
                ),
                series: <CartesianSeries>[
                  ColumnSeries<ChartSampleData, String>(
                    color: Colors.white24,
                    width: 0.3,
                    dataSource: chartData,
                    xValueMapper: (ChartSampleData data, _) => data.x,
                    yValueMapper: (ChartSampleData data, _) => data.y,
                  ),
                ],
                primaryYAxis: NumericAxis(
                  axisLine: AxisLine(color: Color(kMyPurple)),
                  labelStyle: TextStyle(color: Colors.white),
                  interval: 750,
                  maximum: 2250,
                ),
              ),
            ),
            Transform.flip(
              flipY: true,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: SfSparkWinLossChart(
                  data: <double>[12, 15, -10, 13, 15, 6, -12, 17, 13, 8, -10],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
