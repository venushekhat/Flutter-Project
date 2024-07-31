// import 'dart:convert';

// import 'package:apistart/model.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http; // Import http package correctly

// class homepage extends StatefulWidget {
//   const homepage({Key? key}) : super(key: key); // Correct constructor syntax

//   @override
//   State<homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<homepage> {
//   List<SamplePosts> SamplePosts = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: getData(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                 itemCount: SamplePosts.length,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     height: 130,
//                     // color: const Color.fromARGB(255, 237, 225, 182),
//                     color: Colors.pink[200],
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 10, horizontal: 10),
//                     margin: const EdgeInsets.all(10),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'User id: ${SamplePosts[index].userid}',
//                           style: TextStyle(fontSize: 18),
//                         ),
//                         Text(
//                           'Id: ${SamplePosts[index].id}',
//                           style: TextStyle(fontSize: 18),
//                         ),
//                         Text(
//                           'Title: ${SamplePosts[index].title}',
//                           maxLines: 1,
//                           style: TextStyle(fontSize: 18),
//                         ),
//                         Text(
//                           'Body: ${SamplePosts[index].body}',
//                           maxLines: 1,
//                           style: TextStyle(fontSize: 18),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               );
//             } else {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           }),
//     );
//   }

//   Future<List<SamplePosts>> getData() async {
//     final response =
//         await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//     var data = jsonDecode(response.body.toString());

//     if (response.statusCode == 200) {
//       for (Map index in data) {
//         SamplePosts.add(SamplePosts.fromJson(index));
//       }
//       return SamplePosts;
//     } else {
//       return SamplePosts;
//     }
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:apistart/model.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key); // Correct constructor syntax

  @override
  State<homepage> createState() => _HomepageState();
}

class _HomepageState extends State<homepage> {
  Future<List<SamplePosts>>? _samplePostsFuture;

  @override
  void initState() {
    super.initState();
    _samplePostsFuture = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<SamplePosts>>(
        future: _samplePostsFuture,
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
            final samplePosts = snapshot.data!;
            return ListView.builder(
              itemCount: samplePosts.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 130,
                  color: Colors.pink[200],
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'User id: ${samplePosts[index].userId}',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Id: ${samplePosts[index].id}',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Title: ${samplePosts[index].title}',
                        maxLines: 1,
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Body: ${samplePosts[index].body}',
                        maxLines: 1,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
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

  Future<List<SamplePosts>> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());

    List<SamplePosts> samplePostsList = [];
    if (response.statusCode == 200) {
      for (Map<String, dynamic> item in data) {
        samplePostsList.add(SamplePosts.fromJson(item));
      }
    }
    return samplePostsList;
  }
}
