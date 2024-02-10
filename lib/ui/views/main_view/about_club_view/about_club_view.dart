import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_border.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_player.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class AboutClubView extends StatelessWidget {
  const AboutClubView({super.key});

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
            Container(
              height: screenWidth(2.5714),
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.only(
                      top: screenWidth(9.1428),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/pngs/background_rectangle.png',
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: screenWidth(2.5),
                        height: screenWidth(2),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/pngs/ahed-khuzam.png',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          top: screenWidth(10.28),
                        ),
                        child: CustomText(
                          text: 'رئيس نادي الكرامة : \nالدكتور عهد خزام',
                          styleType: TextStyleType.SUBTITLE,
                          textColor: AppColors.whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth(70),
                vertical: screenWidth(21.14),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'ملابس فريق نادي الكرامة لعام 2023-2024',
                    styleType: TextStyleType.TITLE,
                  ),
                  CustomBorder(
                    containerWidth1: 1.8,
                    containerWidth2: 8,
                    containerWidth3: 6,
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth(2.057),
              height: screenWidth(2.057),
              decoration: BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/pngs/shirt.png',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth(70),
                vertical: screenWidth(41.14),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'الاداريين',
                    styleType: TextStyleType.TITLE,
                  ),
                  CustomBorder(
                    containerWidth1: 12,
                    containerWidth2: 30,
                    containerWidth3: 20,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(
                top: screenWidth(41.1428),
              ),
              height: screenHeight(2.5),
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: screenWidth(41.1428),
                  end: screenWidth(41.1428),
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemExtent: 180,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomAdminsPlayers(
                      adminsPlayers: true,
                      image: 'https://picsum.photos/200/300',
                      name: 'Yousha',
                      job: 'مدير عام',
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth(70),
                vertical: screenWidth(41.14),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'مدربو الفريق',
                    styleType: TextStyleType.TITLE,
                  ),
                  CustomBorder(
                    containerWidth1: 8,
                    containerWidth2: 20,
                    containerWidth3: 16,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(
                top: screenWidth(41.1428),
              ),
              height: screenHeight(2.5),
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: screenWidth(41.1428),
                  end: screenWidth(41.1428),
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemExtent: 180,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomAdminsPlayers(
                      adminsPlayers: true,
                      image: 'https://picsum.photos/200/300',
                      name: 'Yousha',
                      job: 'موظف بالاجبار',
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth(70),
                vertical: screenWidth(41.14),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'حراس المرمى',
                    styleType: TextStyleType.TITLE,
                  ),
                  CustomBorder(
                    containerWidth1: 6.8,
                    containerWidth2: 20,
                    containerWidth3: 16,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(
                top: screenWidth(41.1428),
              ),
              height: screenHeight(2.5),
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: screenWidth(41.1428),
                  end: screenWidth(41.1428),
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemExtent: 180,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomAdminsPlayers(
                      adminsPlayers: false,
                      color: AppColors.mainyellowColor,
                      image: 'https://picsum.photos/200/300',
                      name: 'ابو مفلح عازار',
                      age: '10',
                      length: '180',
                      nyumber: '15',
                      playerPosition: 'CM',
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth(70),
                vertical: screenWidth(41.14),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'المدافعون',
                    styleType: TextStyleType.TITLE,
                  ),
                  CustomBorder(
                    containerWidth1: 10,
                    containerWidth2: 28,
                    containerWidth3: 20,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(
                top: screenWidth(41.1428),
              ),
              height: screenHeight(2.5),
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: screenWidth(41.1428),
                  end: screenWidth(41.1428),
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemExtent: 180,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomAdminsPlayers(
                      adminsPlayers: false,
                      image: 'https://picsum.photos/200/300',
                      name: 'ابو مفلح عازار',
                      age: '10',
                      length: '180',
                      nyumber: '15',
                      playerPosition: 'CM',
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth(70),
                vertical: screenWidth(41.14),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'خط الوسط',
                    styleType: TextStyleType.TITLE,
                  ),
                  CustomBorder(
                    containerWidth1: 8,
                    containerWidth2: 20,
                    containerWidth3: 16,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(
                top: screenWidth(41.1428),
              ),
              height: screenHeight(2.5),
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: screenWidth(41.1428),
                  end: screenWidth(41.1428),
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemExtent: 180,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomAdminsPlayers(
                      adminsPlayers: false,
                      image: 'https://picsum.photos/200/300',
                      name: 'ابو مفلح عازار',
                      age: '10',
                      length: '180',
                      nyumber: '15',
                      playerPosition: 'CM',
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth(70),
                vertical: screenWidth(41.14),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'المهاجمون',
                    styleType: TextStyleType.TITLE,
                  ),
                  CustomBorder(
                    containerWidth1: 9,
                    containerWidth2: 26,
                    containerWidth3: 20,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(
                top: screenWidth(41.1428),
              ),
              height: screenHeight(2.5),
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: screenWidth(41.1428),
                  end: screenWidth(41.1428),
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemExtent: 180,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomAdminsPlayers(
                      adminsPlayers: false,
                      image: 'https://picsum.photos/200/300',
                      name: 'ابو مفلح عازار',
                      age: '10',
                      length: '180',
                      nyumber: '15',
                      playerPosition: 'CM',
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: screenWidth(20.57),
            ),
          ],
        ),
      ),
    );
  }
}
