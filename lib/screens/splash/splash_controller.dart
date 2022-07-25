import 'package:devnology/screens/home/home.dart';
import 'package:flutter/material.dart';

class SplashController {
  void redirectTo(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
    ).then(
      (value) => Navigator.pushReplacementNamed(context, Home.route),
    );
  }
}
