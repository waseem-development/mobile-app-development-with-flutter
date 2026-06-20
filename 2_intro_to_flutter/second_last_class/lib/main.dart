import 'package:flutter/material.dart';
import "dart:io";

void main() {
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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
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
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
                stdout.write("Hello");
              },
              child: Icon(Icons.add),
            ),
            Text("count: $count"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count--;
                });
                stdout.write("Second Button");
              },
              child: Icon(Icons.exposure_minus_1),
            ),
            Text("count: $count"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (count == 0) {
                    count = count + 2;
                  } else {
                    count = count * 2;
                  }
                });
                stdout.write("Done");
              },
              child: Icon(Icons.multiple_stop),
            ),
            Text("All count: $count"),
          ],
        ),
      ),
    );
  }
}
