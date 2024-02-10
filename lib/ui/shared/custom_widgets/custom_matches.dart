import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class CustomMatches extends StatelessWidget {
  final String? networkImageFirst;
  final String? networkImageSecond;
  final String? nameClubFirst;
  final String? nameClubSecond;
  final String? nameStadium;
  final String? matchDate;
  final String? matchresultFirst;
  final String? matchresultSecond;
  final bool? live;
  const CustomMatches({
    super.key,
    this.live = false,
    this.nameStadium,
    this.matchDate,
    this.networkImageFirst,
    this.networkImageSecond,
    this.nameClubFirst,
    this.nameClubSecond,
    this.matchresultFirst,
    this.matchresultSecond,
  });

  @override
  Widget build(BuildContext context) {
    return live == true
        ? Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: screenWidth(1.1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.all(
                  screenWidth(41.14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsetsDirectional.only(
                                end: screenWidth(41.14),
                              ),
                              width: screenWidth(5.14),
                              height: screenWidth(5.14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(networkImageFirst ?? ''),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            CustomText(
                              text: matchresultFirst ?? '0',
                              styleType: TextStyleType.CUSTOM,
                              fontSize: screenWidth(10.2),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                            end: screenWidth(13.71),
                            top: screenWidth(41.14),
                          ),
                          child: CustomText(text: nameClubFirst ?? ''),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomText(
                          text: nameStadium ?? '',
                        ),
                        SizedBox(
                          height: screenWidth(20.57),
                        ),
                        // Container(
                        //   margin: EdgeInsetsDirectional.only(
                        //     top: screenWidth(20.57),
                        //   ),
                        //   height: screenWidth(13.71),
                        //   width: screenWidth(8.22),
                        //   decoration: BoxDecoration(
                        //     color: AppColors.redColor,
                        //     borderRadius: BorderRadius.circular(20),
                        //   ),
                        //   child: Center(
                        //     child: CustomText(
                        //       text: 'LIVE',
                        //       textColor: AppColors.whiteColor,
                        //     ),
                        //   ),
                        // ),
                        CustomText(
                          text: matchDate ?? '',
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: matchresultSecond ?? '0',
                              styleType: TextStyleType.CUSTOM,
                              fontSize: screenWidth(10.2),
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.only(
                                start: screenWidth(41.14),
                              ),
                              width: screenWidth(5.14),
                              height: screenWidth(5.14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(networkImageSecond ?? ''),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: screenWidth(13.71),
                            top: screenWidth(41.14),
                          ),
                          child: CustomText(text: nameClubSecond ?? ''),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        : Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: screenWidth(1.1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.all(
                  screenWidth(41.14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsetsDirectional.only(
                            end: screenWidth(41.14),
                          ),
                          width: screenWidth(5.14),
                          height: screenWidth(5.14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(networkImageFirst ?? ''),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                            end: screenWidth(13.71),
                            top: screenWidth(41.14),
                          ),
                          child: CustomText(text: nameClubFirst ?? ''),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomText(
                          text: nameStadium ?? '',
                        ),
                        CustomText(
                          text: matchDate ?? '',
                          styleType: TextStyleType.TITLE,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsetsDirectional.only(
                                start: screenWidth(41.14),
                              ),
                              width: screenWidth(5.14),
                              height: screenWidth(5.14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(networkImageSecond ?? ''),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: screenWidth(13.71),
                            top: screenWidth(41.14),
                          ),
                          child: CustomText(text: nameClubSecond ?? ''),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
