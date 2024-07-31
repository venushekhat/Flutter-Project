import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class forget extends StatefulWidget {
  const forget({super.key});

  @override
  State<forget> createState() => _forgetState();
}

class _forgetState extends State<forget> {
  TextEditingController email = TextEditingController();
  // TextEditingController password = TextEditingController();

  reset() async {
    await FirebaseAuth.instance.sendPasswordResetEmail(
      email: email.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(hintText: 'enter email'),
            ),
            ElevatedButton(onPressed: ((reset())), child: Text("Sendlink "))
          ],
        ),
      ),
    );
  }
}
