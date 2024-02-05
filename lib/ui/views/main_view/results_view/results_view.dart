import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class ResultsView extends StatelessWidget {
  const ResultsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.only(
          start: screenWidth(20.5714),
          end: screenWidth(20.5714),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.greyColor2,
              ),
              child: Row(
                children: [],
              ),
            ),
            Container(
              width: screenWidth(1),
              height: 220,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
              ),
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(
                      'assets/images/pngs/bg.png',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          top: 50,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    '',
                                  ),
                                ),
                              ),
                            ),
                            CustomText(
                              text: 'الكرامة',
                              styleType: TextStyleType.CUSTOM,
                              textColor: AppColors.whiteColor,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              CustomText(
                                text: 'الجمعة  22/12/2022',
                                styleType: TextStyleType.CUSTOM,
                                textColor: AppColors.whiteColor,
                                fontSize: 20,
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  top: 30,
                                  start: 55,
                                ),
                                child: CustomText(
                                  text: '12:12 عصرا',
                                  styleType: TextStyleType.CUSTOM,
                                  textColor: AppColors.whiteColor,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          CustomText(
                            text: 'ملعب خالد ابن الوليد',
                            styleType: TextStyleType.TITLE,
                            fontWeight: FontWeight.normal,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: '0' '  :  ',
                                styleType: TextStyleType.CUSTOM,
                                fontWeight: FontWeight.bold,
                                textColor: AppColors.maingreenColor,
                                fontSize: 45,
                              ),
                              CustomText(
                                text: '1',
                                styleType: TextStyleType.CUSTOM,
                                fontWeight: FontWeight.bold,
                                textColor: AppColors.maingreenColor,
                                fontSize: 45,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          top: 50,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    '',
                                  ),
                                ),
                              ),
                            ),
                            CustomText(
                              text: 'الكرامة',
                              styleType: TextStyleType.CUSTOM,
                              textColor: AppColors.whiteColor,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
