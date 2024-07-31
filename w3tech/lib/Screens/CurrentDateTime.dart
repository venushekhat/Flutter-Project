import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Current extends StatefulWidget {
  const Current({super.key});

  @override
  State<Current> createState() => _CurrentState();
}

class _CurrentState extends State<Current> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 200,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('CurrentTime : ${DateFormat('jms').format(time)}'),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    time = DateTime.now();
                  });
                },
                child: Text("Currenttime"))
          ],
        ),
      ),
    );
  }
}
