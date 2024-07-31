import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class sinone extends StatefulWidget {
  const sinone({super.key});

  @override
  State<sinone> createState() => _sinoneState();
}

class _sinoneState extends State<sinone> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFF0d1b2a),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25, right: 300),
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 135),
              child: Text(
                "Add Your Vehicle",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20),
              child: Text(
                "Let's get you set up. Please provide the followinginformation to Add your vehicle.",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            //mobile number start

            Container(
              margin: EdgeInsets.only(top: 30, right: 137),
              child: Text(
                "Enter Mobile Number",
                style: TextStyle(fontSize: 18, color: Colors.grey[300]),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Color(0xFF1b263b), // Dark blue color
                  borderRadius:
                      BorderRadius.circular(8.0), // Optional: border radius
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    hintStyle: TextStyle(color: Colors.white54),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            //mobile number end
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "I agree to the",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    child: Text(
                      "Terms of Service",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.green,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.green,
                        decorationThickness: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    child: Text(
                      "and",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    child: Text(
                      "Privacy Privacy",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.green,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.green,
                        decorationThickness: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 360,
            ),
            Container(
              height: 48,
              width: 325,
              child: Padding(
                padding: EdgeInsets.only(right: 5.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the next screen
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => stwo()),
                    // );
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
                    "Continue",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),

            //start

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
                        "Already Have Account ?",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: InkWell(
                        // onTap: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (context) => sone()),
                        //   );
                        // },
                        child: Text(
                          "Sing In",
                          style: TextStyle(
                              color: Color(0xff01b763),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
            //end
          ],
        ),
      ),
    ));
  }
}
