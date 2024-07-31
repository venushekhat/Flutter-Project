import 'package:firebase/forget.dart';
import 'package:firebase/singup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  // singIn() async {
  //   await FirebaseAuth.instance
  //       .signInWithEmailAndPassword(email.text, password: password.text);
  // }
  singIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.text,
      password: password.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(hintText: 'enter email'),
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(hintText: 'enter password'),
            ),
            ElevatedButton(onPressed: (() => singIn()), child: Text("login")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: (() => Get.to(Singup())),
                child: Text("RagisterNow")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: (() => Get.to(forget())),
                child: Text("Forget Password?"))
          ],
        ),
      ),
    );
  }
}
