import 'package:devnology/models/cart_item.dart';
import 'package:devnology/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../themes/app_text_styles.dart';

class CartItem extends StatelessWidget {
  final Size size;
  final CartItemModel model;

  const CartItem({
    Key? key,
    required this.size,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.15,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                model.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width * 0.7,
                child: Text(
                  model.fullTitle,
                  style: AppTextStyles.cartSubtitle,
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              Text(
                '\$ ${model.value}',
                style: AppTextStyles.cartValue,
              ),
              Consumer<CartProvider>(
                builder: (context, provider, child) => Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () => provider.removeItemQuantity(
                        model.id,
                      ),
                      icon: const Icon(
                        Icons.arrow_circle_left_rounded,
                        size: 30,
                      ),
                    ),
                    Text(
                      provider.quantityById(model.id).toString(),
                      style: AppTextStyles.cartValue,
                    ),
                    IconButton(
                      onPressed: () => provider.addItemQuantity(
                        model.id,
                      ),
                      icon: const Icon(
                        Icons.arrow_circle_right_rounded,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
