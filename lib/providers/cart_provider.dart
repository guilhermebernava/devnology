import 'package:flutter/material.dart';
import '../models/cart_item.dart';

class CartProvider with ChangeNotifier {
  final List<CartItemModel> _products = [];

  List<CartItemModel> get products => [..._products];

  double get totalValue {
    double finalResult = 0;
    for (var element in _products) {
      finalResult += element.value * element.quantity;
    }
    return finalResult;
  }

  void addProduct(CartItemModel model) {
    final existProduct = _products.firstWhere(
      (element) => element.id == model.id,
      orElse: () => CartItemModel(
        id: 'empty',
        value: 0,
        quantity: 0,
        image: '',
        fullTitle: '',
      ),
    );

    if (existProduct.id != 'empty') {
      existProduct.quantity += 1;
      notifyListeners();
      return;
    }
    _products.add(model);
    notifyListeners();
  }

  int get cartItens {
    int finalResult = 0;
    for (var element in _products) {
      finalResult += element.quantity;
    }
    return finalResult;
  }

  int quantityById(String id) =>
      _products.firstWhere((element) => element.id == id).quantity;

  void removeItemQuantity(String id) {
    final item = _products.firstWhere((element) => element.id == id);
    if (item.quantity == 1) {
      _products.removeWhere((element) => element.id == item.id);
      notifyListeners();
      return;
    }
    item.quantity -= 1;
    notifyListeners();
  }

  void addItemQuantity(String id) {
    final item = _products.firstWhere((element) => element.id == id);
    item.quantity += 1;
    notifyListeners();
  }

  void createOrder() {
    _products.clear();
    notifyListeners();
  }
}
