import 'package:devnology/models/product_model.dart';
import 'package:flutter/material.dart';
import '../themes/app_images.dart';

class ProductsProvider with ChangeNotifier {
  final List<ProductModel> _products = [
    ProductModel(
      value: 717.80,
      subtitle: 'Lenovo - IdeaPad L340 15 Gaming',
      image: AppImages.pc1,
      id: 'pc1',
      about: '''1.8 GHz Intel Core i7-10510U Quad-Core Processor
16GB of DDR4 RAM | 512GB SSD
15.6" 1920 x 1080 IPS Display
NVIDIA Quadro P520
Windows 10 Pro 64-Bit Edition
1.8 GHz Intel Core i7-10510U Quad-Core Processor
16GB of DDR4 RAM | 512GB SSD
15.6" 1920 x 1080 IPS Display
NVIDIA Quadro P520''',
      fullTitle:
          'Lenovo - IdeaPad L340 15 Gaming 1 Laptop, Intel Core i5-10210U Quad-Core, 8GB DDR4 RAM, 512GB SSD, NVIDIA Quadro P520, Windows 10 Pro (20T4001VUS)',
    ),
    ProductModel(
      value: 1519.00,
      subtitle: 'Lenovo 15.6" ThinkPad P15s Gen 1',
      image: AppImages.pc2,
      id: 'pc2',
      about: '''1.8 GHz Intel Core i7-10510U Quad-Core Processor
16GB of DDR4 RAM | 512GB SSD
15.6" 1920 x 1080 IPS Display
NVIDIA Quadro P520
Windows 10 Pro 64-Bit Edition
1.8 GHz Intel Core i7-10510U Quad-Core Processor
16GB of DDR4 RAM | 512GB SSD
15.6" 1920 x 1080 IPS Display
NVIDIA Quadro P520''',
      fullTitle:
          'Lenovo 15.6" ThinkPad P15s Gen 1 Laptop, Intel Core i7-10510U Quad-Core, 16GB DDR4 RAM, 512GB SSD, NVIDIA Quadro P520, Windows 10 Pro (20T4001VUS)',
    ),
    ProductModel(
      value: 4699,
      subtitle: 'Notebook Lenovo 2 em 1',
      image: AppImages.pc3,
      id: 'pc3',
      about: '''1.8 GHz Intel Core i7-10510U Quad-Core Processor
16GB of DDR4 RAM | 512GB SSD
15.6" 1920 x 1080 IPS Display
NVIDIA Quadro P520
Windows 10 Pro 64-Bit Edition
1.8 GHz Intel Core i7-10510U Quad-Core Processor
16GB of DDR4 RAM | 512GB SSD
15.6" 1920 x 1080 IPS Display
NVIDIA Quadro P520''',
      fullTitle:
          'Lenovo 15.6" ThinkPad P15s Gen 1 Laptop, Intel Core i7-10510U Quad-Core, 16GB DDR4 RAM, 512GB SSD, NVIDIA Quadro P520, Windows 10 Pro (20T4001VUS)',
    ),
  ];

  List<ProductModel> get products => [..._products];

  ProductModel productById(String id) =>
      _products.firstWhere((_) => _.id == id);
}
