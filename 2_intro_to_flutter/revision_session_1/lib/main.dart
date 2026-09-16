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

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App"),
          centerTitle: false,
          leading: const Icon(Icons.login),

          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Text("This is below the AppBar"),
          ),

          actions: const [
            Text("Waseem Flutter App"),
            Icon(Icons.logout),
            Text("Bye Bye!"),
          ],

          backgroundColor: Colors.teal,
        ),

        body: Center(
          child: Text(
            "Selected Index: $selectedIndex",
            style: const TextStyle(fontSize: 25),
          ),
        ),

        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "About"),
            NavigationDestination(icon: Icon(Icons.mail), label: "Contact"),
          ],

          selectedIndex: selectedIndex,

          onDestinationSelected: (int val) {
            stdout.writeln("Value: $val");

            setState(() {
              selectedIndex = val;
            });
          },
        ),
      ),
    );
  }
}
