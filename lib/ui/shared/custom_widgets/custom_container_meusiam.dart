import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class CustomContainerMeusiam extends StatelessWidget {
  final String? text;
  final String? nameImage;
  final bool? containerWidth;
  const CustomContainerMeusiam({
    super.key,
    this.text,
    this.nameImage,
    this.containerWidth,
  });

  @override
  Widget build(BuildContext context) {
    return containerWidth == true
        ? Container(
            height: screenWidth(2.057),
            width: screenWidth(1.175),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.maingreyColor,
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/pngs/$nameImage.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: screenWidth(2.8)),
                  height: screenWidth(6.857),
                  width: screenWidth(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(20),
                      bottomStart: Radius.circular(20),
                    ),
                    color: AppColors.blueColor,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: screenWidth(20.5714),
                      top: screenWidth(36.4285),
                    ),
                    child: CustomText(
                      text: text ?? '',
                      textColor: AppColors.whiteColor,
                      styleType: TextStyleType.SUBTITLE,
                    ),
                  ),
                ),
              ],
            ),
          )
        : Container(
            height: screenWidth(2.057),
            width: screenWidth(1.175),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.maingreyColor,
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/pngs/$nameImage.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: screenWidth(2.8)),
                  height: screenWidth(6.857),
                  width: screenWidth(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(20),
                      bottomStart: Radius.circular(20),
                    ),
                    color: AppColors.blueColor,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: screenWidth(82.285),
                      top: screenWidth(82.285),
                    ),
                    child: CustomText(
                      text: text ?? '',
                      textColor: AppColors.whiteColor,
                      styleType: TextStyleType.SMALL,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
