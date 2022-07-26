import 'package:devnology/providers/products_provider.dart';
import 'package:devnology/screens/product_details/children/bottombar_product_detail/bottombar_product_detail.dart';
import 'package:devnology/screens/product_details/children/carousel/carousel.dart';
import 'package:devnology/screens/product_details/product_detail_controller.dart';
import 'package:devnology/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'children/app_bar_product_detail.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  static const route = '/product-details';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final id = ModalRoute.of(context)?.settings.arguments as String;
    final model = Provider.of<ProductsProvider>(context).productById(id);
    final controller = ProductDetailController(context);

    return Scaffold(
      appBar: AppBarProductDetail(
        size: size,
        controller: controller,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 15,
        ),
        child: Consumer<ProductsProvider>(
          builder: (context, provider, child) => ListView(
            children: [
              Text(
                model.fullTitle,
                style: AppTextStyles.detailTitle,
              ),
              Carousel(
                size: size,
                images: [
                  model.image,
                  model.image,
                  model.image,
                ],
              ),
              Text(
                'Price:',
                style: AppTextStyles.detailTitle,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  '\$ ${model.value}',
                  style: AppTextStyles.detailValue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'About this item:',
                  style: AppTextStyles.detailTitle,
                ),
              ),
              Text(
                model.about,
                style: AppTextStyles.detailText,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottombarProductDetail(
        size: size,
        addToCart: () => controller.addToCart(model),
        share: () {},
      ),
    );
  }
}
