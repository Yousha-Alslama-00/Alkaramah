import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class CustomContainerYoutube extends StatelessWidget {
  final String? text;
  final String networkImage;
  const CustomContainerYoutube({
    super.key,
    this.text,
    required this.networkImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(1.158),
      decoration: BoxDecoration(
        color: AppColors.blueColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          start: screenWidth(41.1428),
          end: screenWidth(41.1428),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(
                end: screenWidth(41.1428),
              ),
              width: screenWidth(2.742),
              height: screenWidth(3.74),
              decoration: BoxDecoration(
                color: AppColors.maingreyColor,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(networkImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: screenWidth(2.42),
              height: screenWidth(4.1142),
              child: CustomText(
                text: text ?? '',
                styleType: TextStyleType.SUBTITLE,
                textColor: AppColors.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
