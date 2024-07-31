import 'package:flutter/material.dart';

class Cardwidget extends StatefulWidget {
  const Cardwidget({super.key});

  @override
  State<Cardwidget> createState() => _CardwidgetState();
}

class _CardwidgetState extends State<Cardwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Card(
          shadowColor: Colors.orangeAccent,
          elevation: 6,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "Hello World!",
              style: TextStyle(fontSize: 32),
            ),
          ),
        ),
      ),
    );
  }
}
