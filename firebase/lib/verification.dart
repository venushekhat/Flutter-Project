import 'package:firebase/homepage.dart';
import 'package:firebase/loginpage.dart';
import 'package:firebase/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  void initState() {
    sendVerifyLink();
    super.initState();
  }

  // sendverifylink() async {
  //   final user = FirebaseAuth.instance.currentUser!;
  //   await user.sendEmailVerification().then((value) => {
  //         Get.snackbar(
  //             'Link Sent',
  //             'A link has been sent on  your email',
  //             margin: EdgeInsets.all(30),
  //             snackPosition:)
  //       });
  // }

  sendVerifyLink() async {
    final user = FirebaseAuth.instance.currentUser!;
    await user.sendEmailVerification().then((value) => {
          Get.snackbar(
            'Link Sent',
            'A link has been sent to your email',
            margin: EdgeInsets.all(30),
            snackPosition: SnackPosition.BOTTOM, // or SnackPosition.TOP
          ),
        });
  }

  reload() async {
    await FirebaseAuth.instance.currentUser!
        .reload()
        .then((value) => {Get.offAll(Homepage())});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("varification"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Center(
          child: Text(
              "Open your mail and clickon the link provide to verify email & reload this page "),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => reload()),
        child: Icon(Icons.restart_alt_rounded),
      ),
    );
  }
}
