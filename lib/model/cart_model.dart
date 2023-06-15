import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // lis of items on sale
  final List _shopItem = [
    // [ item name, item price, image path, color ]
    ["Avocado", "4.00", "lib/images/pisang.png", Colors.green],
    ["Banana", "1.00", "lib/images/pisang.png", Colors.yellow],
    ["Water melon", "12.00", "lib/images/semangka.png", Colors.brown],
    ["Manggo", "54.00", "lib/images/manggo.png", Colors.blue],
  ];

  // list of cart items
  List _cartItem = [];

  get shopItems => _shopItem;

  get cartItem => _cartItem;

  // add item to cart
  void addItemToCart(int index) {
    _cartItem.add(_shopItem[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItem.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    // ignore: unused_local_variable
    double totalprice = 0;
    for (int i = 0; i < cartItem.length; i++) {
      totalprice += double.parse(_cartItem[i][1]);
    }
    return totalprice.toStringAsFixed(2);
  }
}
