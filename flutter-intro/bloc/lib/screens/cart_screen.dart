import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/cart_bloc.dart';
import '../bloc/cart_event.dart';
import '../bloc/cart_state.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
        actions: [
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return IconButton(
                icon: Icon(Icons.delete),
                onPressed: state.items.isEmpty
                    ? null
                    : () {
                        context.read<CartBloc>().add(ClearCartEvent());
                      },
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state.items.isEmpty) {
            return Center(
              child: Text('Your cart is empty'),
            );
          }
          return ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(state.items[index]),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: () {
                  context.read<CartBloc>().add(RemoveItemEvent(state.items[index]));
                },
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Total items: ${state.totalItems}',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
} 