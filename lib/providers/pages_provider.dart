import 'package:devnology/screens/cart/cart.dart';
import 'package:flutter/material.dart';

import '../screens/home/children/body/home_body.dart';

class PagesProvider with ChangeNotifier {
  int _index = 0;

  int get index => _index;

  final _pages = [
    const HomeBody(),
    Container(),
    const Cart(),
    Container(),
    Container(),
  ];

  Widget get page => _pages[_index];

  void newIndex(int index) {
    if (index < 5 && index > -1) {
      _index = index;
    }
    notifyListeners();
  }
}
