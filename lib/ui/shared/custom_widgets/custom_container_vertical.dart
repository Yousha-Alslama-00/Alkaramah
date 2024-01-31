import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class CustomContainerVertical extends StatelessWidget {
  final String? textQuestion;
  final String? textObject;
  final String image;
  final bool? widthContainer;
  const CustomContainerVertical({
    super.key,
    this.textQuestion,
    this.textObject,
    required this.image,
    this.widthContainer = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: widthContainer == false
          ? Container(
              width: screenWidth(1.082),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenWidth(2.071),
                    child: Column(
                      children: [
                        CustomText(
                          text: textQuestion ?? '',
                          styleType: TextStyleType.TITLE,
                        ),
                        CustomText(
                          text: textObject ?? '',
                          styleType: TextStyleType.SUBTITLE,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenWidth(1.913),
                    width: screenWidth(2.571),
                    decoration: BoxDecoration(
                      color: AppColors.maingreyColor,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/pngs/$image.png',
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              // width: screenWidth(1.082),
              width: screenWidth(1.082),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenWidth(3.071),
                    child: Column(
                      children: [
                        CustomText(
                          text: textQuestion ?? '',
                          styleType: TextStyleType.TITLE,
                        ),
                        CustomText(
                          text: textObject ?? '',
                          styleType: TextStyleType.SUBTITLE,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenWidth(1.913),
                    width: screenWidth(1.71),
                    decoration: BoxDecoration(
                      color: AppColors.maingreyColor,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/pngs/$image.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
