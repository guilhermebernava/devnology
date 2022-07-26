import 'package:devnology/providers/pages_provider.dart';
import 'package:devnology/screens/home/children/app_bar_home.dart';
import 'package:devnology/screens/home/children/bottombar_home.dart/bottombar_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const route = "/home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pageProvider = Provider.of<PagesProvider>(context);

    return Scaffold(
      appBar: AppBarHome(
        size: size,
      ),
      body: pageProvider.page,
      bottomNavigationBar: BottombarHome(
        size: size,
      ),
    );
  }
}
