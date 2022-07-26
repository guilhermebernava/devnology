import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final Size size;
  final List<String> images;

  const Carousel({
    Key? key,
    required this.size,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.35,
      child: Swiper(
        autoplayDelay: 100000,
        itemBuilder: (context, index) {
          final image = images[index];
          return Image.asset(
            image,
            fit: BoxFit.fill,
          );
        },
        indicatorLayout: PageIndicatorLayout.COLOR,
        autoplay: true,
        itemCount: images.length,
        pagination: const SwiperPagination(
          builder: SwiperPagination(
            alignment: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
