import 'package:flutter/material.dart';

class IconButtonAppBar extends IconButton {
  IconButtonAppBar({
    Key? key,
    required VoidCallback onTap,
    required String image,
  }) : super(
          key: key,
          onPressed: onTap,
          icon: SizedBox(
            width: 30,
            child: Image.asset(
              image,
            ),
          ),
        );
}
