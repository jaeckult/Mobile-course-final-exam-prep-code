class CartState {
  final List<String> items;

  CartState(this.items);

  int get totalItems => items.length;
}
