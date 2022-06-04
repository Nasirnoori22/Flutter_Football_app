import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:football_app/widgets/match_details.dart';

class UpCommingMatchWidget extends StatelessWidget {
  const UpCommingMatchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff264ed3),
          ),
          child: OpenContainer(
            closedColor: Color(0xff201d2b),
            openColor: Color(0xff201d2b),
            transitionDuration: const Duration(milliseconds: 500),
            transitionType: ContainerTransitionType.fadeThrough,
            closedBuilder: ((context, action) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff264ed3),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 130,
                      margin: EdgeInsets.only(top: 20, left: 0, right: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8.0, left: 15, right: 5),
                        child: Text(
                          'Newcomp Field',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff657ede)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 0),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            child: Image.asset(
                              'images/barca.png',
                            ),
                          ),
                          Container(
                            height: 50,
                            child: Image.asset(
                              'images/1.png',
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'FC BAR',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Vs',
                      style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'FC PSG',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                width: 150.0,
                height: 120.0,
              );
            }),
            openBuilder: (context, action) {
              return Container(
                child: MatchDetailswidget(),
                // child: Column(
                //   children: [
                //     Container(
                //       height: 30,
                //       width: 130,
                //       margin: EdgeInsets.only(top: 20, left: 0, right: 0),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20),
                //         color: Colors.white,
                //       ),
                //       child: Padding(
                //         padding:
                //             const EdgeInsets.only(top: 8.0, left: 15, right: 5),
                //         child: Text(
                //           'Newcomp Field',
                //           style: TextStyle(
                //               fontSize: 13,
                //               fontWeight: FontWeight.bold,
                //               color: Color(0xff657ede)),
                //         ),
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(top: 20.0, left: 0),
                //       child: Row(
                //         children: [
                //           Container(
                //             height: 45,
                //             child: Image.asset(
                //               'images/barca.png',
                //             ),
                //           ),
                //           Container(
                //             height: 50,
                //             child: Image.asset(
                //               'images/1.png',
                //             ),
                //           )
                //         ],
                //       ),
                //     ),
                //     SizedBox(
                //       height: 10,
                //     ),
                //     Text(
                //       'FC BAR',
                //       style: TextStyle(
                //           fontSize: 13,
                //           fontWeight: FontWeight.bold,
                //           color: Colors.white),
                //     ),
                //     Text(
                //       'Vs',
                //       style: TextStyle(
                //           fontSize: 9,
                //           fontWeight: FontWeight.bold,
                //           color: Colors.white),
                //     ),
                //     Text(
                //       'FC PSG',
                //       style: TextStyle(
                //           fontSize: 13,
                //           fontWeight: FontWeight.bold,
                //           color: Colors.white),
                //     ),
                //   ],
                // ),
                width: 150.0,
                height: 120.0,
              );
            },
          ),
          width: 150.0,
          height: 120.0,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff264ed3),
          ),
          child: OpenContainer(
            openColor: Colors.red,
            closedColor: Color(0xff201d2b),
            transitionDuration: const Duration(milliseconds: 500),
            transitionType: ContainerTransitionType.fadeThrough,
            closedBuilder: ((context, action) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff264ed3),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 130,
                      margin: EdgeInsets.only(top: 20, left: 0, right: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8.0, left: 15, right: 5),
                        child: Text(
                          'Newcomp Field',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff657ede)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 0),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            child: Image.asset(
                              'images/barca.png',
                            ),
                          ),
                          Container(
                            height: 50,
                            child: Image.asset(
                              'images/1.png',
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'FC BAR',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Vs',
                      style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'FC PSG',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                width: 150.0,
                height: 120.0,
              );
            }),
            openBuilder: (context, action) {
              return Container(
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 130,
                      margin: EdgeInsets.only(top: 20, left: 0, right: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8.0, left: 15, right: 5),
                        child: Text(
                          'Newcomp Field',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff657ede)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 0),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            child: Image.asset(
                              'images/barca.png',
                            ),
                          ),
                          Container(
                            height: 50,
                            child: Image.asset(
                              'images/1.png',
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'FC BAR',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Vs',
                      style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'FC PSG',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                width: 150.0,
                height: 120.0,
              );
            },
          ),
          width: 150.0,
          height: 120.0,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff264ed3),
          ),
          child: OpenContainer(
            openColor: Colors.red,
            closedColor: Color(0xff201d2b),
            transitionDuration: const Duration(milliseconds: 500),
            transitionType: ContainerTransitionType.fadeThrough,
            closedBuilder: ((context, action) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff264ed3),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 130,
                      margin: EdgeInsets.only(top: 20, left: 0, right: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8.0, left: 15, right: 5),
                        child: Text(
                          'Newcomp Field',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff657ede)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 0),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            child: Image.asset(
                              'images/barca.png',
                            ),
                          ),
                          Container(
                            height: 50,
                            child: Image.asset(
                              'images/1.png',
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'FC BAR',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Vs',
                      style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'FC PSG',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                width: 150.0,
                height: 120.0,
              );
            }),
            openBuilder: (context, action) {
              return Container(
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 130,
                      margin: EdgeInsets.only(top: 20, left: 0, right: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8.0, left: 15, right: 5),
                        child: Text(
                          'Newcomp Field',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff657ede)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 0),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            child: Image.asset(
                              'images/barca.png',
                            ),
                          ),
                          Container(
                            height: 50,
                            child: Image.asset(
                              'images/1.png',
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'FC BAR',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Vs',
                      style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'FC PSG',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                width: 150.0,
                height: 120.0,
              );
            },
          ),
          width: 150.0,
          height: 120.0,
        ),
      ],
    );
  }
}
