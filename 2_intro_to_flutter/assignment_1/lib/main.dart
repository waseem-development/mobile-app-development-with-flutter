import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
          brightness: Brightness.dark,
        ),
      ),

      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Assignment 1"),
            centerTitle: true,
            backgroundColor: const Color(0xFF8B4332),
          ),
          drawer: SafeArea(
            child: Drawer(
              child: Column(
                children: [
                  DrawerHeader(child: Text("My Drawer")),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Waseem Ahmed"),
                    subtitle: Text("Flutter Developer"),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("Button Clicked!");
            },
            child: Icon(Icons.add),
          ),
          bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
          body: Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 955,
                    height: 275,
                    child: Image.asset(
                      "assets/images/1.jpg",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  SizedBox(width: 10, height: 10),
                  SizedBox(
                    width: 955,
                    height: 275,
                    child: Image.asset(
                      "assets/images/2.jpg",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  SizedBox(width: 10, height: 10),
                  SizedBox(
                    width: 955,
                    height: 275,
                    child: Image.asset(
                      "assets/images/3.jpg",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 955,
                    height: 275,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Coffee",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            letterSpacing: 1.5,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Rich, freshly brewed espresso roast.",
                          style: TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10, height: 10),
                  Container(
                    width: 955,
                    height: 275,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Caribbean Pizza",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            letterSpacing: 1.5,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "A tropical mix of jerk chicken and pineapple.",
                          style: TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10, height: 10),
                  Container(
                    width: 955,
                    height: 275,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Italian Pizza",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            letterSpacing: 1.5,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Classic margherita with fresh basil and mozzarella.",
                          style: TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
