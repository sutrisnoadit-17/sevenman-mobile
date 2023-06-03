import 'package:flutter/material.dart';

class logobaru extends StatelessWidget {
  const logobaru({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 30, 320, 1),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.5),
      ),
      child: Center(
        // logoumm1CqN (2:132)
        child: SizedBox(
          width: 50,
          height: 50,
          child: Image.asset(
            "assets/Logo_umm.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
