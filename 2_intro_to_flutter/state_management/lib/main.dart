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
          seedColor: Colors.redAccent,
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
  int count = 0;
  String enteredText = "";
  bool isOn = false; // Task 5

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  void doubleCount() {
    setState(() {
      count *= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          // added so content doesn't overflow on small screens
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Task 1
              Center(
                child: SizedBox(
                  width: 500,
                  child: TextField(
                    onChanged: (val) {
                      setState(() {
                        enteredText = val;
                      });
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Text",
                      hintText: "Enter any text",
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 500,
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 10),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(child: Text(enteredText)),
                ),
              ),

              // Task 2
              TextField(
                onSubmitted: (value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("You submitted: $value")),
                  );
                },
              ),

              // Task 4 — GestureDetector wraps the counter box
              GestureDetector(
                onTap: increment,
                onLongPress: reset,
                onDoubleTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Double tapped!")),
                  );
                },
                child: Container(
                  width: 500,
                  margin: const EdgeInsets.all(20),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 10),
                  ),
                  child: Center(
                    child: Text(
                      "Count: $count",
                      style: const TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: decrement,
                    child: const Text("Decrement"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: increment,
                    child: const Text("Increment"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(onPressed: reset, child: const Text("Reset")),
                  const SizedBox(width: 10),
                  // Task 3
                  ElevatedButton(
                    onPressed: doubleCount,
                    child: const Text("Double"),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Task 5 — Switch toggling ON/OFF
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isOn ? "ON" : "OFF",
                    style: TextStyle(
                      color: isOn ? Colors.green : Colors.red,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Switch(
                    value: isOn,
                    onChanged: (val) {
                      setState(() {
                        isOn = val;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
