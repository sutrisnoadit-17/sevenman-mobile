//import 'dart:html';

import 'package:flutter/material.dart';

class lupasandi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implemeant build
    return SizedBox(
      height: 30,
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () {},
        child: Text(
          'Lupa kata Sandi?',
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
      ),
      /*child: GestureDetector(
        onTap: () {},
        child: Text(
          "Lupa Kata Sandi?",
          style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.black,
              fontSize: 12),
        ),
      ),*/
    );
  }
}
