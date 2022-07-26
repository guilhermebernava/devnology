import 'package:devnology/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../themes/app_color.dart';
import 'dart:math' as math;

class RoundedButtonIcon extends StatelessWidget {
  const RoundedButtonIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'SEE MORE',
              style: AppTextStyles.roundedButtonIcon,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.yellow,
                  ),
                ),
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
