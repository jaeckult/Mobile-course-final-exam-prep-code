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
      body: Scaffold(
        body: Container(
          color: Colors.blue,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 50,
                left: 50,
                child: Container(width: 100, height: 100, color: Colors.red),
              ),
              Positioned(
                top: 100,
                left: 100,
                child: Container(width: 100, height: 100, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
