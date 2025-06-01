import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 76, 89, 175),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),

      // body: Center(
      //   child: Container(
      //     margin: const EdgeInsets.all(20.0),
      //     color: Colors.blueAccent,
      //     width: 100,
      //     height: 100,
      //   ),
      // ),

      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     const Text(
      //       'Hello, How are you?',
      //       textAlign: TextAlign.center,
      //       overflow: TextOverflow.ellipsis,
      //       style: TextStyle(fontWeight: FontWeight.bold),
      //     ),
      //     Icon(Icons.favorite, color: Colors.red, size: 50.0),
      //     Icon(Icons.audiotrack, color: Colors.blue, size: 30.0),
      //     Icon(Icons.beach_access, color: Colors.green, size: 30.0),
      //   ],
      // ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Hello, How are you?',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Icon(Icons.favorite, color: Colors.red, size: 50.0),
          Icon(Icons.audiotrack, color: Colors.blue, size: 30.0),
          Icon(Icons.beach_access, color: Colors.green, size: 30.0),
        ],
      ),
    );
  }
}
