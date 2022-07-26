import 'package:devnology/providers/cart_provider.dart';
import 'package:devnology/screens/cart/children/bottom_cart.dart';
import 'package:devnology/screens/order_created/order_created.dart';
import 'package:devnology/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'children/cart_item.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  static const route = '/cart';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cart',
                style: AppTextStyles.homeTitle,
              ),
              Consumer<CartProvider>(
                builder: (context, value, child) => SizedBox(
                  width: double.infinity,
                  height: size.height * 0.58,
                  child: ListView.builder(
                    itemBuilder: (context, index) => CartItem(
                      model: value.products[index],
                      size: size,
                    ),
                    itemCount: value.products.length,
                  ),
                ),
              ),
            ],
          ),
        ),
        Consumer<CartProvider>(
          builder: (context, value, child) => BottomCart(
            size: size,
            value: value.totalValue.toStringAsFixed(2),
            checkout: () {
              value.createOrder();
              Navigator.pushNamed(context, OrderCreated.route);
            },
          ),
        ),
      ],
    );
  }
}
