import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:project3/componens/FontNColor.dart';

void main() {
  runApp(help());
}

class help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            backgroundColor: bgColor,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text('Bantuan Dan Dukungan',
                style: TextStyle(
                  fontSize: 20,
                  color: fcolor,
                )),
            centerTitle: true,
            elevation: 0,
          ),
          body: Padding(
            padding: EdgeInsets.only(top: 100),
            child: ContactUs(
              textColor: fcolor,
              cardColor: Colors.white,
              companyColor: Colors.black,
              taglineColor: Colors.black,
              logo: AssetImage('assets/Image.png'),
              email: 'uvuvwevwevd@gmail.com',
              companyName: 'SevenMan Mobile',
              phoneNumber: '+62123456789',
              dividerThickness: 2,
              website: 'https://bukan-web.xyz/',
            ),
          )),
    );
  }
}
