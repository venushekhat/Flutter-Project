import 'package:flutter/material.dart';

class stwo extends StatefulWidget {
  const stwo({super.key});

  @override
  State<stwo> createState() => _stwoState();
}

class _stwoState extends State<stwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0d1b2a),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 25, right: 280),
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 110),
                child: Text(
                  "Add Your Vehicle",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 30),
                child: Text(
                  "Let's get you set up. Please provide the followinginformation to Add your vehicle.",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 30,
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
              Container(
                margin: EdgeInsets.only(top: 10, right: 210),
                child: Text(
                  "Select Brand",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFF1b263b), // Dark blue color
                    borderRadius:
                        BorderRadius.circular(8.0), // Optional: border radius
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          dropdownColor: Color(
                              0xFF1b263b), // Dropdown menu background color
                          iconEnabledColor: Colors.white, // Dropdown icon color
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            // hintText: 'Select Gender',
                            hintStyle: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                          items: <String>[
                            'Hyundai',
                            'TOYOTA',
                            'Ford',
                            'Renault',
                            'Mahindra'
                          ].map((String value) {
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

              //2 start
              Container(
                margin: EdgeInsets.only(top: 10, right: 205),
                child: Text(
                  "Select Model",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFF1b263b), // Dark blue color
                    borderRadius:
                        BorderRadius.circular(8.0), // Optional: border radius
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          dropdownColor: Color(
                              0xFF1b263b), // Dropdown menu background color
                          iconEnabledColor: Colors.white, // Dropdown icon color
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            // hintText: 'Select Gender',
                            hintStyle: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                          items: <String>[
                            'Hyundai Creta	',
                            'Mahindra Scorpio	',
                            'Maruti Swift',
                            'Kia',
                            'Maruti Ertiga'
                          ].map((String value) {
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
              //2 end
// 3 start

              Container(
                margin: EdgeInsets.only(top: 10, right: 120),
                child: Text(
                  "Battery Capacity (KWh)",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFF1b263b), // Dark blue color
                    borderRadius:
                        BorderRadius.circular(8.0), // Optional: border radius
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          dropdownColor: Color(
                              0xFF1b263b), // Dropdown menu background color
                          iconEnabledColor: Colors.white, // Dropdown icon color
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            // hintText: 'Select Gender',
                            hintStyle: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                          items: <String>[
                            '140 kWh',
                            '131 kWh',
                            '128.9 kWher',
                            '128.9 kWh'
                          ].map((String value) {
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
// 3 end

//button start

              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 110.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 45,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => homepage()),
                            // );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 25, 50, 76)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // No rounded corners
                              ),
                            ),
                          ),
                          child: Text(
                            "Later",
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
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => homepage()),
                            // );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff01b763)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // No rounded corners
                              ),
                            ),
                          ),
                          child: Text(
                            "Add Vehicle",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
//button end
            ],
          ),
        ),
      ),
    );
  }
}
