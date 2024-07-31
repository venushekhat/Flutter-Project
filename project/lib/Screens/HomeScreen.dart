import 'package:flutter/material.dart';
import 'package:project/Screens/SingInone.dart';
import 'package:project/Screens/Singupone.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
              height: 270,
              width: 500,
              child: Center(child: Image.asset("assets/Layer 2.png")),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Text(
                "Let's You In",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w600),
              ),
            ),

            // Container(
            //   height: 50,
            //   padding: EdgeInsets.symmetric(horizontal: 10.0),
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       color: Colors.white, // White border color
            //       width: 2.0, // Border width
            //     ),
            //     borderRadius:
            //         BorderRadius.circular(8.0), // Optional: border radius
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
              child: Container(
                margin: EdgeInsets.only(top: 23),
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Color(0xFF1b263b), // Dark blue color

                  borderRadius:
                      BorderRadius.circular(8.0), // Optional: border radius
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 33, vertical: 7),
                  child: Row(
                    children: [
                      // Example: Adding an image
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              60), // Adjust the radius to make it perfectly round
                          child: Image.asset(
                            'assets/g2.jpg',
                            width: 33, // Adjust width and height as needed
                            height: 33,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Spacer between image and text

                      // Example: Adding text
                      Text(
                        'Continue With Google',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(width: 10), // Spacer between text and text field
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
              child: Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Color(0xFF1b263b), // Dark blue color
                  borderRadius:
                      BorderRadius.circular(8.0), // Optional: border radius
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                  child: Row(
                    children: [
                      // Example: Adding an image
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              50), // Adjust the radius to make it perfectly round
                          child: Image.asset(
                            'assets/fb.png',
                            width: 40, // Adjust width and height as needed
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(width: 10), // Spacer between image and text

                      // Example: Adding text
                      Text(
                        'Continue With Facebook',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(width: 10), // Spacer between text and text field
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
              child: Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Color(0xFF1b263b), // Dark blue color

                  borderRadius:
                      BorderRadius.circular(8.0), // Optional: border radius
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 7),
                  child: Row(
                    children: [
                      // Example: Adding an image
                      Center(
                        child: CircleAvatar(
                          radius: 15, // Adjust the radius as needed
                          child: ClipOval(
                            child: Image.asset(
                              'assets/apple.png',
                              width: 100, // Adjust width and height as needed
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 10), // Spacer between image and text

                      // Example: Adding text
                      Text(
                        'Continue With Apple',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(width: 10), // Spacer between text and text field
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      // First half divider
                      Expanded(
                        child: Divider(
                          color: Colors.grey[600],
                          thickness: 1,
                        ),
                      ),
                      // Space for the text
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      // Second half divider
                      Expanded(
                        child: Divider(
                          color: Colors.grey[600],
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),

            Container(
              height: 48,
              width: 325,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the next screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sinone()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff01b763)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // No rounded corners
                    ),
                  ),
                ),
                child: Text(
                  "Sing In With Phone Number",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 60),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Don't Have Account ?",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => sone()),
                          );
                        },
                        child: Text(
                          "Sing Up",
                          style: TextStyle(
                              color: Color(0xff01b763),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
