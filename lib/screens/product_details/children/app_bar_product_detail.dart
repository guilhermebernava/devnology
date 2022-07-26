import 'package:devnology/screens/product_details/product_detail_controller.dart';
import 'package:devnology/widgets/cart_button.dart';
import 'package:flutter/material.dart';
import '../../../themes/app_images.dart';

class AppBarProductDetail extends AppBar {
  AppBarProductDetail({
    Key? key,
    required Size size,
    required ProductDetailController controller,
  }) : super(
          key: key,
          title: SizedBox(
            width: size.width * 0.4,
            child: Image.asset(
              AppImages.logo,
              fit: BoxFit.cover,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: CartButton(
                onPressed: () => controller.backToCart(),
              ),
            )
          ],
        );
}
