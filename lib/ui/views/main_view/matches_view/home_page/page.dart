import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/cuatom_player_substitutions.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_app_bar.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_matches.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_player.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:alkaramah/ui/views/main_view/matches_view/home_page/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController controller = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(
          title: 'تفاصيل المباراة',
        ),
        preferredSize: Size.fromHeight(75),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: screenWidth(20.5),
                bottom: screenWidth(20.5),
              ),
              child: Center(
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      controller.selectedButtonIndex = 0.obs;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: controller.selectedButtonIndex == 0
                              ? Colors.black
                              : Colors.transparent,
                          width: screenWidth(205.7),
                        ),
                      ),
                    ),
                    child: CustomText(
                      text: 'خطة الفريق',
                      styleType: TextStyleType.SUBTITLE,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      controller.selectedButtonIndex = 1.obs;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: controller.selectedButtonIndex == 1
                              ? Colors.black
                              : Colors.transparent,
                          width: screenWidth(205.7),
                        ),
                      ),
                    ),
                    child: CustomText(
                      text: 'التبديلات',
                      styleType: TextStyleType.SUBTITLE,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      controller.selectedButtonIndex = 2.obs;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: controller.selectedButtonIndex == 2
                              ? Colors.black
                              : Colors.transparent,
                          width: screenWidth(205.7),
                        ),
                      ),
                    ),
                    child: CustomText(
                      text: 'الاحتياط',
                      styleType: TextStyleType.SUBTITLE,
                    ),
                  ),
                ),
              ],
            ),
            if (controller.selectedButtonIndex == 0)
              Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemExtent: screenWidth(0.7),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/pngs/plan.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    );
                  },
                ),
              ),
            if (controller.selectedButtonIndex == 1)
              Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemExtent: screenWidth(1.5),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: 10,
                      ),
                      child: CuatomPlayerSubstitutions(
                        image: 'https://picsum.photos/200/300',
                        name: 'ابو مفلح عازار',
                        age: '10',
                        length: '180',
                        nyumber: '15',
                        playerPosition: 'CM',
                      ),
                    );
                  },
                ),
              ),
            if (controller.selectedButtonIndex == 2)
              Container(
                child: Column(
                  children: [
                    //! حراس
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        top: screenWidth(41.1428),
                      ),
                      height: screenHeight(2.3),
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: screenWidth(41.1428),
                          end: screenWidth(41.1428),
                        ),
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemExtent: screenWidth(2.28),
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
                    //! مدافعون
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        top: screenWidth(41.1428),
                      ),
                      height: screenHeight(2.3),
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: screenWidth(41.1428),
                          end: screenWidth(41.1428),
                        ),
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemExtent: screenWidth(2.28),
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
                    //! وسط
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        top: screenWidth(41.1428),
                      ),
                      height: screenHeight(2.3),
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: screenWidth(41.1428),
                          end: screenWidth(41.1428),
                        ),
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemExtent: screenWidth(2.28),
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
                    //! مهاجمون
                    Container(
                      margin: EdgeInsetsDirectional.only(
                        top: screenWidth(41.1428),
                      ),
                      height: screenHeight(2.3),
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: screenWidth(41.1428),
                          end: screenWidth(41.1428),
                        ),
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemExtent: screenWidth(2.28),
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
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
