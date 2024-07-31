import 'package:flutter/material.dart';

class rich extends StatefulWidget {
  const rich({super.key});

  @override
  State<rich> createState() => _richState();
}

class _richState extends State<rich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 21,
              ),
              children: <TextSpan>[
                TextSpan(text: 'hello'),
                TextSpan(
                    text: 'world!!',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.purple,
                      fontWeight: FontWeight.w600,
                    )),
                TextSpan(text: "Welcome to"),
                TextSpan(text: 'flutter', style: TextStyle(color: Colors.pink))
              ]),
        ),
      ),
    );
  }
}
