import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My_App',
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text("Todo App")),
          elevation: 30,
          // shadowColor: Colors.amber,
        ),

        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Column(
        //       children: [
        //         Text("First text"),
        //         Text("Second text"),
        //         Text("Third text"),
        //       ],
        //     ),
        //     Column(
        //       children: [
        //         Text("Fourth text"),
        //         Text("Fifth text"),
        //         Text("Sixth text"),
        //       ],
        //     ),
        //   ],
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("HEllo World"), Text("Bye World")],
        ),
      ),
    );
  }
}
