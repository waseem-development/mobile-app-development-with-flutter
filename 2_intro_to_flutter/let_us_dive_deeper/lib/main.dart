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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: Icon(Icons.notification_add, color: Colors.amber),
      ),

      // body: Center(
      //   child: Container(
      //     height: 100.0,
      //     width: 100.0,
      //     decoration: BoxDecoration(
      //       color: Colors.blueGrey,
      //       borderRadius: BorderRadius.circular(12.0),
      //       border: Border.all(color: Colors.black, width: 2.0),
      //     ),
      //     child: Center(child: Text("My Card")),
      //   ),
      // ),
      // body: SizedBox.expand(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       Center(
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Container(
      //               width: 200.0,
      //               height: 200.0,
      //               decoration: BoxDecoration(
      //                 shape: BoxShape.circle,
      //                 color: Colors.blueAccent,
      //                 border: Border.all(color: Colors.white, width: 2.0),
      //               ),
      //             ),
      //             Text("Hafiz Waseem Ahmed"),
      //             Text("Full-Stack Web Developer"),
      //           ],
      //         ),
      //       ), // body: SizedBox.expand(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       Center(
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Container(
      //               width: 200.0,
      //               height: 200.0,
      //               decoration: BoxDecoration(
      //                 shape: BoxShape.circle,
      //                 color: Colors.blueAccent,
      //                 border: Border.all(color: Colors.white, width: 2.0),
      //               ),
      //             ),
      //             Text("Hafiz Waseem Ahmed"),
      //             Text("Full-Stack Web Developer"),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         width: 200.0,
      //         height: 200.0,
      //         margin: EdgeInsets.all(10.0),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(30.0),
      //           color: Colors.blueAccent,
      //           border: Border.all(color: Colors.white, width: 2.0),
      //         ),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [Text("Score"), Text("100")],
      //         ),
      //       ),
      //       Container(
      //         width: 200.0,
      //         height: 200.0,
      //         margin: EdgeInsets.all(10.0),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(30.0),
      //           color: Colors.blueAccent,
      //           border: Border.all(color: Colors.white, width: 2.0),
      //         ),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [Text("Name"), Text("Waseem")],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // body: Column(
      //   // crossAxisAlignment: CrossAxisAlignment.start,
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [
      //     Container(
      //       // width: 50.0,
      //       height: 80.0,
      //       decoration: BoxDecoration(
      //         color: Colors.red,
      //         borderRadius: BorderRadius.circular(10.0),
      //         border: Border.all(color: Colors.white, width: 2.0),
      //       ),
      //       child: Text("Box 1"),
      //     ),
      //     Container(
      //       // width: 100.0,
      //       height: 80.0,
      //       decoration: BoxDecoration(
      //         color: Colors.green,
      //         borderRadius: BorderRadius.circular(10.0),
      //         border: Border.all(color: Colors.white, width: 2.0),
      //       ),
      //       child: Text("Box 2"),
      //     ),
      //     Container(
      //       // width: 150.0,
      //       height: 80.0,
      //       decoration: BoxDecoration(
      //         color: Colors.blue,
      //         borderRadius: BorderRadius.circular(10.0),
      //         border: Border.all(color: Colors.white, width: 2.0),
      //       ),
      //       child: Text("Box 3"),
      //     ),
      //   ],
      // ),
      // body: Center(
      //   child: Container(
      //     margin: const EdgeInsets.all(20.0),
      //     padding: const EdgeInsets.all(20.0),
      //     decoration: BoxDecoration(
      //       color: Colors.deepPurple,
      //       borderRadius: BorderRadius.circular(15.0),
      //     ),
      //     child: Column(
      //       children: [
      //         Text(
      //           "Title",
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 20.0,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         const SizedBox(height: 10.0),
      //         Row(
      //           children: [
      //             Container(
      //               padding: const EdgeInsets.symmetric(
      //                 horizontal: 12.0,
      //                 vertical: 6.0,
      //               ),
      //               margin: const EdgeInsets.only(right: 8.0),
      //               decoration: BoxDecoration(
      //                 color: Colors.orange,
      //                 borderRadius: BorderRadius.circular(8.0),
      //               ),
      //               child: Text("Flutter"),
      //             ),
      //             Container(
      //               padding: const EdgeInsets.symmetric(
      //                 horizontal: 12.0,
      //                 vertical: 6.0,
      //               ),
      //               decoration: BoxDecoration(
      //                 color: Colors.greenAccent,
      //                 borderRadius: BorderRadius.circular(8.0),
      //               ),
      //               child: Text(
      //                 "Dart",
      //                 style: TextStyle(color: Colors.black87),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // body: Image.network(
      //   "https://images.unsplash.com/photo-1589939705384-5185137a7f0f?",
      //   height: double.infinity,
      //   fit: BoxFit.cover,
      // ),
      // body: Image.asset(
      //   "assets/images/worker.jpg",
      //   height: double.infinity,
      //   width: double.infinity,
      //   fit: BoxFit.fitHeight,
      // ),
      // body: Container(
      //   width: 200,
      //   height: 200,
      //   child: Image.asset("assets/images/worker.jpg", fit: BoxFit.fill),
      // ),
      // body: Stack(
      //   children: [
      //     Image.asset(
      //       "assets/images/worker.jpg",
      //       height: 300,
      //       fit: BoxFit.cover,
      //     ),
      //     SizedBox(
      //       height: 300,
      //       child: Center(child: Text("Waseem\'s Flutter App")),
      //     ),
      //   ],
      // ),
      // body: Stack(
      //   children: [
      //     // 1st: Notification icon + badge
      //     Positioned(
      //       top: 50,
      //       left: 50,
      //       child: Stack(
      //         children: [
      //           Icon(Icons.notifications, size: 40),

      //           Positioned(
      //             right: 0,
      //             child: CircleAvatar(
      //               radius: 8,
      //               child: Text("3", style: TextStyle(fontSize: 10)),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),

      //     // 2nd: Profile + edit icon
      //     Positioned(
      //       bottom: 50,
      //       right: 50,
      //       child: Stack(
      //         children: [
      //           CircleAvatar(
      //             radius: 30,
      //             backgroundImage: AssetImage("assets/images/waseem.jpeg"),
      //             // child: Text("Waseem Ahmed"),
      //           ),

      //           Positioned(
      //             bottom: 0,
      //             right: 0,
      //             child: Icon(Icons.edit, size: 16),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),

      // --------- ListTile ---------
      // body: Stack(
      //   children: [
      //     SizedBox(
      //       height: 300,
      //       child: Center(child: Text("Waseem\'s Flutter App")),
      //     ),

      // ListTile(
      //   leading: Icon(Icons.join_full),
      //   tileColor: Colors.red,
      //   title: Text("Hello World"),
      //   trailing: Text("Bye World"),
      //   onTap: () => showDialog(
      //     context: context,
      //     builder: (_) => const AlertDialog(title: Text("Clicked")),
      //   ),
      // ),

      // ],
      // ),

      // --------- Wrap ---------
      body: Wrap(
        children: [
          Text(
            "fkd fksdf jalkfjkladj flkdasjflka jdkfj fkjafkjdkjdjfksdjfkjsdakfjsdalkf jaslkd fjlkdsjfkdjfkjfdj",
          ),
          Text("fjlkdsjfkdjfkjfdj"),
          Text("fkd fksdf jalkfjkladj flkdasjflka fjlkdsjfkdjfkjfdj"),
          Text("fkd fksdf jalkfjkladj flkdasjflka"),
        ],
      ),
    );
  }
}
