import 'package:flutter/material.dart';

class Listviewcomponent extends StatefulWidget {
  const Listviewcomponent({super.key});

  @override
  State<Listviewcomponent> createState() => _ListviewcomponentState();
}

class _ListviewcomponentState extends State<Listviewcomponent> {
  @override
  Widget build(BuildContext context) {
    var names = ['Venu', 'purvi', 'Drashti', 'dhruvi', 'naitri'];
    return Scaffold(
      appBar: AppBar(
        title: Text("Listviewcomponent"),
        centerTitle: true,
      ),
      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   reverse: true,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         child: Text(
      //           "One",
      //           style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         child: Text(
      //           "Two",
      //           style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         child: Text(
      //           "Three",
      //           style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         child: Text(
      //           "Four",
      //           style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         child: Text(
      //           "Five",
      //           style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         child: Text(
      //           "Six",
      //           style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         child: Text(
      //           "Seven",
      //           style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Text(
            names[index],
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
          );
        },
        itemCount: names.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 100,
            thickness: 2,
          );
        },
      ),
    );
  }
}
