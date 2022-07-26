import 'package:flutter/material.dart';
import '../themes/app_color.dart';
import '../themes/app_text_styles.dart';

class ButtonBarButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool selected;
  final String text;
  final IconData icon;

  const ButtonBarButton({
    Key? key,
    required this.onTap,
    required this.selected,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: selected ? AppColors.yellow : Colors.white,
          ),
          Text(
            text,
            style: AppTextStyles.bottomBarButton,
          ),
        ],
      ),
    );
  }
}
