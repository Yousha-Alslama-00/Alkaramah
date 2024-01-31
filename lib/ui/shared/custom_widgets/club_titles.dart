import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class ClubTitles extends StatelessWidget {
  final String textTitles;
  final String networkImage;

  const ClubTitles({
    super.key,
    required this.textTitles,
    required this.networkImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenWidth(1.645),
      width: screenWidth(2.057),
      child: Stack(
        children: [
          Center(
            child: Container(
              width: screenWidth(2.742),
              height: screenWidth(1.714),
              decoration: BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                border: Border.all(
                  width: screenWidth(205.714),
                  color: AppColors.goldColor,
                ),
                image: DecorationImage(
                  image: NetworkImage(networkImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: screenWidth(2.165),
            ),
            child: Container(
              height: screenWidth(4.114),
              child: Stack(
                children: [
                  Image(
                    width: screenWidth(1.469),
                    image: AssetImage(
                      'assets/images/pngs/logo_2.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: screenWidth(7.48),
                    child: Center(
                      child: CustomText(
                        text: textTitles,
                        styleType: TextStyleType.BODY,
                        textColor: AppColors.blackColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
