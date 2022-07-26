import 'package:devnology/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../screens/product_details/product_details.dart';

class ProductItem extends StatelessWidget {
  final double value;
  final String subtitle;
  final String image;
  final Size size;
  final String id;

  const ProductItem({
    Key? key,
    required this.value,
    required this.subtitle,
    required this.image,
    required this.size,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        ProductDetails.route,
        arguments: id,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: Container(
          width: size.width * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.09,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  subtitle,
                  textAlign: TextAlign.start,
                  style: AppTextStyles.subtitleProductItem,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '\$ $value',
                  textAlign: TextAlign.start,
                  style: AppTextStyles.valueProductItem,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
