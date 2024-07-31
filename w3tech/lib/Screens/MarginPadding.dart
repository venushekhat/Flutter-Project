import 'package:flutter/material.dart';

class marginpadding extends StatefulWidget {
  const marginpadding({super.key});

  @override
  State<marginpadding> createState() => _marginpaddingState();
}

class _marginpaddingState extends State<marginpadding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MarginPadding"),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(90),
            child: Text(
              "Hello World",
              style: TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}
