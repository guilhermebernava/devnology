import 'package:devnology/providers/pages_provider.dart';
import 'package:devnology/widgets/cart_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../themes/app_color.dart';
import '../../../../widgets/bottom_bar_button.dart';

class BottombarHome extends StatefulWidget {
  final Size size;
  const BottombarHome({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  State<BottombarHome> createState() => _BottombarHomeState();
}

class _BottombarHomeState extends State<BottombarHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * 0.1,
      width: double.infinity,
      color: AppColors.darkGrey,
      child: Consumer<PagesProvider>(
        builder: (context, provider, child) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonBarButton(
              onTap: () => provider.newIndex(0),
              selected: provider.index == 0,
              icon: Icons.home_outlined,
              text: 'Home',
            ),
            ButtonBarButton(
              onTap: () => provider.newIndex(1),
              selected: provider.index == 1,
              icon: Icons.search,
              text: 'Search',
            ),
            CartButton(
              onPressed: () => provider.newIndex(2),
              text: true,
            ),
            ButtonBarButton(
              onTap: () => provider.newIndex(3),
              selected: provider.index == 3,
              icon: Icons.account_circle_outlined,
              text: 'Profile',
            ),
            ButtonBarButton(
              onTap: () => provider.newIndex(4),
              selected: provider.index == 4,
              icon: Icons.menu,
              text: 'More',
            ),
          ],
        ),
      ),
    );
  }
}
