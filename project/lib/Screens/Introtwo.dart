import 'package:flutter/material.dart';
import 'package:project/Screens/Introone.dart';
import 'HomeScreen.dart';

class SecoundScreen extends StatefulWidget {
  const SecoundScreen({Key? key}) : super(key: key);

  @override
  State<SecoundScreen> createState() => _SecoundScreenState();
}

class _SecoundScreenState extends State<SecoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0d1b2a),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              child: Image.asset("assets/t3.png"),
              height: 285,
              width: 430,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "Reserve Your Spot",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                textAlign: TextAlign.start, // Align text to the start (left)
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 12, vertical: 3), // Add padding to the container
              child: Text(
                "Ensure a hassle-free charging experience by reservingyour spot in advance. Choose from available time slotsand confirm your booking in just a few taps. You willreceive a confirmation notification with all the details.Remember, early reservations can save you time andguarantee a spot when you need it most.",
                style: TextStyle(
                  color: Color(0xFF9cb8c9),
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.start, // Center align the text
              ),
            ),
            SizedBox(
              height: 110,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 6,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 74, 134, 199),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 6,
                    width: 43,
                    decoration: BoxDecoration(
                      color: Color(0xff01b763),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Divider(
              color: Colors.grey,
              thickness: 1, // You can adjust the thickness as needed
            ),
            SizedBox(
              height: 20,
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
                            Color.fromARGB(255, 25, 50, 76)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // No rounded corners
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
                    width: 5,
                  ),
                  Container(
                    height: 45,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to the next screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => homepage()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff01b763)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // No rounded corners
                          ),
                        ),
                      ),
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
