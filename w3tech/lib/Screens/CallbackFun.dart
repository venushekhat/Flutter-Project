import 'package:flutter/material.dart';

class callback extends StatefulWidget {
  const callback({super.key});

  @override
  State<callback> createState() => _callbackState();
}

class _callbackState extends State<callback> {
  callfun() {
    print("iam clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          onPressed: () {
            callfun();
          },
          child: Text("Clickme!")),
    );
  }
}
