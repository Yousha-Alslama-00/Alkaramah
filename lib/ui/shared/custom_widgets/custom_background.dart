import 'package:alkaramah/ui/shared/colors.dart';
import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.maingreyColor,
        image: DecorationImage(
          image: AssetImage("assets/images/pngs/rectangle.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
