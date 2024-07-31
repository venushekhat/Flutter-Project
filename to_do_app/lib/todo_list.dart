// import 'package:flutter/material.dart';

// class ToDolist extends StatelessWidget {
//   ToDolist({super.key});

//   List<String> myList = [
//     'value1',
//     'value2',
//     'value3',
//     'value4',
//     'value5',
//     'value6',
//     'value7',
//     'value8',
//     'value9',
//     'value10',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       child: ListTile(
//         onTap: () {},
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         tileColor: Colors.black,
//         leading: Icon(
//           Icons.check_box,
//           color: Colors.indigo,
//         ),
//         // title: Container(
//         //   child: Text(
//         //     "Check mail",
//         //     style: TextStyle(fontSize: 16),
//         //   ),
//         // ),

//         trailing: Container(
//           height: 35,
//           width: 35,
//           decoration: BoxDecoration(
//               color: Colors.red, borderRadius: BorderRadius.circular(5)),
//           child: IconButton(
//             onPressed: () {},
//             color: Colors.white,
//             iconSize: 20,
//             icon: Icon(Icons.delete),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  ToDoList({super.key});

  final List<String> myList = [
    'value1',
    'value2',
    'value3',
    'value4',
    'value5',
    'value6',
    'value7',
    'value8',
    'value9',
    'value10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                onTap: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                tileColor: Colors.black,
                leading: Icon(
                  Icons.check_box,
                  color: Colors.indigo,
                ),
                title: Text(
                  myList[index],
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                trailing: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)),
                  child: IconButton(
                    onPressed: () {
                      // Add your delete logic here
                    },
                    color: Colors.white,
                    iconSize: 20,
                    icon: Icon(Icons.delete),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ToDoList(),
  ));
}
