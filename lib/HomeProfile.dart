import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project3/componens/FontNColor.dart';
import 'package:project3/AboutApp.dart';
import 'package:project3/loginpage.dart';
import 'package:project3/models/login.dart';
import 'package:project3/help&support.dart';

void fetchData() {}

class TamProfil extends StatefulWidget {
  const TamProfil({super.key});

  @override
  State<TamProfil> createState() => _TamProfilState();
}

class _TamProfilState extends State<TamProfil> {
  httpLoginReq profileResp = httpLoginReq();

  @override
  Widget build(BuildContext context) {
    var roundedRectangleBorder =
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15));
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(23, 0, 23, 0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Profile",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25.5,
            ),
            SizedBox(
              height: 90,
              width: 90,
              child: CircleAvatar(
                backgroundImage: NetworkImage(httpLoginReq.urlImg),
                backgroundColor: ButBiru,
              ),
            ),
            SizedBox(height: 10),
            Text(httpLoginReq.name),
            Text(httpLoginReq.nim),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextButton(
                style: ButtonStyle(
                    // backgroundColor: ProBox,

                    ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.history),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Text(
                      "History",
                      style: TextStyle(color: fcolor),
                    )),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextButton(
                style: ButtonStyle(
                    // backgroundColor: ProBox,

                    ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => help(),
                      ));
                },
                child: Row(
                  children: [
                    Icon(Icons.help_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Text(
                      "Bantuan & Dukungan",
                      style: TextStyle(color: fcolor),
                    )),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextButton(
                style: ButtonStyle(
                    // backgroundColor: ProBox,

                    ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TApp(),
                      ));
                },
                child: Row(
                  children: [
                    Icon(Icons.info_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Text(
                      "Tentang App",
                      style: TextStyle(color: fcolor),
                    )),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextButton(
                style: ButtonStyle(
                    // backgroundColor: ProBox,

                    ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginForm(),
                      ));
                },
                child: Row(
                  children: [
                    Icon(Icons.output_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Text(
                      "Log Out",
                      style: TextStyle(color: fcolor),
                    )),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text("Copyright 2023")
          ],
        ),
      ),
    );
  }
}
