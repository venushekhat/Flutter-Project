import 'package:flutter/material.dart';
import 'package:w3tech/Screens/CardWidget.dart';
import 'package:w3tech/Screens/CircleAvatar.dart';
import 'package:w3tech/Screens/CurrentDateTime.dart';
import 'package:w3tech/Screens/Expand.dart';
import 'package:w3tech/Screens/GridView.dart';
import 'package:w3tech/Screens/ListViewComponent.dart';
import 'package:w3tech/Screens/ListViewTile.dart';
import 'package:w3tech/Screens/MarginPadding.dart';
import 'package:w3tech/Screens/RichText.dart';
import 'package:w3tech/Screens/Singelchildscrollview.dart';
import 'package:w3tech/Screens/Stackwidget.dart';
import 'package:w3tech/Screens/inkwell.dart';
import 'Screens/Decoration.dart';
import 'Screens/CallbackFun.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: rich(),
    );
  }
}
