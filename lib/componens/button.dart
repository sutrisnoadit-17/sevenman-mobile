import 'package:flutter/material.dart';

class button extends StatefulWidget {
  @override
  State<button> createState() => _mybutton();
}

class _mybutton extends State<button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 375,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(color: Color.fromARGB(255, 52, 81, 255), blurRadius: 7),
      ]),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(9),
                    bottomRight: Radius.circular(9))),
            backgroundColor: const Color.fromARGB(255, 93, 116, 255),
            padding: EdgeInsets.all(5)),
        child: Container(
          child: const Text(
            "Status",
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class DelButton extends StatefulWidget {
  const DelButton({super.key});

  @override
  State<DelButton> createState() => _DelButtonState();
}

class _DelButtonState extends State<DelButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 375,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(color: Color.fromARGB(255, 52, 81, 255), blurRadius: 7),
      ]),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(9), topRight: Radius.circular(9))),
            backgroundColor: const Color.fromARGB(255, 93, 116, 255),
            padding: EdgeInsets.all(5)),
        child: Container(
          child: const Text(
            "Delete",
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
