import 'package:devnology/providers/cart_provider.dart';
import 'package:devnology/providers/pages_provider.dart';
import 'package:devnology/providers/products_provider.dart';
import 'package:devnology/screens/cart/cart.dart';
import 'package:devnology/screens/home/home.dart';
import 'package:devnology/screens/order_created/order_created.dart';
import 'package:devnology/screens/product_details/product_details.dart';
import 'package:devnology/screens/splash/splash.dart';
import 'package:devnology/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PagesProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Devnology',
        theme: ThemeData(
          primarySwatch: AppMaterialColor.materialColor,
        ),
        home: const Splash(),
        routes: {
          Home.route: (context) => const Home(),
          ProductDetails.route: (context) => const ProductDetails(),
          Cart.route: (context) => const Cart(),
          OrderCreated.route: (context) => const OrderCreated(),
        },
      ),
    );
  }
}
