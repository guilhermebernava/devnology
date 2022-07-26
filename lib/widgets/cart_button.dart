import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart_provider.dart';
import '../themes/app_color.dart';
import '../themes/app_text_styles.dart';

class CartButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool selected;
  final bool text;

  const CartButton({
    Key? key,
    required this.onPressed,
    this.selected = false,
    this.text = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: const Alignment(2, -3),
              children: [
                Icon(
                  Icons.shopping_cart_rounded,
                  size: 30,
                  color: selected ? AppColors.yellow : Colors.white,
                ),
                Container(
                  width: 20,
                  decoration: const BoxDecoration(
                      color: AppColors.yellow, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Consumer<CartProvider>(
                      builder: (context, value, child) => Text(
                        value.cartItens < 10 ? value.cartItens.toString() : '9',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            text
                ? Text(
                    'Cart',
                    style: AppTextStyles.bottomBarButton,
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
