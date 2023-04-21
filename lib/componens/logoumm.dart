import 'dart:async';

import 'package:flutter/material.dart';

class logoumm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      width: 200,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/sevenman.png"),
        ),
      ),
    );
  }
}
