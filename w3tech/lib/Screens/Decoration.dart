import 'package:flutter/material.dart';

class DecorationBox extends StatefulWidget {
  const DecorationBox({super.key});

  @override
  State<DecorationBox> createState() => _DecorationBoxState();
}

class _DecorationBoxState extends State<DecorationBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amber,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              // borderRadius: BorderRadius.all(
              //   Radius.circular(21),
              // ),
              border: Border.all(width: 6, color: Colors.white12),
              boxShadow: [
                BoxShadow(
                  blurRadius: 21,
                  color: Colors.pink,
                  spreadRadius: 7,
                )
              ],
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DecorationBox(),
  ));
}
