import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../providers/products_provider.dart';
import '../../../../themes/app_color.dart';
import '../../../../themes/app_images.dart';
import '../../../../themes/app_text_styles.dart';
import '../../../../widgets/image_rounded.dart';
import '../../../../widgets/product_item.dart';
import '../category_buttons.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.grey, AppColors.lightGrey],
          begin: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Text(
                'Categories',
                textAlign: TextAlign.start,
                style: AppTextStyles.homeTitle,
              ),
            ),
            CategoryButtons(size: size),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              child: Text(
                'Latest',
                textAlign: TextAlign.start,
                style: AppTextStyles.homeTitle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: SizedBox(
                width: double.infinity,
                height: size.height * 0.25,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ImageRounded(image: AppImages.banner),
                    ImageRounded(image: AppImages.banner),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.2,
              child: Consumer<ProductsProvider>(
                builder: (context, value, child) => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) => ProductItem(
                    value: value.products[index].value,
                    subtitle: value.products[index].subtitle,
                    image: value.products[index].image,
                    size: size,
                    id: value.products[index].id,
                  ),
                  itemCount: value.products.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
