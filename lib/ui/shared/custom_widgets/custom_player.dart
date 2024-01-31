import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class CustomAdminsPlayers extends StatelessWidget {
  final bool? adminsPlayers;
  final Color? color;
  final String? name;
  final String? job;
  final String? image;
  final String? age;
  final String? length;
  final String? nyumber;
  final String? playerPosition;

  const CustomAdminsPlayers({
    super.key,
    this.adminsPlayers,
    this.color,
    this.name,
    this.image,
    this.age,
    this.length,
    this.nyumber,
    this.playerPosition,
    this.job,
  });

  @override
  Widget build(BuildContext context) {
    return adminsPlayers == true
        ? Container(
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(
                    top: screenWidth(3.74),
                    start: screenWidth(82.28),
                    end: screenWidth(82.28),
                  ),
                  height: screenWidth(3.42),
                  decoration: BoxDecoration(
                    color: AppColors.greyColor2,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.greyColor,
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: screenWidth(2.74),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('$image'),
                        ),
                      ),
                    ),
                    CustomText(
                      text: name ?? '',
                      styleType: TextStyleType.TITLE,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth(10.28),
                          height: screenWidth(10.28),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              scale: 0.5,
                              image: AssetImage(
                                'assets/images/pngs/logo_3.png',
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.greyColor,
                                spreadRadius: -4,
                                blurRadius: 10,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.person_outline,
                            color: Colors.black,
                            size: screenWidth(14.69),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth(27.42),
                        ),
                        CustomText(
                          text: job ?? '',
                          styleType: TextStyleType.SUBTITLE,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        : Container(
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(
                    top: screenWidth(3.74),
                    start: screenWidth(82.28),
                    end: screenWidth(82.28),
                  ),
                  height: screenWidth(3.42),
                  decoration: BoxDecoration(
                    color: color ?? AppColors.blueColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.greyColor,
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: screenWidth(2.74),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('$image'),
                        ),
                      ),
                    ),
                    CustomText(
                      text: name ?? '',
                      styleType: TextStyleType.TITLE,
                      textColor: AppColors.whiteColor,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth(9.79),
                          height: screenWidth(9.79),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              scale: 0.5,
                              image: AssetImage(
                                'assets/images/pngs/logo_3.png',
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.greyColor,
                                spreadRadius: -4,
                                blurRadius: 10,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Stack(
                              children: [
                                CustomText(
                                  text: age ?? '',
                                  styleType: TextStyleType.CUSTOM,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    top: screenWidth(41.14),
                                  ),
                                  child: CustomText(
                                    text: 'عام',
                                    styleType: TextStyleType.CUSTOM,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth(9.79),
                          height: screenWidth(9.79),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              scale: 0.5,
                              image: AssetImage(
                                'assets/images/pngs/logo_3.png',
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.greyColor,
                                spreadRadius: -4,
                                blurRadius: 10,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Stack(
                              children: [
                                CustomText(
                                  text: length ?? '',
                                  styleType: TextStyleType.CUSTOM,
                                  fontSize: screenWidth(34.28),
                                  fontWeight: FontWeight.bold,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    top: screenWidth(25.71),
                                  ),
                                  child: CustomText(
                                    text: 'CM',
                                    styleType: TextStyleType.CUSTOM,
                                    fontSize: screenWidth(34.28),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth(9.79),
                          height: screenWidth(9.79),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              scale: 0.5,
                              image: AssetImage(
                                'assets/images/pngs/logo_3.png',
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.greyColor,
                                spreadRadius: -4,
                                blurRadius: 10,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: screenWidth(27.42),
                                  ),
                                  child: CustomText(
                                    text: 'الرقم',
                                    styleType: TextStyleType.CUSTOM,
                                    fontSize: screenWidth(34.28),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    top: screenWidth(22.85),
                                    start: screenWidth(82.28),
                                  ),
                                  child: CustomText(
                                    text: nyumber ?? '',
                                    styleType: TextStyleType.CUSTOM,
                                    fontSize: screenWidth(34.28),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth(9.79),
                          height: screenWidth(9.79),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              scale: 0.5,
                              image: AssetImage(
                                'assets/images/pngs/logo_3.png',
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.greyColor,
                                spreadRadius: -4,
                                blurRadius: 10,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: screenWidth(27.42),
                                  ),
                                  child: CustomText(
                                    text: 'المركز',
                                    styleType: TextStyleType.CUSTOM,
                                    fontSize: screenWidth(34.28),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    top: screenWidth(22.85),
                                    start: screenWidth(82.28),
                                  ),
                                  child: CustomText(
                                    text: playerPosition ?? '',
                                    styleType: TextStyleType.CUSTOM,
                                    fontSize: screenWidth(34.28),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
