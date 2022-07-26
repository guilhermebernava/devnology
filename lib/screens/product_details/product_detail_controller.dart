import 'package:devnology/models/cart_item.dart';
import 'package:devnology/models/product_model.dart';
import 'package:devnology/providers/cart_provider.dart';
import 'package:devnology/providers/pages_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailController {
  late final CartProvider cartProvider;
  late final PagesProvider pagesProvider;
  final BuildContext context;

  ProductDetailController(this.context) {
    cartProvider = Provider.of<CartProvider>(context);
    pagesProvider = Provider.of<PagesProvider>(context);
  }

  void backToCart() {
    pagesProvider.newIndex(2);
    Navigator.pop(context);
  }

  void addToCart(ProductModel model) {
    cartProvider.addProduct(
      CartItemModel(
        id: model.id,
        value: model.value,
        quantity: 1,
        image: model.image,
        fullTitle: model.fullTitle,
      ),
    );

    backToCart();
  }
}
