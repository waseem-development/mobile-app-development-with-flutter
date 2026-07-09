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
      title: "Hello",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.dark,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: const Text(
              "Hello World",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              borderRadius: BorderRadius.circular(12),
              border: BoxBorder.all(color: Colors.white, width: 10),
            ),
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(onPressed: () {}, child: const Text("Click")),
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.blueGrey,
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [Text("One"), Text("Two"), Text("Three")],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment
                .center, // along the main axis (vertical for Column)
            crossAxisAlignment: CrossAxisAlignment
                .start, // along the cross axis (horizontal for Column)
            mainAxisSize: MainAxisSize.max, // take all available space vs min
            children: [Text("One"), Text("Two"), Text("Three")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Icon(Icons.star), Icon(Icons.star), Icon(Icons.star)],
          ),
        ],
      ),
    );
  }
}
