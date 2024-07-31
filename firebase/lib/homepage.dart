import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final user = FirebaseAuth.instance.currentUser;
  // User? user;

  // @override
  // void initState() {
  //   super.initState();
  //   initFireBase();
  // }

  // Future<void> initFireBase() async {
  //   await Firebase.initializeApp();
  //   user = FirebaseAuth.instance.currentUser;
  // }

  singout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
      ),
      body: Center(
        child: Text("${user!.email}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => singout()),
        child: Icon(Icons.login_rounded),
      ),
    );
  }
}
