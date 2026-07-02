import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Home Page",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrangeAccent,
          fontStyle: FontStyle.italic,
          letterSpacing: 2,
          wordSpacing: 4,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
