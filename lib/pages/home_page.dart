import 'package:flutter/material.dart';

import 'package:football_app/widgets/lates_new_widgets.dart';
import 'package:football_app/widgets/upcomming_match_widget.dart';

class FootballHome extends StatelessWidget {
  const FootballHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff201d2b),
      appBar: AppBar(
        toolbarHeight: 80,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 35,
              color: Color(0xff736a6e),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              size: 35,
              color: Color(0xff736a6e),
            ),
            onPressed: () {},
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
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 20, right: 20, bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [Color(0xff443e76), Color(0xff0d0d69)]),
                ),
                height: MediaQuery.of(context).size.height * 0.2 + 50,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        children: [
                          Container(
                            height: 30,
                            width: 115,
                            margin:
                                EdgeInsets.only(top: 20, left: 0, right: 40),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    Icons.sports_soccer_sharp,
                                    color: Color(0xff443e76),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Text('Football',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              margin: EdgeInsets.only(left: 20, top: 20),
                              child: Text(
                                'Zidan and Real\nMadrid: where it\nwent wrong and\nwhats next',
                                style: TextStyle(
                                    fontSize: 21, color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 40, top: 15),
                            child: Text('Tomorrow,6pm',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -30),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: Image.asset(
                          'images/football.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
