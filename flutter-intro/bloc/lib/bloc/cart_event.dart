abstract class CartEvent {}

class AddItemEvent extends CartEvent {
  final String item;

  AddItemEvent(this.item);
}

class RemoveItemEvent extends CartEvent {
  final String item;

  RemoveItemEvent(this.item);
}

class ClearCartEvent extends CartEvent {}
