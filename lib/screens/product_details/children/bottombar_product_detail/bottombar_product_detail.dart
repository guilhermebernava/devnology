import 'package:devnology/screens/product_details/children/bottombar_product_detail/children/product_detail_bottombar_button.dart';
import 'package:flutter/material.dart';
import '../../../../themes/app_color.dart';

class BottombarProductDetail extends StatelessWidget {
  final Size size;
  final VoidCallback addToCart;
  final VoidCallback share;

  const BottombarProductDetail({
    Key? key,
    required this.size,
    required this.addToCart,
    required this.share,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.1,
      width: double.infinity,
      color: AppColors.greyBottomBar,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProductDetailBottombarButton(
            text: 'SHARE THIS',
            icon: Icons.keyboard_arrow_up_outlined,
            onTap: share,
          ),
          ProductDetailBottombarButton(
            text: 'ADD TO CART',
            icon: Icons.keyboard_arrow_right_outlined,
            onTap: addToCart,
            isWhite: false,
          ),
        ],
      ),
    );
  }
}
