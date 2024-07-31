import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({super.key});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    var names = ['Venu', 'Purvi', 'Drashti', 'Dhruvi', 'Naitri'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Custom ListTile'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(names[index]),
            subtitle: Text('Number'),
            trailing: Icon(Icons.add),
          );
        },
        itemCount: names.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 20,
            thickness: 2,
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CustomListTile(),
  ));
}
