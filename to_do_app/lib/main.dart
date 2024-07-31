import 'package:flutter/material.dart';
import 'package:to_do_app/Screens/Home_Page.dart';

void main() {
  runApp(MyApp()); // Correct class name here
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
