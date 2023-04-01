import 'package:flutter/material.dart';
import 'package:admin_mobile_sevenman/halamanUtama.dart';
import 'package:admin_mobile_sevenman/LoginForm.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Mobile SeVenMan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginForm(),
    );
  }
}
