import 'package:flutter/material.dart';
import 'package:project/Screens/Introone.dart';
import 'package:project/Screens/Introtwo.dart';

class SwipeScreens extends StatefulWidget {
  @override
  _SwipeScreensState createState() => _SwipeScreensState();
}

class _SwipeScreensState extends State<SwipeScreens> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onPageChanged(int page) {
    // Handle page change logic here
    print('Current Page: $page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          FirstScreen(),
          SecoundScreen(),
        ],
      ),
    );
  }
}
