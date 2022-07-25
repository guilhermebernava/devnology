import 'package:devnology/themes/app_images.dart';
import 'package:devnology/widgets/icon_button_app_bar.dart';
import 'package:flutter/material.dart';

class AppBarHome extends AppBar {
  AppBarHome({Key? key, required Size size})
      : super(
          key: key,
          title: SizedBox(
            width: size.width * 0.4,
            child: Image.asset(
              AppImages.logo,
              fit: BoxFit.cover,
            ),
          ),
          actions: [
            IconButtonAppBar(
              onTap: () {},
              image: AppImages.bell,
            ),
            IconButtonAppBar(
              onTap: () {},
              image: AppImages.message,
            )
          ],
        );
}
