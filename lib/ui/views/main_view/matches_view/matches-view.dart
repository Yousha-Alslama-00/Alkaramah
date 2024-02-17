import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_matches.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:alkaramah/ui/views/main_view/matches_view/home_page/page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MatchesView extends StatefulWidget {
  const MatchesView({super.key});

  @override
  State<MatchesView> createState() => _MatchesViewState();
}

class _MatchesViewState extends State<MatchesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: screenWidth(20.57),
            bottom: screenWidth(10.28),
          ),
          child: Column(
            children: [
              Center(
                child: CustomMatches(
                  live: true,
                  nameClubFirst: 'الكرامة',
                  nameClubSecond: 'wasbe',
                  matchDate: 'sdlsl',
                  networkImageFirst:
                      'https://th.bing.com/th/id/OIP.avb9nDfw3kq7NOoP0grM4wHaEK?rs=1&pid=ImgDetMain',
                  networkImageSecond:
                      'https://th.bing.com/th/id/OIP.avb9nDfw3kq7NOoP0grM4wHaEK?rs=1&pid=ImgDetMain',
                  nameStadium: 'البلدي',
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  top: screenWidth(28.14),
                ),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      HomePage(),
                    );
                  },
                  child: Container(
                    width: screenWidth(2.74),
                    height: screenWidth(8.22),
                    decoration: BoxDecoration(
                      color: AppColors.blueColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: CustomText(
                        text: 'تفاصيل المباراة',
                        textColor: AppColors.orangeColor,
                        styleType: TextStyleType.SUBTITLE,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                  vertical: screenWidth(20.57),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenWidth(3.2),
                      height: screenWidth(205.71),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                    CustomText(
                      text: 'المباريات القادمة',
                      styleType: TextStyleType.SUBTITLE,
                    ),
                    Container(
                      width: screenWidth(3.2),
                      height: screenWidth(205.71),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: screenWidth(41.14),
                      start: screenWidth(20.57),
                      end: screenWidth(20.57),
                    ),
                    child: CustomMatches(
                      nameClubFirst: 'الكرامة',
                      nameClubSecond: 'wasbe',
                      networkImageFirst:
                          'https://th.bing.com/th/id/OIP.avb9nDfw3kq7NOoP0grM4wHaEK?rs=1&pid=ImgDetMain',
                      networkImageSecond:
                          'https://th.bing.com/th/id/OIP.avb9nDfw3kq7NOoP0grM4wHaEK?rs=1&pid=ImgDetMain',
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
