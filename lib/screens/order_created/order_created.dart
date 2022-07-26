import 'package:devnology/screens/home/home.dart';
import 'package:devnology/screens/order_created/children/app_bar_order_created.dart';
import 'package:devnology/themes/app_images.dart';
import 'package:devnology/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../product_details/children/bottombar_product_detail/children/product_detail_bottombar_button.dart';

class OrderCreated extends StatelessWidget {
  const OrderCreated({Key? key}) : super(key: key);

  static const route = '/order-created';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBarOrderCreated(
        size: size,
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.orderCompleted),
              Text(
                'Order Placed!',
                style: AppTextStyles.homeTitle,
              ),
              SizedBox(
                width: size.width * 0.7,
                child: Text(
                  'Your order was placed successfully. For more details, check All My Orders page under Profile tab',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.orderText,
                ),
              ),
              SizedBox(
                width: size.width * 0.4,
                child: ProductDetailBottombarButton(
                  text: 'ADD TO CART',
                  icon: Icons.keyboard_arrow_right_outlined,
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, Home.route),
                  isWhite: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
