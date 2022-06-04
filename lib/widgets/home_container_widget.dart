import 'package:flutter/material.dart';

class HomeContainerWidget extends StatelessWidget {
  const HomeContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient:
              LinearGradient(colors: [Color(0xff443e76), Color(0xff0d0d69)]),
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
                    margin: EdgeInsets.only(top: 20, left: 0, right: 40),
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
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
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
                        style: TextStyle(fontSize: 21, color: Colors.white),
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
    );
  }
}
