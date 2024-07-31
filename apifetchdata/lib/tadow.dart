// import 'dart:convert';
// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// // Import your model
// import 'package:apifetchdata/tadowmodel.dart';

// class SecondApi extends StatefulWidget {
//   const SecondApi({super.key});

//   @override
//   State<SecondApi> createState() => _SecondApiState();
// }

// class _SecondApiState extends State<SecondApi> {
//   Future<List<UserDetails>>? futureDetails;

//   @override
//   void initState() {
//     super.initState();
//     futureDetails = getData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('API Data'),
//       ),
//       body: FutureBuilder<List<UserDetails>>(
//         future: futureDetails,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (snapshot.hasError) {
//             return Center(
//               child: Text('Error: ${snapshot.error}'),
//             );
//           } else if (snapshot.hasData) {
//             var userDetails = snapshot.data!;
//             return ListView.builder(
//               padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//               itemCount: userDetails.length,
//               itemBuilder: (context, index) {
//                 var userDetail = userDetails[index];
//                 return Container(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                   height: 230,
//                   margin: EdgeInsets.only(bottom: 10),
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.all(Radius.circular(10)),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: getNew(userDetail),
//                   ),
//                 );
//               },
//             );
//           } else {
//             return Center(
//               child: Text('No data available'),
//             );
//           }
//         },
//       ),
//     );
//   }

//   List<Widget> getNew(UserDetails userDetail) {
//     return [
//       Text.rich(
//         TextSpan(
//           children: [
//             TextSpan(
//                 text: 'User ID: ${userDetail.userId}\n',
//                 style: TextStyle(fontSize: 18)),
//             TextSpan(
//                 text: 'ID: ${userDetail.id}\n', style: TextStyle(fontSize: 20)),
//             TextSpan(
//                 text: 'Title: ${userDetail.title}\n',
//                 style: TextStyle(fontSize: 18)),
//             TextSpan(
//                 text: 'Completed: ${userDetail.completed}\n',
//                 style: TextStyle(fontSize: 18)),
//           ],
//         ),
//         style: TextStyle(color: Colors.white),
//       ),
//     ];
//   }

//   Future<List<UserDetails>> getData() async {
//     final response =
//         await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

//     if (response.statusCode == 200) {
//       List<UserDetails> userDetails = [];
//       var data = jsonDecode(response.body);

//       for (var index in data) {
//         userDetails.add(UserDetails.fromJson(index));
//       }

//       return userDetails;
//     } else {
//       throw Exception('Failed to load data.');
//     }
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http; // Import the http package

// Import your model
import 'package:apifetchdata/tadowmodel.dart';

class SecondApi extends StatefulWidget {
  const SecondApi({super.key});

  @override
  State<SecondApi> createState() => _SecondApiState();
}

class _SecondApiState extends State<SecondApi> {
  Future<List<UserDetails>>? futureDetails;

  @override
  void initState() {
    super.initState();
    futureDetails = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Data'),
      ),
      body: FutureBuilder<List<UserDetails>>(
        future: futureDetails,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            var userDetails = snapshot.data!;
            return ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              itemCount: userDetails.length,
              itemBuilder: (context, index) {
                var userDetail = userDetails[index];
                return Container(
                  padding: const EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: getNew(userDetail),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: Text('No data available'),
            );
          }
        },
      ),
    );
  }

  List<Widget> getNew(UserDetails userDetail) {
    return [
      Text(
        'User ID: ${userDetail.userId}\n'
        'ID: ${userDetail.id}\n'
        'Title: ${userDetail.title}\n'
        'Completed: ${userDetail.completed}\n',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ];
  }

  Future<List<UserDetails>> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    if (response.statusCode == 200) {
      List<UserDetails> userDetails = [];
      var data = jsonDecode(response.body);

      for (var index in data) {
        userDetails.add(UserDetails.fromJson(index));
      }

      return userDetails;
    } else {
      throw Exception('Failed to load data.');
    }
  }
}
