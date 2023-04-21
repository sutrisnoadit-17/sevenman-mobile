import 'package:flutter/material.dart';
import 'package:project1/componens/formcontainer.dart';
import 'package:project1/componens/formpasswor.dart';
import 'package:project1/main.dart';
import 'package:quickalert/quickalert.dart';

class Erormessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50,
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          CekLogin(context);
        },
        child: Container(
          child: Text(
            "MASUK",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ),
    );
  }
}

void CekLogin(BuildContext context) {
  final String myUser = '2022123';
  final String mypass = '12345678';

  if (formlogin() == myUser && formppassword() == mypass) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => lamdepan(),
        ));
  } else {
    showalert(context);
  }
}

void showalert(BuildContext context) {
  QuickAlert.show(
      context: context,
      text: "Cek kembali password dan Username anda",
      type: QuickAlertType.error);
}
