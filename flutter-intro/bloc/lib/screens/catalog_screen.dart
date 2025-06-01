import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/cart_bloc.dart';
import '../bloc/cart_event.dart';
import 'cart_screen.dart';

class CatalogScreen extends StatelessWidget {
  final products = List.generate(10, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => CartScreen()),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(products[index]),
          trailing: ElevatedButton(
            child: Text('Add'),
            onPressed: () {
              context.read<CartBloc>().add(AddItemEvent(products[index]));
            },
          ),
        ),
      ),
    );
  }
} 