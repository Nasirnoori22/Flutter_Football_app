import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:football_app/pages/news_page.dart';
import 'package:football_app/widgets/home_container_widget.dart';

import 'package:football_app/widgets/lates_new_widgets.dart';
import 'package:football_app/widgets/search_widget.dart';
import 'package:football_app/widgets/upcomming_match_widget.dart';

class FootballHome extends StatefulWidget {
  const FootballHome({Key? key}) : super(key: key);

  @override
  State<FootballHome> createState() => _FootballHomeState();
}

class _FootballHomeState extends State<FootballHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: OpenContainer(
        transitionDuration: const Duration(milliseconds: 1000),
        closedColor: Colors.transparent,
        openColor: Color(0xff201d2b),
        closedElevation: 4,
        openElevation: 4,
        closedBuilder: (context, action) => FloatingActionButton(
          backgroundColor: Color(0xff201d2b),
          onPressed: action,
          child: Icon(
            Icons.search,
            size: 30,
          ),
        ),
        openBuilder: (context, action) => SearchWidget(),
      ),
      backgroundColor: Color(0xff201d2b),
      appBar: AppBar(
        toolbarHeight: 80,
        actions: [
          SizedBox(
            width: 26,
          ),
          // IconButton(
          //   icon: Icon(
          //     Icons.search,
          //     size: 35,
          //     color: Color(0xff736a6e),
          //   ),
          //   onPressed: () {},
          // ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(
                Icons.notifications,
                size: 35,
                color: Color(0xff736a6e),
              ),
              onPressed: () {},
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Color(0xff201d2b),
        title: Text(
          'Discover',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            OpenContainer(
                closedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                closedColor: Color(0xff201d2b),
                openColor: Color(0xff201d2b),
                transitionDuration: const Duration(milliseconds: 500),
                transitionType: ContainerTransitionType.fadeThrough,
                closedBuilder: ((context, action) {
                  return HomeContainerWidget();
                }),
                openBuilder: (context, action) {
                  return NewsPage();
                }),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 10, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Teams',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff8789a1)),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 100,
                margin: EdgeInsets.only(left: 20, top: 30),
                child: PopularTeamWidget(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Matches',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff8789a1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 190,
                margin: EdgeInsets.only(left: 20, top: 10),
                child: UpCommingMatchWidget(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 20, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Teams',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff8789a1)),
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
