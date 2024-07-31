import 'dart:math';

import 'package:ecommarceapp/Screens/Homepage.dart';
import 'package:ecommarceapp/Screens/bottomnavigationbar.dart';
import 'package:ecommarceapp/Screens/login.dart';
import 'package:ecommarceapp/Screens/onboard.dart';
import 'package:ecommarceapp/Screens/singup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    print("firebase : ${Firebase.app().options.projectId}");
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Onboard(),
    );
  }
}
