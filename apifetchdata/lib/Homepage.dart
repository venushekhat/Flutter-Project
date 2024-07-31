// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'Modeals.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   Future<List<UserDetails>>? futureUserDetails;

//   @override
//   void initState() {
//     super.initState();
//     futureUserDetails = getData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<UserDetails>>(
//       future: futureUserDetails,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           List<UserDetails> userDetails = snapshot.data!;
//           return ListView.builder(
//             padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
//             itemCount: userDetails.length,
//             itemBuilder: (context, index) {
//               return Container(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
//                 margin: const EdgeInsets.only(bottom: 10),
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     getText(index, 'ID: ', userDetails[index].id.toString()),
//                     getText(
//                         index, 'Name: ', userDetails[index].name.toString()),
//                     getText(
//                         index, 'email: ', userDetails[index].email.toString()),
//                     getText(
//                         index, 'phone: ', userDetails[index].phone.toString()),
//                     getText(index, 'website: ',
//                         userDetails[index].website.toString()),
//                     getText(index, 'company: ',
//                         userDetails[index].company.toString()),
//                     getText(
//                         index, 'Name: ', userDetails[index].name.toString()),
//                     getText(index, 'Address: ',
//                         '${userDetails[index].address.suite},${userDetails[index].address.street},${userDetails[index].address.city},${userDetails[index].address.zipcode},')

//                     // Add more fields as needed
//                   ],
//                 ),
//               );
//             },
//           );
//         } else if (snapshot.hasError) {
//           return Center(child: Text('Error: ${snapshot.error}'));
//         } else {
//           return const Center(child: CircularProgressIndicator());
//         }
//       },
//     );
//   }

//   Text getText(int index, String fieldName, String content) {
//     return Text.rich(
//       TextSpan(
//         children: [
//           TextSpan(
//               text: '$fieldName: ',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               )),
//           TextSpan(text: content),
//         ],
//       ),
//       style: TextStyle(color: Colors.white, fontSize: 16),
//     );
//   }

//   Future<List<UserDetails>> getData() async {
//     final response =
//         await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

//     if (response.statusCode == 200) {
//       List<UserDetails> userDetails = [];
//       var data = jsonDecode(response.body.toString());

//       for (Map<String, dynamic> index in data) {
//         userDetails.add(UserDetails.fromJson(index));
//       }
//       return userDetails;
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }
// }

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'Modeals.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<List<UserDetails>>? futureUserDetails;

  @override
  void initState() {
    super.initState();
    futureUserDetails = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder<List<UserDetails>>(
        future: futureUserDetails,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<UserDetails> userDetails = snapshot.data!;
            return ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              itemCount: userDetails.length,
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getText(index, 'ID: ', userDetails[index].id.toString()),
                      getText(
                          index, 'Name: ', userDetails[index].name.toString()),
                      getText(index, 'Email: ',
                          userDetails[index].email.toString()),
                      getText(index, 'Phone: ',
                          userDetails[index].phone.toString()),
                      getText(index, 'Website: ',
                          userDetails[index].website.toString()),
                      getText(index, 'Company: ',
                          userDetails[index].company.toString()),
                      getText(
                          index, 'Name: ', userDetails[index].name.toString()),
                      getText(
                          index,
                          'Address: ',
                          '${userDetails[index].address.suite}, '
                              '${userDetails[index].address.street}, '
                              '${userDetails[index].address.city}, '
                              '${userDetails[index].address.zipcode},'),
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Text getText(int index, String fieldName, String content) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: '$fieldName: ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              )),
          TextSpan(text: content),
        ],
      ),
      style: TextStyle(color: Colors.white, fontSize: 16),
    );
  }

  Future<List<UserDetails>> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      List<UserDetails> userDetails = [];
      var data = jsonDecode(response.body.toString());

      for (Map<String, dynamic> index in data) {
        userDetails.add(UserDetails.fromJson(index));
      }
      return userDetails;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
