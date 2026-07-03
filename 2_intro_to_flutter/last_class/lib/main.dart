import 'package:flutter/material.dart';

final TextEditingController _nameController = TextEditingController();
String name = "";
String email = "";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Last Class',
      // darkTheme: Darktheme,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
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
  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 400,
              child: Center(
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      name = val;
                      debugPrint(
                        name,
                      ); // shows in the debug console reliably, works everywhere
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // fillColor: Color(Colors.grey),
                    // label: Also accepts 'Text' widget
                    labelText:
                        "Name", // It is a string but this also accepts a widget
                    hintText:
                        "Enter your name", // It is a string but this also accepts a widget

                    filled: true,
                    fillColor: Colors.redAccent,
                    // obscureText and obscure onemore thing
                  ),
                  // obscureText: ,
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 400,
              child: Column(
                children: [
                  TextField(
                    controller: _nameController,
                    onChanged: (val) {
                      setState(() {
                        email = val;
                        debugPrint(email);
                      });
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: "Enter your email",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      debugPrint(_nameController.text);
                    },
                    child: const Text("Print Email"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
