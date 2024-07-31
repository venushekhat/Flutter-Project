import 'package:flutter/material.dart';

class singel extends StatefulWidget {
  const singel({super.key});

  @override
  State<singel> createState() => _singelState();
}

class _singelState extends State<singel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SingleChildScrollView"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.orange,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(255, 118, 81, 227),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.grey,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                width: double.maxFinite,
                color: Color.fromARGB(255, 46, 181, 70),
              ),
              Container(
                height: 200,
                width: double.maxFinite,
                color: Color.fromARGB(255, 123, 0, 255),
              ),
              Container(
                height: 200,
                width: double.maxFinite,
                color: Colors.blue[100],
              ),
              Container(
                height: 200,
                width: double.maxFinite,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width: double.maxFinite,
                color: Colors.grey,
              ),
              Container(
                height: 200,
                width: double.maxFinite,
                color: Colors.yellow,
              ),
              Container(
                height: 200,
                width: double.maxFinite,
                color: Colors.green,
              ),
              Container(
                height: 200,
                width: double.maxFinite,
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
