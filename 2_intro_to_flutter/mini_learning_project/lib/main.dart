import 'package:flutter/material.dart';
import 'package:mini_learning_project/views/widget_tree.dart';
import "dart:io";

void main() {
  stdout.write("Hello World");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyFirstStateFullWidget(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyFirstStateFullWidget extends StatefulWidget {
  const MyFirstStateFullWidget({super.key, required this.title});
  final String title;
  @override
  State<MyFirstStateFullWidget> createState() => _MyiIrstStateFullWidgetState();
}

class _MyiIrstStateFullWidgetState extends State<MyFirstStateFullWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WidgetTree(
        currentIndex: currentIndex,
        onIndexChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
