// import 'package:flutter/material.dart';

// class Destop extends StatefulWidget {
//   const Destop({super.key});

//   @override
//   _MobileState createState() => _MobileState();
// }

// class _MobileState extends State<Destop> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   bool _passwordVisible = false;
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background image
//           Container(
//             color: Colors.amber,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: NetworkImage(
//                     'https://img.freepik.com/free-photo/plain-smooth-green-wall-texture_53876-129746.jpg'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           // Foreground content with a white container for the login form
//           Center(
//             child: Container(
//               width: 400,
//               height: 470,
//               padding: EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 239, 228, 228),
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 10,
//                     offset: Offset(0, 5),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   SizedBox(height: 40),
//                   Container(
//                     child: Text(
//                       "Login_Page",
//                       style: TextStyle(color: Colors.black, fontSize: 38),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Form(
//                     key: _formKey,
//                     child: Column(
//                       children: [
//                         TextFormField(
//                           controller: _usernameController,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(),
//                             labelText: 'Enter Your Username',
//                             labelStyle: TextStyle(color: Colors.black),
//                             suffixIcon: Icon(Icons.person, color: Colors.black),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black),
//                             ),
//                           ),
//                           validator: (value) {
//                             if (value == null || value.isEmpty) {
//                               return 'Please enter your username';
//                             }
//                             return null;
//                           },
//                         ),
//                         const SizedBox(height: 30),
//                         TextFormField(
//                           controller: _passwordController,
//                           obscureText: !_passwordVisible,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(),
//                             labelText: 'Enter Your Password',
//                             labelStyle: TextStyle(color: Colors.black),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black),
//                             ),
//                             suffixIcon: IconButton(
//                               icon: Icon(
//                                 _passwordVisible
//                                     ? Icons.visibility
//                                     : Icons.visibility_off,
//                                 color: Colors.black,
//                               ),
//                               onPressed: () {
//                                 setState(() {
//                                   _passwordVisible = !_passwordVisible;
//                                 });
//                               },
//                             ),
//                           ),
//                           validator: (value) {
//                             if (value == null || value.isEmpty) {
//                               return 'Please enter your password';
//                             }
//                             return null;
//                           },
//                         ),
//                         const SizedBox(height: 50),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             ElevatedButton(
//                               onPressed: () {
//                                 if (_formKey.currentState!.validate()) {
//                                   // Show dialog with login details
//                                   showDialog(
//                                     context: context,
//                                     builder: (BuildContext context) {
//                                       return AlertDialog(
//                                         title: Text('Login Successful'),
//                                         content: SingleChildScrollView(
//                                           child: ListBody(
//                                             children: <Widget>[
//                                               Text(
//                                                   'Username: ${_usernameController.text}'),
//                                               Text(
//                                                   'Password: ${_passwordController.text}'),
//                                             ],
//                                           ),
//                                         ),
//                                         actions: <Widget>[
//                                           TextButton(
//                                             child: Text('OK'),
//                                             onPressed: () {
//                                               Navigator.of(context).pop();
//                                             },
//                                           ),
//                                         ],
//                                       );
//                                     },
//                                   );
//                                 }
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.black,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(4),
//                                 ),
//                               ),
//                               child: const SizedBox(
//                                 height: 45,
//                                 width: 100,
//                                 child: Center(
//                                   child: Text(
//                                     'Login',
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 20),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(width: 30),
//                             ElevatedButton(
//                               onPressed: () {
//                                 if (_formKey.currentState!.validate()) {
//                                   // Show dialog with sign-up details
//                                   showDialog(
//                                     context: context,
//                                     builder: (BuildContext context) {
//                                       return AlertDialog(
//                                         title: Text('Sign Up Successful'),
//                                         content: SingleChildScrollView(
//                                           child: ListBody(
//                                             children: <Widget>[
//                                               Text(
//                                                   'Username: ${_usernameController.text}'),
//                                               Text(
//                                                   'Password: ${_passwordController.text}'),
//                                             ],
//                                           ),
//                                         ),
//                                         actions: <Widget>[
//                                           TextButton(
//                                             child: Text('OK'),
//                                             onPressed: () {
//                                               Navigator.of(context).pop();
//                                             },
//                                           ),
//                                         ],
//                                       );
//                                     },
//                                   );
//                                 }
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.black,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(4),
//                                 ),
//                               ),
//                               child: const SizedBox(
//                                 height: 45,
//                                 width: 100,
//                                 child: Center(
//                                   child: Text(
//                                     'Sign up',
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 20),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: Destop(),
//   ));
// }
import 'package:flutter/material.dart';

class Destop extends StatefulWidget {
  const Destop({super.key});

  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Destop> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSumXE-TqP_5yz2LFC-NqCJCk8Llp_sNOtQYbtyOMu8YLoeDFNWIddtcHQHngZLMDZiN38&usqp=CAU'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground content with a white container for the login form
          Center(
            child: Container(
              width: 400,
              height: 470,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 239, 228, 228),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 40),
                  Text(
                    "Login_Page",
                    style: TextStyle(color: Colors.black, fontSize: 38),
                  ),
                  SizedBox(height: 40),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Your Username',
                            labelStyle: TextStyle(color: Colors.black),
                            suffixIcon: Icon(Icons.person, color: Colors.black),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your username';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Your Password',
                            labelStyle: TextStyle(color: Colors.black),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Show dialog with login details
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Login Successful'),
                                        content: SingleChildScrollView(
                                          child: ListBody(
                                            children: <Widget>[
                                              Text(
                                                  'Username: ${_usernameController.text}'),
                                              Text(
                                                  'Password: ${_passwordController.text}'),
                                            ],
                                          ),
                                        ),
                                        actions: <Widget>[
                                          TextButton(
                                            child: Text('OK'),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              child: const SizedBox(
                                height: 45,
                                width: 100,
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Show dialog with sign-up details
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Sign Up Successful'),
                                        content: SingleChildScrollView(
                                          child: ListBody(
                                            children: <Widget>[
                                              Text(
                                                  'Username: ${_usernameController.text}'),
                                              Text(
                                                  'Password: ${_passwordController.text}'),
                                            ],
                                          ),
                                        ),
                                        actions: <Widget>[
                                          TextButton(
                                            child: Text('OK'),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              child: const SizedBox(
                                height: 45,
                                width: 100,
                                child: Center(
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Destop(),
  ));
}
