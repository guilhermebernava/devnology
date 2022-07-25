import 'package:devnology/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../themes/app_color.dart';

class HomeGradientButton extends StatelessWidget {
  final Size size;
  final List<Color> colors;
  final String image;
  final String text;
  final VoidCallback onTap;

  const HomeGradientButton({
    Key? key,
    required this.size,
    required this.colors,
    required this.image,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: size.height * 0.08,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2,
                )
              ],
              gradient: AppColors.createGradient(colors),
            ),
            child: Padding(
              padding: EdgeInsets.all(size.height * 0.02),
              child: SizedBox(
                width: size.width * 0.1,
                child: Image.asset(
                  image,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: AppTextStyles.gradientButton,
          )
        ],
      ),
    );
  }
}
