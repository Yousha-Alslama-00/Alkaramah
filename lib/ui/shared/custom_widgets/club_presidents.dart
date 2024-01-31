import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class ClubPresidents extends StatelessWidget {
  final String textName;
  final String networkImage;
  const ClubPresidents({
    super.key,
    required this.textName,
    required this.networkImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenWidth(1.645),
      width: screenWidth(1.714),
      child: Stack(
        children: [
          Center(
            child: Container(
              width: screenWidth(2.742),
              height: screenWidth(1.714),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.elliptical(
                    screenWidth(1.87),
                    screenWidth(2.748),
                  ),
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
            padding: EdgeInsetsDirectional.only(top: screenWidth(2.748)),
            child: Container(
              height: screenWidth(4.114),
              child: Stack(
                children: [
                  Image(
                    width: screenWidth(1.469),
                    image: AssetImage(
                      'assets/images/pngs/logo_1.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      bottom: screenWidth(9.5),
                      start: screenWidth(7.48),
                    ),
                    child: Container(
                      width: screenWidth(3.164),
                      child: Center(
                        child: CustomText(
                          text: textName,
                          styleType: TextStyleType.BODY,
                          textColor: AppColors.blackColor,
                        ),
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
