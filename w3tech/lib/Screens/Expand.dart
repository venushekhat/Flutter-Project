import 'package:flutter/material.dart';

class expande extends StatefulWidget {
  const expande({super.key});

  @override
  State<expande> createState() => _expandeState();
}

class _expandeState extends State<expande> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
        centerTitle: true,
        backgroundColor: Colors.pink[200],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 200,
              width: 90,
              color: Colors.amberAccent,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 200,
              width: 70,
              color: Color.fromARGB(255, 47, 231, 87),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 200,
              width: 80,
              color: Color.fromARGB(255, 30, 140, 177),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 200,
              width: 50,
              color: Color.fromARGB(255, 237, 74, 202),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 200,
              width: 70,
              color: Color.fromARGB(255, 255, 64, 64),
            ),
          ),
        ],
      ),
    );
  }
}
