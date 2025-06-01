import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';
import 'cart_screen.dart';

class CatalogScreen extends StatelessWidget {
  final products = List.generate(10, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        actions: [
          Consumer<CartModel>(
            builder: (context, cart, child) => IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CartScreen()),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(products[index]),
          trailing: Consumer<CartModel>(
            builder: (context, cart, child) => ElevatedButton(
              child: Text('Add'),
              onPressed: () {
                cart.add(products[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
