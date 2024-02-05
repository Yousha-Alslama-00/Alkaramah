import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: Container(
          width: screenWidth(1),
          height: screenHeight(1),
          child: Padding(
            padding: EdgeInsetsDirectional.only(
                top: screenWidth(10),
                start: screenWidth(30),
                end: screenWidth(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: screenWidth(6),
                      child: Image.asset("assets/images/pngs/rectangle.png"),
                    ),
                    Text(
                      title,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: screenWidth(20),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.whiteColor,
                        size: screenWidth(15.75),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth(10),
                      height: screenWidth(10),
                      child: Stack(
                        children: [
                          Image.asset("assets/images/pngs/type_ball.png"),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                              bottom: screenWidth(82.28),
                            ),
                            child: Center(
                              child: Container(
                                width: screenWidth(13.71),
                                height: screenWidth(13.71),
                                decoration: BoxDecoration(
                                  color: AppColors.mainblueColor,
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://th.bing.com/th/id/R.1395d1b17397018e6916784c283a14f2?rik=bmfmSW7odc2D1A&pid=ImgRaw&r=0',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: AppColors.blueColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
        ),
        preferredSize: Size.fromHeight(75));
  }
}
