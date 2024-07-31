import 'package:flutter/material.dart';
import 'package:project/Screens/HomeScreen.dart';
import 'package:project/Screens/Introtwo.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0d1b2a),
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 45,
              ),
              Container(
                child: Image.asset("assets/secoundimage.png"),
                height: 285,
                width: 430,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Text(
                "Charging Station Overview",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              )),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 3), // Add padding to the container
                child: Text(
                  "Welcome to our state-of-the-art charging station! Here, you can find all the essential information about our facilities, including available charging spots, charging speeds, and station amenities.",
                  style: TextStyle(
                    color: Color(0xFF9cb8c9),
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.start, // Center align the text
                ),
              ),
              SizedBox(
                height: 160,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 6,
                      width: 43,
                      decoration: BoxDecoration(
                        color: Color(0xff01b763),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 6,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 122, 178, 238),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1, // You can adjust the thickness as needed
              ),
              SizedBox(
                height: 26,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => homepage()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 32, 66, 102)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // No rounded corners
                            ),
                          ),
                        ),
                        child: Text(
                          "Skip",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 45,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to the next screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecoundScreen()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff01b763)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // No rounded corners
                            ),
                          ),
                        ),
                        child: Text(
                          "Next",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
