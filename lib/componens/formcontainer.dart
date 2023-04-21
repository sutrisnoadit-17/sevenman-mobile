//import 'dart:html';

import 'package:flutter/material.dart';

class formlogin extends StatelessWidget {
  formlogin();
  TextEditingController cUser = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //SizedBox(
    //height: 30,
    //);
    // TODO: implement build
    return Container(
        padding: EdgeInsets.all(6),
        child: Center(
          child: TextField(
            controller: cUser,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2.0, color: Colors.black)),
                hintText: "Masukkan NIM"),
          ),
        ));
  }
}
