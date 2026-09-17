import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),

      home: Builder(
        builder: (context) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(title: const Text("Flutter App")),
              drawer: Drawer(
                child: Column(
                  children: [
                    DrawerHeader(child: Text("Drawer")),
                    ListTile(title: Text("Logout")),
                  ],
                ),
              ),
              body: Center(
                child: Text(
                  "Selected Index: $selectedIndex",
                  style: const TextStyle(fontSize: 25),
                ),
              ),

              floatingActionButton: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FloatingActionButton(
                    child: const Icon(Icons.add),
                    onPressed: () {
                      stdout.writeln("Hello Bro");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Button Clicked"),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20.0),
                  FloatingActionButton(
                    child: const Icon(Icons.add),
                    onPressed: () {
                      stdout.writeln("Hello Bro");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Button Clicked"),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
