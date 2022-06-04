import 'package:flutter/material.dart';

class PopularTeamWidget extends StatelessWidget {
  const PopularTeamWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff41393b),
          ),
          child: Container(
            child: Container(
              child: Image.asset(
                'images/barca.png',
              ),
            ),
          ),
          width: 100.0,
          height: 120.0,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff41393b),
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Image.asset(
                  'images/1.png',
                ),
              ),
            ),
          ),
          width: 100.0,
          height: 120.0,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff41393b),
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Image.asset(
                  'images/2.png',
                ),
              ),
            ),
          ),
          width: 100.0,
          height: 120.0,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff41393b),
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Image.asset(
                  'images/3.png',
                ),
              ),
            ),
          ),
          width: 100.0,
          height: 120.0,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff41393b),
          ),
          child: Container(
            child: Container(
              child: Image.asset(
                'images/barca.png',
              ),
            ),
          ),
          width: 100.0,
          height: 120.0,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff41393b),
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Image.asset(
                  'images/1.png',
                ),
              ),
            ),
          ),
          width: 100.0,
          height: 120.0,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff41393b),
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Image.asset(
                  'images/2.png',
                ),
              ),
            ),
          ),
          width: 100.0,
          height: 120.0,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff41393b),
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Image.asset(
                  'images/3.png',
                ),
              ),
            ),
          ),
          width: 100.0,
          height: 120.0,
        ),
      ],
    );
  }
}
