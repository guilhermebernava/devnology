import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  final Size size;
  final String image;
  const ImageCarousel({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.35,
      width: size.width * 0.8,
      child: Image.asset(
        image,
      ),
    );
  }
}
