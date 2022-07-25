import 'package:flutter/material.dart';
import '../../../themes/app_color.dart';
import '../../../themes/app_images.dart';
import '../../../widgets/home_gradient_button.dart';

class CategoryButtons extends Row {
  CategoryButtons({
    Key? key,
    required Size size,
  }) : super(
          key: key,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeGradientButton(
              text: 'Apparel',
              size: size,
              colors: const [AppColors.orange, AppColors.red],
              image: AppImages.apparel,
              onTap: () {},
            ),
            HomeGradientButton(
              text: 'Beauty',
              size: size,
              colors: const [AppColors.blue, AppColors.aquaBlue],
              image: AppImages.beauty,
              onTap: () {},
            ),
            HomeGradientButton(
              text: 'Shoes',
              size: size,
              colors: const [AppColors.green, AppColors.limaGreen],
              image: AppImages.shoes,
              onTap: () {},
            ),
            HomeGradientButton(
              text: 'See All',
              size: size,
              colors: const [Colors.white, Colors.white],
              image: AppImages.rightArrow,
              onTap: () {},
            ),
          ],
        );
}
