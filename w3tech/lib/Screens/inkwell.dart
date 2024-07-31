import 'package:flutter/material.dart';

class inkwell extends StatefulWidget {
  const inkwell({super.key});

  @override
  State<inkwell> createState() => _inkwellState();
}

class _inkwellState extends State<inkwell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print("Tapped on container");
          },
          onLongPress: () {
            print("Long pressed on container");
          },
          onDoubleTap: () {
            print("Double tapped on container");
          },
          child: Container(
            width: 500,
            height: 300,
            color: Colors.amber,
            child: Center(
                child: InkWell(
                    onTap: () {
                      print("text widget tapped!");
                    },
                    child: Text(
                      "click here",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ))),
          ),
        ),
      ),
    );
  }
}
