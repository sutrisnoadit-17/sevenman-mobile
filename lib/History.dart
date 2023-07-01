import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project3/HisItTol.dart';
import 'package:project3/HisLab.dart';
import 'package:project3/componens/FontNColor.dart';

class Phistory extends StatefulWidget {
  const Phistory({super.key});

  @override
  State<Phistory> createState() => _PhistoryState();
}

class _PhistoryState extends State<Phistory> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: bgColor,
            elevation: 0,
            title: Text('Loan History',
                style: TextStyle(fontSize: 20, color: fcolor)),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Item & Tool',
                ),
                Tab(
                  text: 'Laboratory',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Hsint(),
              Hlab(),
            ],
          ),
        ),
      ),
    );
  }
}
