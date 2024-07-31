import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 246, 237, 103),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PopupMenuButton<int>(
              icon: Icon(
                Icons.menu,
                size: 32,
                color: Colors.black, // Icon color
              ),
              offset: Offset(0, 50), // Adjust position of the menu
              itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
                PopupMenuItem<int>(
                  value: 1,
                  child: ListTile(
                    leading: Icon(Icons.inbox, color: Colors.white),
                    title:
                        Text('Primary', style: TextStyle(color: Colors.white)),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: ListTile(
                    leading: Icon(Icons.people, color: Colors.white),
                    title:
                        Text('Social', style: TextStyle(color: Colors.white)),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 3,
                  child: ListTile(
                    leading: Icon(Icons.local_offer, color: Colors.white),
                    title: Text('Promotions',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 4,
                  child: ListTile(
                    leading: Icon(Icons.star, color: Colors.white),
                    title:
                        Text('Starred', style: TextStyle(color: Colors.white)),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 5,
                  child: ListTile(
                    leading: Icon(Icons.label, color: Colors.white),
                    title:
                        Text('Labels', style: TextStyle(color: Colors.white)),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 6,
                  child: ListTile(
                    leading: Icon(Icons.settings, color: Colors.white),
                    title:
                        Text('Settings', style: TextStyle(color: Colors.white)),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 7,
                  child: ListTile(
                    leading: Icon(Icons.help, color: Colors.white),
                    title: Text('Help', style: TextStyle(color: Colors.white)),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 8,
                  child: ListTile(
                    leading: Icon(Icons.feedback, color: Colors.white),
                    title: Text('Send Feedback',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 9,
                  child: ListTile(
                    leading: Icon(Icons.report, color: Colors.white),
                    title:
                        Text('Report', style: TextStyle(color: Colors.white)),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 10,
                  child: ListTile(
                    leading: Icon(Icons.logout, color: Colors.white),
                    title:
                        Text('Logout', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
              onSelected: (value) {
                // Handle menu item selection
                switch (value) {
                  case 1:
                    // Handle Primary inbox selection
                    break;
                  case 2:
                    // Handle Social inbox selection
                    break;
                  case 3:
                    // Handle Promotions inbox selection
                    break;
                  case 4:
                    // Handle Starred selection
                    break;
                  case 5:
                    // Handle Labels selection
                    break;
                  case 6:
                    // Handle Settings selection
                    break;
                  case 7:
                    // Handle Help selection
                    break;
                  case 8:
                    // Handle Send Feedback selection
                    break;
                  case 9:
                    // Handle Report selection
                    break;
                  case 10:
                    // Handle Logout selection
                    break;
                }
              },
              color: Colors.black, // Background color of the popup menu
            ),
            Container(
              height: 70,
              width: 90,
              child: Image.asset("assets/yellow_logo.png"),
            ),
          ],
        ),
        actions: [
          // Add other actions as needed
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Container(
                height: 600, // Adjust height as needed
                child: ToDoList(),
              ),
              SizedBox(height: 20),
              Text("Hello, World!"), // Replace with your actual content
            ],
          ),
        ),
      ),
    );
  }
}

class ToDoList extends StatefulWidget {
  ToDoList({super.key});

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
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

  final List<bool> checked = List<bool>.filled(10, false);

  void _deleteItem(int index) {
    setState(() {
      myList.removeAt(index);
      checked.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myList.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: ListTile(
            onTap: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            tileColor: Colors.black,
            leading: IconButton(
              icon: Icon(
                checked[index]
                    ? Icons.check_box
                    : Icons.check_box_outline_blank,
                color: Colors.indigo,
              ),
              onPressed: () {
                setState(() {
                  checked[index] = !checked[index];
                });
              },
            ),
            title: Text(
              myList[index],
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            trailing: GestureDetector(
              onTap: () {
                _deleteItem(index); // Call _deleteItem method with index
              },
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(Icons.delete, color: Colors.white, size: 20),
              ),
            ),
          ),
        );
      },
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
