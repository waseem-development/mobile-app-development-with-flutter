import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// MyApp is the root widget of the entire application.
// It's a StatelessWidget because it doesn't need to manage any
// mutable state itself — it just describes the app's overall configuration.
class MyApp extends StatelessWidget {
  // Constructor for MyApp. The 'super.key' passes the optional key
  // up to the StatelessWidget parent class, which Flutter uses
  // internally to identify and manage widgets efficiently in the widget tree.
  const MyApp({super.key});

  // The build method describes how to display this widget in terms
  // of other, lower-level widgets. Flutter calls this method whenever
  // it needs to render this widget on screen.
  @override
  Widget build(BuildContext context) {
    // MaterialApp is the top-level widget that sets up Material Design,
    // navigation, theming, and other app-wide configuration.
    return MaterialApp(
      // Hides the "DEBUG" banner that normally appears in the top-right
      // corner during development.
      debugShowCheckedModeBanner: false,

      // Defines the overall visual theme of the app.
      theme: ThemeData(
        // Generates a full color scheme automatically based on a single
        // "seed" color, ensuring all UI elements look harmonious.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          // Forces the app into dark mode regardless of system settings.
          brightness: Brightness.dark,
        ),
      ),

      // The first screen shown when the app launches.
      // Scaffold() provides the basic Material Design visual structure
      // (app bar, body, floating action button, etc.), currently empty.
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Main Layout in Flutter"),
            centerTitle: false,
            // leading: Icon(Icons.login),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(4),
              child: LinearProgressIndicator(),
            ),
            actions: [Text("Action 1"), Icon(Icons.logout_outlined)],
            backgroundColor: Colors.teal,
          ),
          drawer: SafeArea(
            child: Drawer(
              child: Column(
                children: [
                  DrawerHeader(child: Text("Drawer")),
                  ListTile(title: Text("Logout")),
                ],
              ),
            ),
          ),
          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                onPressed: () {
                  print("Floating Action Button Clicked");
                },
                child: Icon(Icons.add),
              ),
              SizedBox(height: 10.0),
              FloatingActionButton(
                onPressed: () {
                  print("Floating Action Button Clicked");
                },
                child: Icon(Icons.add),
              ),
            ],
          ),

          bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
            ],
            onDestinationSelected: (int value) => {print(value)},
            selectedIndex: 1,
          ),
        ),
      ),
    );
  }
}
