import 'package:flutter/material.dart';
import '../../../../../themes/app_color.dart';
import '../../../../../themes/app_text_styles.dart';

class ProductDetailBottombarButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final bool isWhite;

  const ProductDetailBottombarButton({
    Key? key,
    required this.text,
    required this.icon,
    this.isWhite = true,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isWhite ? Colors.white : AppColors.darkGrey,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                textAlign: TextAlign.center,
                style: isWhite
                    ? AppTextStyles.productDetailBottomBarButton
                    : AppTextStyles.productDetailBottomBarButtonWhite,
              ),
              Icon(
                icon,
                color: isWhite ? AppColors.darkGrey : Colors.white,
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
