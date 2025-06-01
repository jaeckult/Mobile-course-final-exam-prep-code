import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/cart_bloc.dart';
import 'screens/catalog_screen.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => CartBloc(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      home: CatalogScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
