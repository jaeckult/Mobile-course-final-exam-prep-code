import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Cart')),
      body: Consumer<CartModel>(
        builder: (context, cart, child) => ListView.builder(
          itemCount: cart.items.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(cart.items[index]),
          ),
        ),
      ),
      bottomNavigationBar: Consumer<CartModel>(
        builder: (context, cart, child) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Total items: ${cart.totalItems}', style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
