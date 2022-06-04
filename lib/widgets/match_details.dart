import 'package:flutter/material.dart';

class MatchDetailswidget extends StatelessWidget {
  const MatchDetailswidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Image.asset('images/benzema.jpeg'),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3 + 30,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black,
                        ]),
                  ),
                ),
                Positioned(
                  top: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.sports_baseball_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 0),
                                child: Text(
                                  'UEFA Champions League',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 70,
                                child: Image.asset(
                                  'images/barca.png',
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                'vs',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Container(
                                height: 70,
                                child: Image.asset(
                                  'images/1.png',
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 30),
                            child: Text('Tomorrow 04:00 PM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 40,
                          right: MediaQuery.of(context).size.width * 0.6),
                      child: Text('Match Votting',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 30,
                                width: 70,
                                margin: EdgeInsets.only(
                                    top: 20, left: 20, right: 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 15, right: 5),
                                  child: Text(
                                    'Voting',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 214, 209, 209)),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20, top: 20),
                                child: Text('21 hr ago',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 20, left: 0, right: 60),
                            child: Text(
                              'How will the main time end?',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 20, left: 0, right: 10),
                            child: Text(
                              'Evaluate the chances of winning both teams\nand see the results of the match',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 165, 160, 160),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromARGB(255, 91, 173, 240),
                                ),
                                margin: EdgeInsets.only(
                                    top: 25, left: 25, right: 0),
                                height: 70,
                                width: 180,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Image.asset(
                                        'images/barca.png',
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Text(
                                        'Barca',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Transform.translate(
                                offset: Offset(-10, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xff8789a1),
                                  ),
                                  margin: EdgeInsets.only(
                                      top: 25, left: 0, right: 0),
                                  height: 70,
                                  width: 170,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 20, left: 80),
                                    child: Text('60%',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue.shade200,
                                ),
                                margin: EdgeInsets.only(
                                    top: 10, left: 25, right: 0),
                                height: 70,
                                width: 50,
                              ),
                              Transform.translate(
                                offset: Offset(-10, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xff8789a1),
                                  ),
                                  margin: EdgeInsets.only(
                                      top: 10, left: 0, right: 0),
                                  height: 70,
                                  width: 300,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 20, left: 80),
                                    child: Text('X',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromARGB(255, 91, 173, 240),
                                ),
                                margin: EdgeInsets.only(
                                    top: 10, left: 25, right: 0),
                                height: 70,
                                width: 180,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Image.asset(
                                        'images/1.png',
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Text(
                                        'PSG',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Transform.translate(
                                offset: Offset(-10, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xff8789a1),
                                  ),
                                  margin: EdgeInsets.only(
                                      top: 10, left: 0, right: 0),
                                  height: 70,
                                  width: 170,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 20, left: 80),
                                    child: Text('60%',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 25),
                                child: Text(
                                  '1000 votes',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 149, 144, 144),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 130,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.heart_broken,
                                    color: Color.fromARGB(255, 149, 144, 144),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.comment,
                                    color: Color.fromARGB(255, 149, 144, 144),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.send,
                                    color: Color.fromARGB(255, 149, 144, 144),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff211f26),
                      ),
                      margin: EdgeInsets.only(top: 20),
                      height: MediaQuery.of(context).size.height * 0.5 + 40,
                      width: MediaQuery.of(context).size.width * 0.9 + 20,
                    )
                  ],
                ),
                width: double.infinity,
                color: Colors.black,
                height: MediaQuery.of(context).size.height * 0.6 + 60),
          ],
        ),
      ),
    );
  }
}
