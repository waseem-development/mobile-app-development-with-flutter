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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const MyHomePage(title: 'Login Form'),
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
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String username = "";
  bool _obscure = true;

  String statusMessage = "Not Logged In";
  Color statusColor = Colors.red;

  void login() {
    setState(() {
      if (username.trim().isNotEmpty) {
        statusMessage = "Welcome, $username!";
        statusColor = Colors.green;
      } else {
        statusMessage = "Please enter a username.";
        statusColor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        backgroundColor: Colors.teal,
        title: const Center(child: Text("Login Form")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text("Username: "),
                  Expanded(
                    child: TextField(
                      controller: userNameController,
                      onChanged: (val) {
                        username = val;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Username",
                        hintText: "Enter your username",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text("Password: "),
                  Expanded(
                    // fixes layout crash
                    child: TextField(
                      controller: passwordController,
                      obscureText: _obscure, // actually hides the password now
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Password",
                        hintText: "Enter your password",
                        suffixIcon: IconButton(
                          // note: suffixIcon, not suffix
                          icon: Icon(
                            _obscure ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscure = !_obscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: login, child: const Text("Login")),
              const SizedBox(height: 20),
              Text(
                statusMessage,
                style: TextStyle(
                  color: statusColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
