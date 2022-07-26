import 'package:devnology/themes/app_color.dart';
import 'package:devnology/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../product_details/children/bottombar_product_detail/children/product_detail_bottombar_button.dart';

class BottomCart extends StatelessWidget {
  final Size size;
  final String value;
  final VoidCallback checkout;

  const BottomCart({
    Key? key,
    required this.size,
    required this.value,
    required this.checkout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.12,
      color: AppColors.greyBottomBar,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Total \$ $value',
            style: AppTextStyles.bottomCart,
          ),
          ProductDetailBottombarButton(
            text: 'CHECKOUT',
            icon: Icons.keyboard_arrow_right_outlined,
            onTap: checkout,
            isWhite: false,
          ),
        ],
      ),
    );
  }
}
