import 'package:flutter/material.dart';
import 'package:meadiaquery/Screen/login/desk.dart' as d;
import 'package:meadiaquery/Screen/login/app.dart' as m;
import 'package:meadiaquery/Utils/helpers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return getWidget(context, d.Destop(), m.Mobile());
        },
      ),
    );
  }
}
