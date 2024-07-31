import 'package:flutter/material.dart';

class stack extends StatefulWidget {
  const stack({super.key});

  @override
  State<stack> createState() => _stackState();
}

class _stackState extends State<stack> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Color.fromARGB(255, 30, 106, 237),
              ),
              Positioned(
                  left: 21,
                  top: 21,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: const Color.fromARGB(255, 151, 191, 224),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
