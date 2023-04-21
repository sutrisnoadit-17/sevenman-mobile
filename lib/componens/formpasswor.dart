//import 'dart:html';
import 'package:flutter/material.dart';

class formppassword extends StatelessWidget {
  bool _securetext = true;
  formppassword();
  TextEditingController cPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(6),
      child: Center(
        child: TextFormField(
          obscureText: true,
          controller: cPass,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 2.0, color: Colors.black),
            ),
            hintText: "Masukkan Sandi",
          ),
        ),
      ),
    );
  }
}
