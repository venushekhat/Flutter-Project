import 'package:flutter/material.dart';

class Cavatar extends StatefulWidget {
  const Cavatar({super.key});

  @override
  State<Cavatar> createState() => _CavatarState();
}

class _CavatarState extends State<Cavatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://img.freepik.com/free-photo/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai_188544-9871.jpg"),
            maxRadius: 150,
          ),
        ),
      ),
    );
  }
}
