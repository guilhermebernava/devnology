import 'package:devnology/screens/home/children/app_bar_home.dart';
import 'package:devnology/screens/home/children/category_buttons.dart';
import 'package:devnology/themes/app_color.dart';
import 'package:devnology/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const route = "/home";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBarHome(
        size: size,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Text(
                'Categories',
                textAlign: TextAlign.start,
                style: AppTextStyles.homeTitle,
              ),
            ),
            CategoryButtons(size: size),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              child: Text(
                'Latest',
                textAlign: TextAlign.start,
                style: AppTextStyles.homeTitle,
              ),
            ),
            Container(
              width: double.infinity,
              height: size.height * 0.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.blue),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('SEE MORE'),
                  const SizedBox(
                    width: 20,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.yellow,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_back_ios_new,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
