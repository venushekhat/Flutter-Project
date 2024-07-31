import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/Screens/Singuptwo.dart';

class sone extends StatefulWidget {
  const sone({super.key});

  @override
  State<sone> createState() => _soneState();
}

class _soneState extends State<sone> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0d1b2a),
        body: Padding(
          padding: const EdgeInsets.only(top: 25, left: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Welcome to",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "ElectroSpot",
                    style: TextStyle(color: Colors.green, fontSize: 24),
                  ),
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                "Let's get you set up. Please provide the following information to create your account.",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 100, // Adjust according to your needs
                height: 100, // Adjust according to your needs
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue, // Border color
                    width: 4.0, // Border width
                  ),
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/Ellipse 2.png",
                      height: 200,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20), // Add some space between elements
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "Enter Full Name",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 20),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFF1b263b), // Dark blue color
                        borderRadius: BorderRadius.circular(
                            8.0), // Optional: border radius
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                          hintStyle: TextStyle(color: Colors.white54),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "Enter Mobile Number",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 20),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFF1b263b), // Dark blue color
                        borderRadius: BorderRadius.circular(
                            8.0), // Optional: border radius
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                          hintStyle: TextStyle(color: Colors.white54),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  //new start
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "Select Your Gender",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 20),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFF1b263b), // Dark blue color
                        borderRadius: BorderRadius.circular(
                            8.0), // Optional: border radius
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                          ),
                          Expanded(
                            child: DropdownButtonFormField<String>(
                              dropdownColor: Color(
                                  0xFF1b263b), // Dropdown menu background color
                              iconEnabledColor:
                                  Colors.white, // Dropdown icon color
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                // hintText: 'Select Gender',
                                hintStyle: TextStyle(
                                  color: Colors.white54,
                                ),
                              ),
                              items: <String>['Male', 'Female', 'Other']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                // Handle dropdown value change
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //new end
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Container(
                height: 48,
                width: 325,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the next screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => stwo()),
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
                      "Continue",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
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
                          "Already Have Account ?",
                          style: TextStyle(color: Colors.white, fontSize: 14),
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
                            "Sing In",
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
      ),
    );
  }
}
