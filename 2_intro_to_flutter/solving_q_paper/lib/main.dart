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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int val1 = 5;
  int val2 = 10;
  int valRes = 0;
  void add() {
    setState(() {
      valRes = val1 + val2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 30,
        shadowColor: Colors.black,
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$val1", style: TextStyle(fontSize: 40)),
            Text("+", style: TextStyle(fontSize: 40)),
            Text("$val2", style: TextStyle(fontSize: 40)),
            Text("$valRes", style: TextStyle(fontSize: 40)),
            ElevatedButton(onPressed: add, child: Text("+")),
          ],
        ),
      ),
    );
  }
}
