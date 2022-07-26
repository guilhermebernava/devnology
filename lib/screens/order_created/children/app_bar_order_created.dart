import 'package:flutter/material.dart';
import '../../../themes/app_images.dart';

class AppBarOrderCreated extends AppBar {
  AppBarOrderCreated({Key? key, required Size size})
      : super(
          key: key,
          title: SizedBox(
            width: size.width * 0.4,
            child: Image.asset(
              AppImages.logo,
              fit: BoxFit.cover,
            ),
          ),
        );
}
