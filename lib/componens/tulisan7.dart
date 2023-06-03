import 'package:flutter/material.dart';

class tulisan extends StatelessWidget {
  const tulisan({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 175, 1),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.5),
      ),
      child: SizedBox(
        width: 200,
        height: 80,
        child: Image.asset(
          "assets/ac2.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
