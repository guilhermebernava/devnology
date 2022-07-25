import 'package:devnology/screens/splash/splash_controller.dart';
import 'package:devnology/themes/app_color.dart';
import 'package:devnology/themes/app_images.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = SplashController();
    controller.redirectTo(context);

    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.darkGrey,
      child: Image.asset(AppImages.logo),
    );
  }
}
