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
    return Scaffold(appBar: AppBar(title: Text(title)), body: _buildGrid());
  }

  Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(10),
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    children: const <Widget>[
      Text('Item 1'),
      Text('Item 2'),
      Text('Item 3'),
      Text('Item 4'),
      Text('Item 5'),
      Text('Item 6'),
      Text('Item 7'),
      Text('Item 8'),
      Text('Item 9'),
      Text('Item 10'),
    ],
  );
}
