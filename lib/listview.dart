import 'package:flutter/material.dart';
import 'package:project3/componens/button.dart';

class schedule extends StatefulWidget {
  @override
  State<schedule> createState() => _myschedule();
}

class _myschedule extends State<schedule> {
  get style => null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.grey[300]),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 2),
              alignment: Alignment.centerLeft,
              width: 150,
              height: 50,
              child: Text('Dashboard', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),

            Column(
              children: [
                Container(
                  width: 375,
                  height: 150,
                  padding: EdgeInsets.fromLTRB(7, 6, 9, 8),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(color: Colors.black54, blurRadius: 5)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 93, 116, 255),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black54, blurRadius: 6)
                                    ],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(9),
                                        bottomRight: Radius.circular(9))),
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(1, 0, 7, 19),
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  'Item Name : Example \nLent Date : example\nDue Date: example',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Column(
                          children: <Widget>[button()],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 375,
                  height: 150,
                  padding: EdgeInsets.fromLTRB(7, 6, 9, 8),
                  margin: EdgeInsets.fromLTRB(20, 1, 20, 1),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(color: Colors.black54, blurRadius: 5)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 93, 116, 255),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black54, blurRadius: 6)
                                    ],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(9),
                                        bottomRight: Radius.circular(9))),
                                child: Center(
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(1, 0, 7, 19),
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  'Item Name : Example \nLent Date : example\nDue Date: example',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Column(
                          children: <Widget>[button()],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 375,
                  height: 150,
                  padding: EdgeInsets.fromLTRB(7, 6, 9, 8),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(color: Colors.black54, blurRadius: 5)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 93, 116, 255),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black54, blurRadius: 6)
                                    ],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(9),
                                        bottomRight: Radius.circular(9))),
                                child: Center(
                                  child: Text(
                                    '3',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(1, 0, 7, 19),
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  'Item Name : Example \nLent Date : example\nDue Date: example',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Column(
                          children: <Widget>[button()],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 375,
                  height: 150,
                  padding: EdgeInsets.fromLTRB(7, 6, 9, 8),
                  margin: EdgeInsets.fromLTRB(20, 1, 20, 1),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(color: Colors.black54, blurRadius: 5)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 93, 116, 255),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black54, blurRadius: 6)
                                    ],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(9),
                                        bottomRight: Radius.circular(9))),
                                child: Center(
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(1, 0, 7, 19),
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  'Item Name : Example \nLent Date : example\nDue Date: example',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Column(
                          children: <Widget>[button()],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
