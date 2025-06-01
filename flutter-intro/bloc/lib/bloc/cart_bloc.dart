import 'package:flutter_bloc/flutter_bloc.dart';
import 'cart_event.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState([])) {
    on<AddItemEvent>((event, emit) {
      final updatedList = List<String>.from(state.items)..add(event.item);
      emit(CartState(updatedList));
    });

    on<RemoveItemEvent>((event, emit) {
      final updatedList = List<String>.from(state.items)..remove(event.item);
      emit(CartState(updatedList));
    });

    on<ClearCartEvent>((event, emit) {
      emit(CartState([]));
    });
  }
}
